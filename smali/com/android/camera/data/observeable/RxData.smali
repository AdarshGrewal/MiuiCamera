.class public Lcom/android/camera/data/observeable/RxData;
.super Ljava/lang/Object;
.source "RxData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/observeable/RxData$DataObserver;,
        Lcom/android/camera/data/observeable/RxData$DataObservable;,
        Lcom/android/camera/data/observeable/RxData$DataCheck;,
        Lcom/android/camera/data/observeable/RxData$DataWrap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RxLiveData"


# instance fields
.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final dataLock:Ljava/lang/Object;

.field public triggers:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lcom/android/camera/data/observeable/RxData$DataWrap<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/observeable/RxData;->dataLock:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/observeable/RxData;->triggers:Lio/reactivex/subjects/Subject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/android/camera/data/observeable/RxData;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/camera/data/observeable/RxData;->data:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$100(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/data/observeable/RxData;->isLifecycleState(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p0

    return p0
.end method

.method public static isLifecycleState(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyChangedInternal(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/RxData;->triggers:Lio/reactivex/subjects/Subject;

    new-instance v1, Lcom/android/camera/data/observeable/RxData$DataWrap;

    invoke-direct {v1, p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/RxData;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public notifyChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/RxData;->dataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/observeable/RxData;->data:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/camera/data/observeable/RxData;->notifyChangedInternal(Ljava/lang/Object;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public observable(Landroidx/lifecycle/LifecycleOwner;)Lcom/android/camera/data/observeable/RxData$DataObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            ")",
            "Lcom/android/camera/data/observeable/RxData$DataObservable<",
            "Lcom/android/camera/data/observeable/RxData$DataWrap<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/data/observeable/RxData$DataCheck;

    invoke-direct {v0, p1}, Lcom/android/camera/data/observeable/RxData$DataCheck;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/data/observeable/RxData;->triggers:Lio/reactivex/subjects/Subject;

    new-instance v1, Lcom/android/camera/data/observeable/RxData$DataWrap;

    iget-object v2, p0, Lcom/android/camera/data/observeable/RxData;->data:Ljava/lang/Object;

    invoke-direct {v1, v2}, Lcom/android/camera/data/observeable/RxData$DataWrap;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/data/observeable/RxData$DataCheck;->getPredicateCheck()Lio/reactivex/functions/Predicate;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 5
    invoke-static {v0}, Lcom/android/camera/data/observeable/RxData$DataObservable;->toFunction(Lcom/android/camera/data/observeable/RxData$DataCheck;)Lio/reactivex/functions/Function;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->to(Lio/reactivex/functions/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/RxData$DataObservable;

    return-object p1
.end method

.method public observableNullLife()Lcom/android/camera/data/observeable/RxData$DataObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/data/observeable/RxData$DataObservable<",
            "Lcom/android/camera/data/observeable/RxData$DataWrap<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/observeable/RxData;->observable(Landroidx/lifecycle/LifecycleOwner;)Lcom/android/camera/data/observeable/RxData$DataObservable;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/RxData;->dataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/data/observeable/RxData;->data:Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/data/observeable/RxData;->notifyChangedInternal(Ljava/lang/Object;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSilently(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/RxData;->dataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/data/observeable/RxData;->data:Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
