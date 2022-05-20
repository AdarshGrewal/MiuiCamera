.class public final Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;
.super Ljava/lang/Object;
.source "CompletableDelay.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableDelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Delay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableDelay$Delay$OnError;,
        Lio/reactivex/internal/operators/completable/CompletableDelay$Delay$OnComplete;
    }
.end annotation


# instance fields
.field public final s:Lio/reactivex/CompletableObserver;

.field public final set:Lio/reactivex/disposables/CompositeDisposable;

.field public final synthetic this$0:Lio/reactivex/internal/operators/completable/CompletableDelay;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/completable/CompletableDelay;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/CompletableObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->this$0:Lio/reactivex/internal/operators/completable/CompletableDelay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->set:Lio/reactivex/disposables/CompositeDisposable;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->s:Lio/reactivex/CompletableObserver;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->set:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->this$0:Lio/reactivex/internal/operators/completable/CompletableDelay;

    iget-object v1, v1, Lio/reactivex/internal/operators/completable/CompletableDelay;->scheduler:Lio/reactivex/Scheduler;

    new-instance v2, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay$OnComplete;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay$OnComplete;-><init>(Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->this$0:Lio/reactivex/internal/operators/completable/CompletableDelay;

    iget-wide v4, v3, Lio/reactivex/internal/operators/completable/CompletableDelay;->delay:J

    iget-object v3, v3, Lio/reactivex/internal/operators/completable/CompletableDelay;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->set:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->this$0:Lio/reactivex/internal/operators/completable/CompletableDelay;

    iget-object v1, v1, Lio/reactivex/internal/operators/completable/CompletableDelay;->scheduler:Lio/reactivex/Scheduler;

    new-instance v2, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay$OnError;

    invoke-direct {v2, p0, p1}, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay$OnError;-><init>(Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->this$0:Lio/reactivex/internal/operators/completable/CompletableDelay;

    iget-boolean v3, p1, Lio/reactivex/internal/operators/completable/CompletableDelay;->delayError:Z

    if-eqz v3, :cond_0

    iget-wide v3, p1, Lio/reactivex/internal/operators/completable/CompletableDelay;->delay:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->this$0:Lio/reactivex/internal/operators/completable/CompletableDelay;

    iget-object p1, p1, Lio/reactivex/internal/operators/completable/CompletableDelay;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->s:Lio/reactivex/CompletableObserver;

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
