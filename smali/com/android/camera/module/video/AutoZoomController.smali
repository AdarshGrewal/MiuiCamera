.class public Lcom/android/camera/module/video/AutoZoomController;
.super Ljava/lang/Object;
.source "AutoZoomController.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$AutoZoomModuleProtocol;


# static fields
.field public static final TAG:Ljava/lang/String; = "AutoZoomController"


# instance fields
.field public mAutoZoomDataDisposable:Lio/reactivex/disposables/Disposable;

.field public mAutoZoomEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field public mAutoZoomUiDisposable:Lio/reactivex/disposables/Disposable;

.field public mAutoZoomViewProtocol:Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

.field public mCamera2Device:Lcom/android/camera2/Camera2Proxy;

.field public mHandler:Landroid/os/Handler;

.field public mInitialized:Z

.field public final mIsAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsRecording:Z

.field public mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

.field public mTrackLostCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mIsAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/video/AutoZoomController;Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/video/AutoZoomController;->consumeAutoZoomData(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V

    return-void
.end method

.method public static synthetic access$102(Lcom/android/camera/module/video/AutoZoomController;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomEmitter:Lio/reactivex/FlowableEmitter;

    return-object p1
.end method

.method private consumeAutoZoomData(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mInitialized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/video/AutoZoomController;->isAutoZoomTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomViewProtocol:Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;->feedData(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V

    :cond_0
    return-void
.end method

.method private notifyAutoZoomStopUiHint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomUiDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomUiDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomUiDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private startAutoZoom()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mIsAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooO0Oo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooO0Oo;-><init>(Lcom/android/camera/module/video/AutoZoomController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/video/AutoZoomController;->notifyAutoZoomStartUiHint()V

    return-void
.end method

.method private stopAutoZoom()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mIsAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooO0o0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooO0o0;-><init>(Lcom/android/camera/module/video/AutoZoomController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/video/AutoZoomController;->notifyAutoZoomStopUiHint()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomViewProtocol:Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;->onAutoZoomStarted()V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/video/AutoZoomController;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const v1, 0x7f120156

    const-wide/16 v2, -0x1

    .line 2
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomViewProtocol:Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;->onAutoZoomStopped()V

    :cond_0
    return-void
.end method

.method public initAutoZoom(Lcom/android/camera2/Camera2Proxy;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iput-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 2
    iput-object p2, p0, Lcom/android/camera/module/video/AutoZoomController;->mHandler:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lcom/android/camera/module/video/AutoZoomController;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0ooo()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xd6

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

    iput-object p1, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomViewProtocol:Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

    .line 6
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/video/AutoZoomController;->startAutoZoom()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/video/AutoZoomController;->stopAutoZoom()V

    .line 9
    :goto_0
    new-instance p1, Lcom/android/camera/module/video/AutoZoomController$3;

    invoke-direct {p1, p0}, Lcom/android/camera/module/video/AutoZoomController$3;-><init>(Lcom/android/camera/module/video/AutoZoomController;)V

    sget-object p2, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {p1, p2}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    sget-object p2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 10
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance p2, Lcom/android/camera/module/video/AutoZoomController$2;

    invoke-direct {p2, p0}, Lcom/android/camera/module/video/AutoZoomController$2;-><init>(Lcom/android/camera/module/video/AutoZoomController;)V

    .line 11
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 12
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance p2, Lcom/android/camera/module/video/AutoZoomController$1;

    invoke-direct {p2, p0}, Lcom/android/camera/module/video/AutoZoomController$1;-><init>(Lcom/android/camera/module/video/AutoZoomController;)V

    .line 13
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomDataDisposable:Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/android/camera/module/video/AutoZoomController;->mInitialized:Z

    return-void
.end method

.method public isAutoZoomTracking()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mIsAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public notifyAutoZoomStartUiHint()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/video/AutoZoomController;->notifyAutoZoomStopUiHint()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x320

    .line 3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooO0o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooO0o;-><init>(Lcom/android/camera/module/video/AutoZoomController;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomUiDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomEmitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onTrackLost()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/video/AutoZoomController;->notifyAutoZoomStartUiHint()V

    return-void
.end method

.method public onTrackLosting()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mTrackLostCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mTrackLostCount:I

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mInitialized:Z

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lio/reactivex/Emitter;->onComplete()V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomUiDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomUiDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6
    iput-object v2, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomUiDisposable:Lio/reactivex/disposables/Disposable;

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomDataDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomDataDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 9
    iput-object v2, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomDataDisposable:Lio/reactivex/disposables/Disposable;

    .line 10
    :cond_2
    iput-object v2, p0, Lcom/android/camera/module/video/AutoZoomController;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/camera/module/video/AutoZoomController;->stopTracking(I)Z

    .line 12
    invoke-direct {p0}, Lcom/android/camera/module/video/AutoZoomController;->stopAutoZoom()V

    return-void
.end method

.method public resetTrackLostCount()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mTrackLostCount:I

    return-void
.end method

.method public setAutoZoomStopCapture(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-boolean v1, p0, Lcom/android/camera/module/video/AutoZoomController;->mIsRecording:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomStopCapture(IZ)V

    :cond_0
    return-void
.end method

.method public setIsRecording(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/video/AutoZoomController;->mIsRecording:Z

    return-void
.end method

.method public startTracking(Landroid/graphics/RectF;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x0

    .line 3
    invoke-interface {v0, v2, v1, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/video/AutoZoomController;->notifyAutoZoomStopUiHint()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v3, -0x1

    iget-boolean v4, p0, Lcom/android/camera/module/video/AutoZoomController;->mIsRecording:Z

    invoke-virtual {v0, v3, v4}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomStopCapture(IZ)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-array v3, v2, [F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    aput v4, v3, v1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    aput v5, v3, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    aput p1, v3, v1

    iget-boolean p1, p0, Lcom/android/camera/module/video/AutoZoomController;->mIsRecording:Z

    invoke-virtual {v0, v3, p1}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomStartCapture([FZ)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/video/AutoZoomController;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iget-boolean v1, p0, Lcom/android/camera/module/video/AutoZoomController;->mIsRecording:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomStartCapture([FZ)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/video/AutoZoomController;->mIsAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 9
    iget-boolean p1, p0, Lcom/android/camera/module/video/AutoZoomController;->mIsRecording:Z

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackSelectObject(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public stopTracking(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mIsAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mIsAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-boolean v2, p0, Lcom/android/camera/module/video/AutoZoomController;->mIsRecording:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomStopCapture(IZ)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, -0x1

    iget-boolean v2, p0, Lcom/android/camera/module/video/AutoZoomController;->mIsRecording:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomStopCapture(IZ)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mAutoZoomViewProtocol:Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;->onTrackingStopped(I)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/video/AutoZoomController;->notifyAutoZoomStartUiHint()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public trackLostCount()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "track count is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/video/AutoZoomController;->mTrackLostCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoZoomController"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/module/video/AutoZoomController;->mTrackLostCount:I

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLostCount(I)V

    return-void
.end method
