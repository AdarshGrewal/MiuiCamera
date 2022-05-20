.class public Lcom/android/camera/module/video/VideoCastModule;
.super Lcom/android/camera/module/VideoModule;
.source "VideoCastModule.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$VideoCastModuleProtocol;


# instance fields
.field public mIsVideoCastIntent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method

.method private onStopTimer()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopVideoRecording>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v2, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mOverheatTipAlreadyShown:Z

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v3, 0xff00

    .line 5
    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    if-eqz v0, :cond_0

    .line 6
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v3, v3, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastStateRecording(Z)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean v1, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    .line 8
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xb4

    if-ne v0, v3, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateProVideoRecordingSimpleView(Z)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->processingFinish()V

    .line 13
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateZoomRatioToggleButtonState(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/video/CameraDeviceController;->restoreZoomAfterRecording(Lcom/android/camera/module/Module;)V

    .line 15
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 16
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_4

    .line 18
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v1, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderPostProcessing:Z

    if-eqz v1, :cond_3

    .line 19
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingStart(I)V

    goto :goto_0

    .line 20
    :cond_3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    .line 21
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->doVideoInfoTrack()V

    .line 22
    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->onMediaRecorderReleased(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreviewAfterRecord()V

    .line 24
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    .line 25
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-boolean v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_6

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo0()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_6

    .line 27
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckFastMotion(Z)V

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->exitSavePowerMode()V

    return-void
.end method

.method private pauseVideoCastRecording()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v1, 0xff00

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xd4

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v5, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x1f4

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iput-wide v2, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    .line 8
    invoke-virtual {v4}, Lcom/android/camera/module/video/RecordRuntimeInfo;->isTrueRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v6, v5, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    sub-long/2addr v3, v6

    iput-wide v3, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    .line 10
    iget-wide v2, v5, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastRecordedDuration(J)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    .line 12
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackPauseOrResumeVideoRecording(ZZ)V

    .line 15
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPause()V

    .line 16
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v1, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastStatePaused(Z)V

    .line 17
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switched to pause state"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private resumeVideoCastRecording()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v1, 0xff00

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xd4

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 5
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->isVideoCastStatePaused()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    .line 6
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPauseButtonClick: isRecordingPaused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isRecording="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    .line 9
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastStateRecording(Z)V

    .line 10
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v5, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x1f4

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    iput-wide v2, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    .line 12
    :try_start_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->getVideoCastRecordedDuration()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const-string v2, ""

    iput-object v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingTime:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    .line 19
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onResume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v3, "failed to resume media recorder"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    .line 22
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    .line 23
    :goto_0
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switched to resume state"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private setVideoCastState(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoCastState current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/video/VideoCastModule;->stopVideoCastRecording()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/video/VideoCastModule;->resumeVideoCastRecording()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/video/VideoCastModule;->pauseVideoCastRecording()V

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/video/VideoCastModule;->startVideoCastRecording()V

    :goto_0
    return-void
.end method

.method private startVideoCastRecording()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onStart()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/video/VideoCastModule;->onStartRecorderSucceed()V

    .line 6
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switched to start state"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopVideoCastRecording()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v1, 0xff00

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/video/VideoCastModule;->onStopTimer()V

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v1, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastStatePaused(Z)V

    .line 5
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switched to idle state"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/video/VideoCastModule;->setVideoCastStateImpl(Landroid/os/Bundle;)V

    return-void
.end method

.method public checkRecordTimeValid(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/video/VideoCastModule;->mIsVideoCastIntent:Z

    .line 2
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->onCreate(II)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOO;-><init>(Lcom/android/camera/module/video/VideoCastModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 2
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onReviewCancelClicked()V

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showDialogFragment(Ljava/lang/String;)V

    return-void
.end method

.method public onStartRecorderSucceed()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v1, 0xff00

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    .line 3
    iget-boolean v1, p0, Lcom/android/camera/module/video/VideoCastModule;->mIsVideoCastIntent:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastStateRecording(Z)V

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->onStartRecorderSucceed()V

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    return-void
.end method

.method public onVideoCastStateChanged(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOoo;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOoo;-><init>(Lcom/android/camera/module/video/VideoCastModule;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerProtocol()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v1, 0xff01

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->registerProtocol()V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v1, 0xff00

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/impl/ImplFactory;->initModulePersistent(Lcom/android/camera/ActivityBase;[I)V

    :cond_0
    return-void
.end method

.method public setVideoCastLayoutType(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoCastLayoutType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

    .line 3
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;->setVideoCastLayoutType(I)V

    return-void
.end method

.method public setVideoCastRecordingState(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoCastRecordingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/module/video/VideoCastModule;->setVideoCastState(I)V

    return-void
.end method

.method public setVideoCastStateImpl(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->getRecordingState(Landroid/os/Bundle;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/android/camera/module/video/VideoCastModule;->setVideoCastRecordingState(I)V

    .line 3
    :cond_0
    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->getLayoutType(Landroid/os/Bundle;I)I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/module/video/VideoCastModule;->setVideoCastLayoutType(I)V

    :cond_1
    return-void
.end method

.method public trySaveVidoeFile(Z)V
    .locals 0

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->unRegisterProtocol()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v1, 0xff01

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updateBeauty()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v1, v0, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    iput-object v1, v0, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    const/16 v1, 0x28

    iput v1, v0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    .line 4
    iput v1, v0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v1, v0}, Lcom/android/camera/module/video/CameraDeviceController;->updateBeauty(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    return-void
.end method
