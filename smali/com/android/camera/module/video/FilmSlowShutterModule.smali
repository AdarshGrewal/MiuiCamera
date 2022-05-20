.class public Lcom/android/camera/module/video/FilmSlowShutterModule;
.super Lcom/android/camera/module/VideoModule;
.source "FilmSlowShutterModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(ILandroid/util/Range;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
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
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, v1, v4, v4}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V

    return v3

    :cond_0
    return v4

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->useBackToStopRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    .line 6
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_4

    .line 7
    invoke-interface {v0, v1, v4, v4}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V

    :cond_4
    :goto_0
    return v3
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x10

    aput v1, p1, v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public startCameraSession(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startRecordSession()V

    return-void
.end method

.method public updateExposureTime()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const-wide/32 v1, 0x7735940

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/Camera2Proxy;->setExposureTime(J)V

    return-void
.end method

.method public updateFpsRange()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    .line 3
    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFpsRange expectedLowFps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getSupportedFpsRange()[Landroid/util/Range;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOO0;

    invoke-direct {v2, v0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOO0;-><init>(I)V

    .line 6
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFpsRange(Landroid/util/Range;)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateFpsRange: unable to find best fps range for MODE_FILM_SLOWSHUTTER"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/CameraDeviceController;->updateFpsRangeDefault()V

    :goto_0
    return-void
.end method
