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

.field public mRecordingTimeCountsDown:Z

.field public mSnapshotInProgress:Z

.field public mVideoRecordedDuration:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    return-void
.end method


# virtual methods
.method public isTrueRecording()Z
    .locals 1

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
