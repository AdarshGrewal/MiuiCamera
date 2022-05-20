.class public final Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;
.super Ljava/lang/Object;
.source "ObservableDebounceTimed.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableDebounceTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebounceTimedObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field public final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public done:Z

.field public volatile index:J

.field public s:Lio/reactivex/disposables/Disposable;

.field public final timeout:J

.field public final timer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field public final unit:Ljava/util/concurrent/TimeUnit;

.field public final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;)V
    .locals 1
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->actual:Lio/reactivex/Observer;

    .line 4
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->timeout:J

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 6
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public emit(JLjava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->index:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {p1, p3}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p4}, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->done:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 4
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_2

    .line 5
    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->run()V

    .line 7
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->done:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->done:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 3
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->index:J

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/disposables/Disposable;

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6
    :cond_1
    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;

    invoke-direct {v3, p1, v0, v1, p0}, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;-><init>(Ljava/lang/Object;JLio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;)V

    .line 7
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->timeout:J

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v0, v1, v2}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 9
    invoke-virtual {v3, p1}, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->setResource(Lio/reactivex/disposables/Disposable;)V

    :cond_2
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
