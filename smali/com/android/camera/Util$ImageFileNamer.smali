.class public Lcom/android/camera/Util$ImageFileNamer;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageFileNamer"
.end annotation


# instance fields
.field public mFormat:Ljava/text/SimpleDateFormat;

.field public mFormatString:Ljava/lang/String;

.field public mLastDate:J

.field public mSameSecondCount:I

.field public mTimeZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/Util$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    .line 3
    iput-object p1, p0, Lcom/android/camera/Util$ImageFileNamer;->mFormatString:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Util$ImageFileNamer;->mTimeZoneId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateName(J)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/Util$ImageFileNamer;->mTimeZoneId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/camera/Util$ImageFileNamer;->mFormatString:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/Util$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    .line 4
    iput-object v0, p0, Lcom/android/camera/Util$ImageFileNamer;->mTimeZoneId:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeZone change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/Util$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 8
    div-long v3, p1, v1

    iget-wide v5, p0, Lcom/android/camera/Util$ImageFileNamer;->mLastDate:J

    div-long/2addr v5, v1

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 9
    iget p1, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_1
    iput-wide p1, p0, Lcom/android/camera/Util$ImageFileNamer;->mLastDate:J

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    :goto_0
    return-object v0
.end method
