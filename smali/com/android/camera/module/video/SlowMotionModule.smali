.class public Lcom/android/camera/module/video/SlowMotionModule;
.super Lcom/android/camera/module/VideoModule;
.source "SlowMotionModule.java"


# instance fields
.field public mCameraClickObserverAction:Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;

.field public mDumpOrig960:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mDumpOrig960:Ljava/lang/Boolean;

    .line 3
    new-instance v0, Lcom/android/camera/module/video/SlowMotionModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/video/SlowMotionModule$1;-><init>(Lcom/android/camera/module/video/SlowMotionModule;)V

    iput-object v0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mCameraClickObserverAction:Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;

    return-void
.end method

.method private isActivityResumed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDump960Orig()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mDumpOrig960:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "camera.record.960origdump"

    .line 2
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mDumpOrig960:Ljava/lang/Boolean;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/video/SlowMotionModule;->mDumpOrig960:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private postProcessVideo(Lcom/android/camera/storage/mediastore/VideoFile;)Ljava/lang/String;
    .locals 18

    const-string v1, "960fps processing failed. delete the files."

    .line 1
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    move-object/from16 v5, p0

    .line 4
    iget-object v0, v5, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x4d7933ef

    const/4 v9, 0x3

    const/4 v10, 0x0

    if-eq v7, v8, :cond_3

    const v8, -0x449040df

    if-eq v7, v8, :cond_2

    const v8, -0x44902e58

    if-eq v7, v8, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "slow_motion_960"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v6, 0x2

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "slow_motion_480"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v6, v10

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "slow_motion_1920"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v6, v9

    :cond_4
    :goto_0
    const/16 v0, 0x1e0

    if-eqz v6, :cond_6

    if-eq v6, v9, :cond_5

    const/16 v0, 0xf0

    const/16 v6, 0x3c0

    :goto_1
    move v11, v0

    move v12, v6

    goto :goto_2

    :cond_5
    const/16 v6, 0x780

    goto :goto_1

    :cond_6
    const/16 v6, 0x78

    move v12, v0

    move v11, v6

    .line 5
    :goto_2
    :try_start_0
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0OO:Z

    const/4 v6, 0x1

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportSlowMotionVideoEditor()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v6

    goto :goto_3

    :cond_7
    move v0, v10

    .line 6
    :goto_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v7

    invoke-virtual {v7}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->oo0O()Z

    move-result v15

    const/4 v7, 0x4

    .line 7
    sget-object v8, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " postProcessVideo: start srcFPS:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " dstFPS:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "  supportDeFlicker:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, "  originalFile:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  originalFile length:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "  destFile:"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " supportEditor:"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v7, v8, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/video/SlowMotionModule;->isDump960Orig()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 13
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".orig.mp4"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/android/camera/module/impl/component/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 14
    :cond_8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 15
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    move/from16 v16, v0

    .line 16
    invoke-static/range {v11 .. v17}, Lcom/miui/extravideo/interpolation/VideoInterpolator;->doDecodeAndEncodeSync(IILjava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v0

    .line 17
    sget-object v4, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "postProcessVideo: end "

    invoke-static {v9, v4, v5}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    if-eqz v0, :cond_9

    .line 19
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/camera/storage/mediastore/ScopedStorageUtil;->transfer(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_9

    move v10, v6

    :cond_9
    if-nez v10, :cond_a

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 20
    :try_start_1
    sget-object v4, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v5, "960fps processing failed."

    invoke-static {v4, v5, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :goto_4
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 23
    :cond_a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    if-eqz v10, :cond_b

    .line 24
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_5
    return-object v4

    :catchall_1
    move-exception v0

    .line 25
    sget-object v4, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 27
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method private trackNewSlowMotionVideoRecorded()V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v2, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v2}, Lcom/android/camera/module/video/CameraDeviceController;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/video/VideoUtil;->isFPS120(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/video/VideoUtil;->isFPS240(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    .line 5
    invoke-static {v2}, Lcom/android/camera/module/video/VideoUtil;->isFPS120(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "fps120"

    goto :goto_0

    :cond_1
    const-string v2, "fps240"

    :goto_0
    move-object v3, v2

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v2, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    .line 6
    invoke-virtual {v2}, Lcom/android/camera/module/video/CameraDeviceController;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result v5

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v6, v2, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    const-wide/16 v7, 0x3e8

    div-long v7, v0, v7

    .line 7
    invoke-static/range {v3 .. v8}, Lcom/android/camera/statistic/CameraStatUtils;->trackNewSlowMotionVideoRecorded(Ljava/lang/String;IIIJ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public doLaterReleaseIfNeed()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->doLaterReleaseIfNeed()V

    .line 2
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isTextureExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "doLaterReleaseIfNeed: restartModule..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->restartModule(I)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "doLaterReleaseIfNeed: dismissBlurCover..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->dismissBlurCover()V

    :cond_1
    :goto_0
    return-void
.end method

.method public doVideoInfoTrack()V
    .locals 0

    return-void
.end method

.method public doVideoPostProcess(J)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderPostProcessing:Z

    const-string v2, "attr_feature_name"

    const-string v3, "key_video_960"

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/camera/module/video/SlowMotionModule;->isActivityResumed()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 p1, 0x1f40

    .line 3
    invoke-static {p1, v1}, Lcom/android/camera/module/video/Boost;->startBoost(II)V

    .line 4
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p1

    sget-object p2, Lcom/android/camera/performance/PerformanceManager$Event;->SLOW_MOTION_SAVING:Lcom/android/camera/performance/PerformanceManager$Event;

    invoke-virtual {p1, p2}, Lcom/android/camera/performance/PerformanceManager;->startEvent(Lcom/android/camera/performance/PerformanceManager$Event;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-direct {p0, p1}, Lcom/android/camera/module/video/SlowMotionModule;->postProcessVideo(Lcom/android/camera/storage/mediastore/VideoFile;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p2

    new-array v0, v1, [Lcom/android/camera/performance/PerformanceManager$Event;

    sget-object v5, Lcom/android/camera/performance/PerformanceManager$Event;->SLOW_MOTION_SAVING:Lcom/android/camera/performance/PerformanceManager$Event;

    aput-object v5, v0, v4

    invoke-virtual {p2, v0}, Lcom/android/camera/performance/PerformanceManager;->stopEvent([Lcom/android/camera/performance/PerformanceManager$Event;)J

    .line 7
    invoke-static {}, Lcom/android/camera/module/video/Boost;->stopBoost()V

    if-nez p1, :cond_1

    .line 8
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "postProcessVideo failed"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string p1, "fps_960_process_failed"

    .line 10
    invoke-static {v3, v2, p1}, Lcom/android/camera/statistic/MistatsWrapper;->keyTriggerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v4

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p2, p2, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v0, "_data"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/android/camera/module/video/VideoUtil;->isFPS480(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "fps480"

    goto :goto_0

    :cond_2
    const-string p1, "fps960"

    :goto_0
    move-object v2, p1

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, p1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 15
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result v4

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/android/camera/module/video/VideoUtil;->isFPS480(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x1e0

    goto :goto_1

    :cond_3
    const/16 p1, 0x3c0

    :goto_1
    move v5, p1

    const-wide/16 v6, 0xa

    .line 17
    invoke-static/range {v2 .. v7}, Lcom/android/camera/statistic/CameraStatUtils;->trackNewSlowMotionVideoRecorded(Ljava/lang/String;IIIJ)V

    :cond_4
    return v1

    .line 18
    :cond_5
    :goto_2
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uncomplete video.="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/module/video/VideoUtil;->deleteVideoFile(Ljava/lang/String;)V

    const-string p1, "fps_960_too_short"

    .line 20
    invoke-static {v3, v2, p1}, Lcom/android/camera/statistic/MistatsWrapper;->keyTriggerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v4

    :cond_6
    return v1
.end method

.method public getHighSpeedRecordOperationMode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEisOn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnableScreenShot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderPostProcessing:Z

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->useBackToStopRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->onBackPressed()Z

    move-result v0

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public onMediaRecorderReleased(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->onMediaRecorderReleased(Z)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/video/SlowMotionModule;->trackNewSlowMotionVideoRecorded()V

    return-void
.end method

.method public registerProtocol()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->registerProtocol()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x7f120416

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 3
    iget-object v3, p0, Lcom/android/camera/module/video/SlowMotionModule;->mCameraClickObserverAction:Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;

    new-array v1, v1, [I

    const/16 v5, 0xab

    aput v5, v1, v4

    invoke-interface {v0, v2, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->addObservable([ILcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;[I)V

    :cond_0
    return-void
.end method

.method public startCameraSession(Z)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startHighSpeedRecordSession()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startRecordSession()V

    :goto_0
    return-void
.end method

.method public updateFpsRange()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 2
    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHfrFPSRange"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mHfrFPSRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mHfrFPSRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setVideoFpsRange(Landroid/util/Range;)V

    return-void
.end method
