.class public final Lio/reactivex/internal/operators/observable/ObservableRefCount;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableRefCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRefCount$DisposeTask;,
        Lio/reactivex/internal/operators/observable/ObservableRefCount$DisposeConsumer;,
        Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public volatile baseDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field public final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final source:Lio/reactivex/observables/ConnectableObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observables/ConnectableObservable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lio/reactivex/observables/ConnectableObservable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 2
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->baseDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    return-void
.end method

.method private disconnect(Lio/reactivex/disposables/CompositeDisposable;)Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$DisposeTask;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableRefCount$DisposeTask;-><init>(Lio/reactivex/internal/operators/observable/ObservableRefCount;Lio/reactivex/disposables/CompositeDisposable;)V

    invoke-static {v0}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method private onSubscribe(Lio/reactivex/Observer;Ljava/util/concurrent/atomic/AtomicBoolean;)Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$DisposeConsumer;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableRefCount$DisposeConsumer;-><init>(Lio/reactivex/internal/operators/observable/ObservableRefCount;Lio/reactivex/Observer;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v0
.end method


# virtual methods
.method public doSubscribe(Lio/reactivex/Observer;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->disconnect(Lio/reactivex/disposables/CompositeDisposable;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;

    invoke-direct {v1, p0, p1, p2, v0}, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableRefCount;Lio/reactivex/Observer;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    .line 3
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->source:Lio/reactivex/observables/ConnectableObservable;

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->onSubscribe(Lio/reactivex/Observer;Ljava/util/concurrent/atomic/AtomicBoolean;)Lio/reactivex/functions/Consumer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/reactivex/observables/ConnectableObservable;->connect(Lio/reactivex/functions/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    throw p1

    .line 9
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->baseDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1, v0}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->doSubscribe(Lio/reactivex/Observer;Lio/reactivex/disposables/CompositeDisposable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method