.class public final Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;
.super Lio/reactivex/observers/DisposableObserver;
.source "ObservableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeoutInnerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/DisposableObserver<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public done:Z

.field public final index:J

.field public final parent:Lio/reactivex/internal/operators/observable/ObservableTimeout$OnTimeout;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/ObservableTimeout$OnTimeout;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableTimeout$OnTimeout;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;->index:J

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;->done:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableTimeout$OnTimeout;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;->index:J

    invoke-interface {v0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableTimeout$OnTimeout;->timeout(J)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;->done:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;->done:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableTimeout$OnTimeout;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableTimeout$OnTimeout;->innerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;->done:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;->done:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/observers/DisposableObserver;->dispose()V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableTimeout$OnTimeout;

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;->index:J

    invoke-interface {p1, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTimeout$OnTimeout;->timeout(J)V

    return-void
.end method
