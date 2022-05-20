.class public final Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableTimeoutTimed.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeoutTimedObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver$TimeoutTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x74657117dae1667dL


# instance fields
.field public final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public volatile done:Z

.field public volatile index:J

.field public s:Lio/reactivex/disposables/Disposable;

.field public final timeout:J

.field public final unit:Ljava/util/concurrent/TimeUnit;

.field public final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->actual:Lio/reactivex/Observer;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->timeout:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->done:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->done:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->done:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->dispose()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 3
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->index:J

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->scheduleTimeout(J)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    const-wide/16 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->scheduleTimeout(J)V

    :cond_0
    return-void
.end method

.method public scheduleTimeout(J)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3
    :cond_0
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->NEW_TIMER:Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver$TimeoutTask;

    invoke-direct {v1, p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver$TimeoutTask;-><init>(Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;J)V

    iget-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->timeout:J

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, v2}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    :cond_1
    return-void
.end method
