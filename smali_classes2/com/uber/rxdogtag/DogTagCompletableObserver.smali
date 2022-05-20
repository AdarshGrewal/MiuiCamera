.class public final Lcom/uber/rxdogtag/DogTagCompletableObserver;
.super Ljava/lang/Object;
.source "DogTagCompletableObserver.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;
.implements Lio/reactivex/observers/LambdaConsumerIntrospection;


# instance fields
.field public final config:Lcom/uber/rxdogtag/RxDogTag$Configuration;

.field public final delegate:Lio/reactivex/CompletableObserver;

.field public final t:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/CompletableObserver;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->t:Ljava/lang/Throwable;

    .line 3
    iput-object p1, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->config:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    .line 4
    iput-object p2, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->delegate:Lio/reactivex/CompletableObserver;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->delegate:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Throwable;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->config:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->t:Ljava/lang/Throwable;

    const-string v2, "onComplete"

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->reportError(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO0O0(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->config:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->t:Ljava/lang/Throwable;

    const-string v2, "onError"

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->reportError(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO0OO(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->delegate:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic OooO0Oo(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->config:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->t:Ljava/lang/Throwable;

    const-string v2, "onSubscribe"

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->reportError(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public hasCustomOnError()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->delegate:Lio/reactivex/CompletableObserver;

    instance-of v1, v0, Lio/reactivex/observers/LambdaConsumerIntrospection;

    if-eqz v1, :cond_0

    check-cast v0, Lio/reactivex/observers/LambdaConsumerIntrospection;

    .line 2
    invoke-interface {v0}, Lio/reactivex/observers/LambdaConsumerIntrospection;->hasCustomOnError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->config:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-boolean v0, v0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->guardObserverCallbacks:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/uber/rxdogtag/OooO0O0;

    invoke-direct {v0, p0}, Lcom/uber/rxdogtag/OooO0O0;-><init>(Lcom/uber/rxdogtag/DogTagCompletableObserver;)V

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->delegate:Lio/reactivex/CompletableObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/uber/rxdogtag/Oooo00o;

    invoke-direct {v2, v1}, Lcom/uber/rxdogtag/Oooo00o;-><init>(Lio/reactivex/CompletableObserver;)V

    invoke-static {v0, v2}, Lcom/uber/rxdogtag/RxDogTag;->guardedDelegateCall(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->delegate:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->delegate:Lio/reactivex/CompletableObserver;

    instance-of v1, v0, Lcom/uber/rxdogtag/RxDogTagErrorReceiver;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    instance-of v1, v0, Lcom/uber/rxdogtag/RxDogTagTaggedExceptionReceiver;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->config:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v3, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->t:Ljava/lang/Throwable;

    invoke-static {v1, v3, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->createException(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)Lio/reactivex/exceptions/OnErrorNotImplementedException;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->config:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-boolean v1, v1, Lcom/uber/rxdogtag/RxDogTag$Configuration;->guardObserverCallbacks:Z

    if-eqz v1, :cond_1

    .line 5
    new-instance v0, Lcom/uber/rxdogtag/OooO0o0;

    invoke-direct {v0, p0}, Lcom/uber/rxdogtag/OooO0o0;-><init>(Lcom/uber/rxdogtag/DogTagCompletableObserver;)V

    new-instance v1, Lcom/uber/rxdogtag/OooO0Oo;

    invoke-direct {v1, p0, p1}, Lcom/uber/rxdogtag/OooO0Oo;-><init>(Lcom/uber/rxdogtag/DogTagCompletableObserver;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/RxDogTag;->guardedDelegateCall(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->config:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-object v1, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->t:Ljava/lang/Throwable;

    invoke-static {v0, v1, p1, v2}, Lcom/uber/rxdogtag/RxDogTag;->reportError(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->config:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    iget-boolean v0, v0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->guardObserverCallbacks:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/uber/rxdogtag/OooO0OO;

    invoke-direct {v0, p0}, Lcom/uber/rxdogtag/OooO0OO;-><init>(Lcom/uber/rxdogtag/DogTagCompletableObserver;)V

    new-instance v1, Lcom/uber/rxdogtag/OooO00o;

    invoke-direct {v1, p0, p1}, Lcom/uber/rxdogtag/OooO00o;-><init>(Lcom/uber/rxdogtag/DogTagCompletableObserver;Lio/reactivex/disposables/Disposable;)V

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/RxDogTag;->guardedDelegateCall(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/uber/rxdogtag/DogTagCompletableObserver;->delegate:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :goto_0
    return-void
.end method
