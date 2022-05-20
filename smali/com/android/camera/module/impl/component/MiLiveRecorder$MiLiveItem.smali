.class public Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;
.super Ljava/lang/Object;
.source "MiLiveRecorder.java"

# interfaces
.implements Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/impl/component/MiLiveRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiLiveItem"
.end annotation


# instance fields
.field public mDuration:J

.field public mNextPos:J

.field public mPath:Ljava/lang/String;

.field public mSpeed:F


# direct methods
.method public constructor <init>(Ljava/lang/String;JJF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;->mPath:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;->mNextPos:J

    .line 4
    iput-wide p4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;->mDuration:J

    .line 5
    iput p6, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;->mSpeed:F

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;->mDuration:J

    return-wide v0
.end method

.method public getNextPos()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;->mNextPos:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;->mPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;->mSpeed:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiLiveItem{mPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mNextPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;->mNextPos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;->mSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
