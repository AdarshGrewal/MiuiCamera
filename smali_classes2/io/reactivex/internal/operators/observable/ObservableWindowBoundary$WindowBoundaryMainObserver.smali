.class public final Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;
.super Lio/reactivex/internal/observers/QueueDrainObserver;
.source "ObservableWindowBoundary.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableWindowBoundary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowBoundaryMainObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/QueueDrainObserver<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observable<",
        "TT;>;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field public static final NEXT:Ljava/lang/Object;


# instance fields
.field public final boundary:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field public final bufferSize:I

.field public final other:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TB;>;"
        }
    .end annotation
.end field

.field public s:Lio/reactivex/disposables/Disposable;

.field public window:Lio/reactivex/subjects/UnicastSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final windows:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->NEXT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observer;Lio/reactivex/ObservableSource;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;>;",
            "Lio/reactivex/ObservableSource<",
            "TB;>;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/QueueDrainObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->boundary:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->windows:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->other:Lio/reactivex/ObservableSource;

    .line 5
    iput p3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->bufferSize:I

    const-wide/16 p2, 0x1

    .line 6
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->cancelled:Z

    return-void
.end method

.method public drainLoop()V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    check-cast v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->actual:Lio/reactivex/Observer;

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->window:Lio/reactivex/subjects/UnicastSubject;

    const/4 v3, 0x1

    move v4, v3

    .line 4
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->done:Z

    .line 5
    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_3

    if-eqz v7, :cond_3

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->boundary:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v2, v0}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v2}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    :goto_2
    return-void

    :cond_3
    if-eqz v7, :cond_4

    neg-int v4, v4

    .line 10
    invoke-virtual {p0, v4}, Lio/reactivex/internal/observers/QueueDrainObserver;->leave(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 11
    :cond_4
    sget-object v5, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->NEXT:Ljava/lang/Object;

    if-ne v6, v5, :cond_7

    .line 12
    invoke-virtual {v2}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    .line 13
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->windows:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    .line 14
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->boundary:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void

    .line 15
    :cond_5
    iget-boolean v5, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->cancelled:Z

    if-eqz v5, :cond_6

    goto :goto_0

    .line 16
    :cond_6
    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->bufferSize:I

    invoke-static {v2}, Lio/reactivex/subjects/UnicastSubject;->create(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v2

    .line 17
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->windows:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 18
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->window:Lio/reactivex/subjects/UnicastSubject;

    .line 19
    invoke-interface {v1, v2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_7
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->cancelled:Z

    return v0
.end method

.method public next()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->NEXT:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->drainLoop()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->done:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->drainLoop()V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->windows:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->boundary:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 7
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->done:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->error:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->done:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->drainLoop()V

    .line 7
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->windows:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->boundary:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 9
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->fastEnter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->window:Lio/reactivex/subjects/UnicastSubject;

    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/QueueDrainObserver;->leave(I)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->enter()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->drainLoop()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->actual:Lio/reactivex/Observer;

    .line 4
    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 5
    iget-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->bufferSize:I

    invoke-static {v0}, Lio/reactivex/subjects/UnicastSubject;->create(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->window:Lio/reactivex/subjects/UnicastSubject;

    .line 8
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 9
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryInnerObserver;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryInnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;)V

    .line 10
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->boundary:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->windows:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 12
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->other:Lio/reactivex/ObservableSource;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    :cond_1
    return-void
.end method
