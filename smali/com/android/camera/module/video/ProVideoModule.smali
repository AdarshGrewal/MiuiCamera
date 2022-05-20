.class public Lcom/android/camera/module/video/ProVideoModule;
.super Lcom/android/camera/module/VideoModule;
.source "ProVideoModule.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$ChangeGainProtocol;


# instance fields
.field public mHistogramDisposable:Lio/reactivex/disposables/Disposable;

.field public mHistogramEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method

.method private initHistogramEmitter()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportHistogram()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOOO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOOO;-><init>(Lcom/android/camera/module/video/ProVideoModule;)V

    sget-object v1, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/loader/FunctionParseHistogramStats;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/loader/FunctionParseHistogramStats;-><init>(Lcom/android/camera/module/Module;Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Flowable;->sample(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lio/reactivex/Flowable;->onBackpressureDrop()Lio/reactivex/Flowable;

    move-result-object v0

    .line 7
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOOo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOOo;-><init>(Lcom/android/camera/module/video/ProVideoModule;)V

    .line 8
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/video/ProVideoModule;->mHistogramDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lio/reactivex/FlowableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/ProVideoModule;->mHistogramEmitter:Lio/reactivex/FlowableEmitter;

    return-void
.end method

.method public synthetic OooO00o([I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshHistogramStatsView()V

    :cond_0
    return-void
.end method

.method public isEnableScreenShot()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureRepeatingOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeautyScreenshot()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 4
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/video/UserRecordSetting;->needChooseVideoBeauty(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 5
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 6
    :cond_3
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnableScreenShot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onCameraOpened()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpened()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/video/ProVideoModule;->initHistogramEmitter()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraSettings;->setAudioMapParameter(Landroid/content/Context;IZ)V

    return-void
.end method

.method public onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/video/ProVideoModule;->mHistogramEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->CAMERA_TYPES_MANUALLY:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a7

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->registerProtocol()V

    return-void
.end method

.method public releaseResources()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->releaseResources()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/video/ProVideoModule;->mHistogramDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/video/ProVideoModule;->mHistogramDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/module/video/ProVideoModule;->mHistogramDisposable:Lio/reactivex/disposables/Disposable;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/ProVideoModule;->mHistogramEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lio/reactivex/Emitter;->onComplete()V

    :cond_1
    return-void
.end method

.method public setGainValue(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setGainValueReset(F)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/SoundSetting;->setGainState(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public startCameraSession(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startRecordSession()V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a7

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->unRegisterProtocol()V

    return-void
.end method

.method public updateExposureTime()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateExposureTime()V

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/video/ProVideoModule;->updateFpsRange()V

    :cond_0
    return-void
.end method

.method public updateFpsRange()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/CameraDeviceController;->updateFpsRangeDefault()V

    return-void
.end method
