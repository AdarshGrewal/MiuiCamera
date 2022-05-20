.class public Lcom/android/camera/module/Camera2Module$CountObserver;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public mCount:I

.field public mMode:I

.field public final mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/Camera2Module$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module$CountObserver;-><init>(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideAlert()V

    return-void
.end method

.method public static synthetic access$3900(Lcom/android/camera/module/Camera2Module$CountObserver;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module$CountObserver;->setCount(I)V

    return-void
.end method

.method public static synthetic access$4000(Lcom/android/camera/module/Camera2Module$CountObserver;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module$CountObserver;->setMode(I)V

    return-void
.end method

.method private setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mCount:I

    return-void
.end method

.method private setMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mMode:I

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onError - module is null, returning."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/module/Camera2Module;->access$4202(Lcom/android/camera/module/Camera2Module;Z)Z

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->tryRemoveCountDownMessage()V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v3

    if-nez v3, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v5, 0xd4

    .line 9
    invoke-virtual {v3, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 10
    iget v5, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v5}, Lcom/android/camera/timerburst/TimerBurstController;->isSupportTimerBurst(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mMode:I

    const/16 v6, 0x78

    if-eq v5, v6, :cond_3

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v6

    if-nez v6, :cond_3

    .line 13
    invoke-virtual {v5, v4}, Lcom/android/camera/timerburst/TimerBurstController;->setInTimerBurstShotting(Z)V

    .line 14
    invoke-virtual {v5}, Lcom/android/camera/timerburst/TimerBurstController;->resetTimerRunningData()V

    .line 15
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    .line 16
    invoke-interface {v2, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 17
    iget v2, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xa7

    if-ne v2, v3, :cond_1

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xb5

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    if-eqz v2, :cond_1

    .line 19
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    .line 20
    :cond_1
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$4300(Lcom/android/camera/module/Camera2Module;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 21
    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->reInitAlert(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onError - module is null, returning."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/android/camera/module/Camera2Module;->access$4202(Lcom/android/camera/module/Camera2Module;Z)Z

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onNext - module is null, returning."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a8

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;

    .line 6
    iget v2, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mCount:I

    if-ne p1, v2, :cond_1

    .line 7
    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideAlert()V

    const/4 v2, 0x7

    .line 8
    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 9
    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showDelayNumber(I)V

    if-eqz v1, :cond_5

    .line 10
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->startAutoHibernationCaptureDelayNumber()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_4

    .line 11
    iget-object p1, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideDelayNumber()V

    .line 12
    iget p1, v0, Lcom/android/camera/module/BaseModule;->mIsSatFallback:I

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->shouldCheckSatFallbackState()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, v0, Lcom/android/camera/module/BaseModule;->mWaitingSnapshot:Z

    .line 14
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "capture check in startCount: sat fallback"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, v0, Lcom/android/camera/module/BaseModule;->mWaitingSnapshot:Z

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/camera/module/Camera2Module;->access$4100(Lcom/android/camera/module/Camera2Module;I)V

    .line 17
    iget p1, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v0, 0xa7

    if-ne p1, v0, :cond_3

    .line 18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    .line 20
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->updateTimerBurstAnimator()V

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    .line 21
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->stopAutoHibernationCaptureDelayNumber()V

    goto :goto_1

    :cond_4
    const/4 v2, 0x5

    .line 22
    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 23
    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showDelayNumber(I)V

    if-eqz v1, :cond_5

    .line 24
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->startAutoHibernationCaptureDelayNumber()V

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module$CountObserver;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onSubscribe - module is null, returning."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooOOO0;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooOOO0;-><init>(Lcom/android/camera/module/Camera2Module;)V

    const-wide/16 v2, 0x78

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 5
    :cond_1
    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p1, :cond_2

    const/4 v0, 0x7

    .line 6
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    :cond_2
    return-void
.end method
