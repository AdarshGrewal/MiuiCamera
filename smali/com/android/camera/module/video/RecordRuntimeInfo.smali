.class public Lcom/android/camera/module/video/RecordRuntimeInfo;
.super Ljava/lang/Object;
.source "RecordRuntimeInfo.java"


# instance fields
.field public mMediaRecorderPostProcessing:Z

.field public volatile mMediaRecorderRecording:Z

.field public mMediaRecorderWorking:Z

.field public mOrientationCompensationAtRecordStart:I

.field public mPauseClickTime:J

.field public mRecordingPaused:Z

.field public mRecordingStartTime:J

.field public mRecordingTime:Ljava/lang/String;

.field public mSnapshotInProgress:Z

.field public mVideoRecordedDuration:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    return-void
.end method


# virtual methods
.method public getRecordedTime()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    .line 2
    iget-boolean v2, p0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    if-eqz v2, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    :cond_0
    return-wide v0
.end method

.method public isTrueRecording()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
