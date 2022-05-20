.class public final Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableTimeoutTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$EmptyDisposable;,
        Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;,
        Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;
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


# static fields
.field public static final NEW_TIMER:Lio/reactivex/disposables/Disposable;


# instance fields
.field public final other:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final scheduler:Lio/reactivex/Scheduler;

.field public final timeout:J

.field public final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$EmptyDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$EmptyDisposable;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->NEW_TIMER:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/ObservableSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lio/reactivex/ObservableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->timeout:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->unit:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->scheduler:Lio/reactivex/Scheduler;

    .line 5
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->other:Lio/reactivex/ObservableSource;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->other:Lio/reactivex/ObservableSource;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/ObservableSource;

    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;

    new-instance v2, Lio/reactivex/observers/SerializedObserver;

    invoke-direct {v2, p1}, Lio/reactivex/observers/SerializedObserver;-><init>(Lio/reactivex/Observer;)V

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->timeout:J

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->scheduler:Lio/reactivex/Scheduler;

    .line 3
    invoke-virtual {p1}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;)V

    .line 4
    invoke-interface {v0, v7}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/ObservableSource;

    new-instance v8, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->timeout:J

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->scheduler:Lio/reactivex/Scheduler;

    .line 6
    invoke-virtual {v1}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v6

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->other:Lio/reactivex/ObservableSource;

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;Lio/reactivex/ObservableSource;)V

    .line 7
    invoke-interface {v0, v8}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method
