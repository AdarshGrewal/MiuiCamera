.class public Lcom/android/camera/dualvideo/render/RenderTrigger;
.super Ljava/lang/Object;
.source "RenderTrigger.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "RenderTrigger"

.field public static final TRIGGER_DIRECT:I = 0x4

.field public static final TRIGGER_MAIN:I = 0x1

.field public static final TRIGGER_SUB:I = 0x2

.field public static final TRIGGER_TIMER:I = 0x3


# instance fields
.field public mDisposable:Lio/reactivex/disposables/Disposable;

.field public mEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFrameInterval:J

.field public final mLocker:Ljava/lang/Object;

.field public mMainFrameReady:Z

.field public mRenderEngine:Lcom/android/camera/ui/CameraRenderEngine;

.field public mSubFrameReady:Z

.field public mTimer:Ljava/util/Timer;

.field public mTimerTask:Ljava/util/TimerTask;

.field public mWaitAnother:J


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/CameraRenderEngine;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mLocker:Ljava/lang/Object;

    const/16 v0, 0x3e8

    div-int/2addr v0, p2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mFrameInterval:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mWaitAnother:J

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mRenderEngine:Lcom/android/camera/ui/CameraRenderEngine;

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mTimer:Ljava/util/Timer;

    new-instance p1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000OOo;

    invoke-direct {p1, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000OOo;-><init>(Lcom/android/camera/dualvideo/render/RenderTrigger;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000Oo0;

    invoke-direct {p2, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000Oo0;-><init>(Lcom/android/camera/dualvideo/render/RenderTrigger;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/RenderTrigger;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RenderTrigger;->process(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/dualvideo/render/RenderTrigger;)Lio/reactivex/ObservableEmitter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mEmitter:Lio/reactivex/ObservableEmitter;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/dualvideo/render/RenderTrigger;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mLocker:Ljava/lang/Object;

    return-object p0
.end method

.method private delayTrigger(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mTimerTask:Ljava/util/TimerTask;

    :cond_0
    new-instance v0, Lcom/android/camera/dualvideo/render/RenderTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/render/RenderTrigger$1;-><init>(Lcom/android/camera/dualvideo/render/RenderTrigger;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mTimerTask:Ljava/util/TimerTask;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private process(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->requestRender()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->processSub()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->processMain()V

    :goto_0
    return-void
.end method

.method private processMain()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mMainFrameReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mSubFrameReady:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mMainFrameReady:Z

    iget-wide v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mWaitAnother:J

    invoke-direct {p0, v0, v1}, Lcom/android/camera/dualvideo/render/RenderTrigger;->delayTrigger(J)V

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mMainFrameReady:Z

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->requestRender()V

    :goto_1
    return-void
.end method

.method private processSub()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mMainFrameReady:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mSubFrameReady:Z

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->requestRender()V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mSubFrameReady:Z

    :goto_0
    return-void
.end method

.method private requestRender()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mMainFrameReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mMainFrameReady:Z

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mSubFrameReady:Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mRenderEngine:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->requestRender()V

    :cond_0
    iget-wide v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mFrameInterval:J

    invoke-direct {p0, v0, v1}, Lcom/android/camera/dualvideo/render/RenderTrigger;->delayTrigger(J)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method public forceRender()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mEmitter:Lio/reactivex/ObservableEmitter;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public mainFrameAvailable()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mEmitter:Lio/reactivex/ObservableEmitter;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "RenderTrigger"

    const-string/jumbo v1, "release: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mTimer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    iput-object v1, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mRenderEngine:Lcom/android/camera/ui/CameraRenderEngine;

    return-void
.end method

.method public subFrameAvailable()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RenderTrigger;->mEmitter:Lio/reactivex/ObservableEmitter;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
