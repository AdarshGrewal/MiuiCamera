.class public Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;
.super Ljava/lang/Object;
.source "RtpSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/majorkernelpanic/streaming/rtp/RtpSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AverageBitrate"
.end annotation


# static fields
.field public static final RESOLUTION:J = 0xc8L


# instance fields
.field public mCount:I

.field public mDelta:J

.field public mElapsed:[J

.field public mIndex:I

.field public mNow:J

.field public mOldNow:J

.field public mSize:I

.field public mSum:[J

.field public mTotal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    .line 2
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSize:I

    .line 3
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->reset()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    div-int/lit16 p1, p1, 0xc8

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSize:I

    .line 6
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->reset()V

    return-void
.end method


# virtual methods
.method public average()I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move-wide v5, v3

    .line 1
    :goto_0
    iget v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSize:I

    if-ge v2, v7, :cond_0

    .line 2
    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSum:[J

    aget-wide v7, v7, v2

    add-long/2addr v5, v7

    .line 3
    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mElapsed:[J

    aget-wide v7, v7, v2

    add-long/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    cmp-long v2, v3, v0

    if-lez v2, :cond_1

    const-wide/16 v0, 0x1f40

    mul-long/2addr v5, v0

    .line 4
    div-long v0, v5, v3

    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method public push(I)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mNow:J

    .line 2
    iget v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mCount:I

    if-lez v2, :cond_0

    .line 3
    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mDelta:J

    iget-wide v4, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mOldNow:J

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mDelta:J

    .line 4
    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mTotal:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mTotal:I

    const-wide/16 v4, 0xc8

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 5
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSum:[J

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mIndex:I

    int-to-long v4, v0

    aput-wide v4, p1, v1

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mTotal:I

    .line 7
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mElapsed:[J

    aput-wide v2, v0, v1

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mDelta:J

    add-int/lit8 v1, v1, 0x1

    .line 9
    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mIndex:I

    .line 10
    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSize:I

    if-lt v1, v0, :cond_0

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mIndex:I

    .line 11
    :cond_0
    iget-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mNow:J

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mOldNow:J

    .line 12
    iget p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mCount:I

    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSize:I

    new-array v1, v0, [J

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mSum:[J

    .line 2
    new-array v0, v0, [J

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mElapsed:[J

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mNow:J

    .line 4
    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mOldNow:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mCount:I

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mDelta:J

    .line 7
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mTotal:I

    .line 8
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->mIndex:I

    return-void
.end method
