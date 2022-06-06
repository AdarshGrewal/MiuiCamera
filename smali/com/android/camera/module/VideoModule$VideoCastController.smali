.class public Lcom/android/camera/module/VideoModule$VideoCastController;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$VideoCastModuleProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoCastController"
.end annotation


# instance fields
.field public mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

.field public final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/video/RecordRuntimeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    return-void
.end method

.method private onStopTimer()V
    .locals 5

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopVideoRecording>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v2, v2, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v2, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LOooO0O0/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$000(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/video/AutoZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video/AutoZoomController;->isAutoZoomTracking()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$000(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/video/AutoZoomController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/AutoZoomController;->stopTracking(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean v1, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->access$402(Lcom/android/camera/module/VideoModule;Z)Z

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$000(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/video/AutoZoomController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v3, v3, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v3, v3, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-virtual {v0, v3}, Lcom/android/camera/module/video/AutoZoomController;->setIsRecording(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v3, 0xff00

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v3, v3, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v3, v3, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastStateRecording(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v3, v0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean v1, v3, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$100(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->subtitleStop()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    iget v3, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_2

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateProVideoRecordingSimpleView(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->processingFinish()V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$500(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/video/AiAudioController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/AiAudioController;->handleAiAudioTipsState(Z)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->updateZoomRatioToggleButtonState(Z)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$600(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/video/CameraDeviceController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0, v3}, Lcom/android/camera/module/video/CameraDeviceController;->restoreZoomAfterRecording(Lcom/android/camera/module/BaseModule;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$700(Lcom/android/camera/module/VideoModule;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$700(Lcom/android/camera/module/VideoModule;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v1, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderPostProcessing:Z

    if-eqz v1, :cond_5

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingStart(I)V

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->doVideoInfoTrack()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0, v2}, Lcom/android/camera/module/VideoModule;->onMediaRecorderReleased(Z)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$800(Lcom/android/camera/module/VideoModule;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-boolean v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_8

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00OOO0()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00OOO0O()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_8

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckFastMotion(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->exitSavePowerMode()V

    return-void
.end method

.method private pauseVideoCastRecording()V
    .locals 9

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v1, 0xff00

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xd4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v5, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x1f4

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v2, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    invoke-virtual {v4}, Lcom/android/camera/module/video/RecordRuntimeInfo;->isTrueRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v6, v5, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    sub-long/2addr v3, v6

    iput-wide v3, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    iget-wide v2, v5, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastRecordedDuration(J)V

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v2}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackPauseOrResumeVideoRecording(ZZ)V

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPause()V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v1, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastStatePaused(Z)V

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switched to pause state"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private resumeVideoCastRecording()V
    .locals 9

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v1, 0xff00

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xd4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->isVideoCastStatePaused()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPauseButtonClick: isRecordingPaused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isRecording="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$000(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/video/AutoZoomController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v5, v5, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-virtual {v4, v5}, Lcom/android/camera/module/video/AutoZoomController;->setIsRecording(Z)V

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastStateRecording(Z)V

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v5, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x1f4

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    iput-wide v2, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    :try_start_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->getVideoCastRecordedDuration()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v4, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const-string v2, ""

    iput-object v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$100(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->subtitleResume()V

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onResume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v3, "failed to resume media recorder"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$200(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/video/RecorderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

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

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule$VideoCastController;->stopVideoCastRecording()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule$VideoCastController;->resumeVideoCastRecording()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule$VideoCastController;->pauseVideoCastRecording()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule$VideoCastController;->startVideoCastRecording()V

    :goto_0
    return-void
.end method

.method private startVideoCastRecording()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onStart()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$300(Lcom/android/camera/module/VideoModule;)V

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switched to start state"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopVideoCastRecording()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v1, 0xff00

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule$VideoCastController;->onStopTimer()V

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$VideoCastController;->mCastRecordInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v1, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastStatePaused(Z)V

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switched to idle state"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public setVideoCastLayoutType(I)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoCastLayoutType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;->setVideoCastLayoutType(I)V

    return-void
.end method

.method public setVideoCastRecordingState(I)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoCastRecordingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule$VideoCastController;->setVideoCastState(I)V

    return-void
.end method

.method public setVideoCastState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->getRecordingState(Landroid/os/Bundle;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule$VideoCastController;->setVideoCastRecordingState(I)V

    :cond_0
    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->getLayoutType(Landroid/os/Bundle;I)I

    move-result p1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule$VideoCastController;->setVideoCastLayoutType(I)V

    :cond_1
    return-void
.end method
