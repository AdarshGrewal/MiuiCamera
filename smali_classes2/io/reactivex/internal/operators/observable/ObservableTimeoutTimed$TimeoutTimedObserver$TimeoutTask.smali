.class public final Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver$TimeoutTask;
.super Ljava/lang/Object;
.source "ObservableTimeoutTimed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TimeoutTask"
.end annotation


# instance fields
.field public final idx:J

.field public final synthetic this$0:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver$TimeoutTask;->this$0:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver$TimeoutTask;->idx:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver$TimeoutTask;->idx:J

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver$TimeoutTask;->this$0:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;

    iget-wide v2, v2, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->index:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver$TimeoutTask;->this$0:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->done:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver$TimeoutTask;->this$0:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver$TimeoutTask;->this$0:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver$TimeoutTask;->this$0:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->actual:Lio/reactivex/Observer;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver$TimeoutTask;->this$0:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
