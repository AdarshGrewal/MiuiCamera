.class public final Lcom/uber/rxdogtag/RxDogTag;
.super Ljava/lang/Object;
.source "RxDogTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;,
        Lcom/uber/rxdogtag/RxDogTag$Configuration;,
        Lcom/uber/rxdogtag/RxDogTag$NonCheckingPredicate;,
        Lcom/uber/rxdogtag/RxDogTag$Configurer;,
        Lcom/uber/rxdogtag/RxDogTag$Builder;
    }
.end annotation


# static fields
.field public static final STACK_ELEMENT_SOURCE_DELEGATE:Ljava/lang/String; = "[[ Originating callback: %s ]]"

.field public static final STACK_ELEMENT_SOURCE_HEADER:Ljava/lang/String; = "[[ \u2191\u2191 Inferred subscribe point \u2191\u2191 ]]"

.field public static final STACK_ELEMENT_TRACE_HEADER:Ljava/lang/String; = "[[ \u2193\u2193 Original trace \u2193\u2193 ]]"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/InstantiationError;

    invoke-direct {v0}, Ljava/lang/InstantiationError;-><init>()V

    throw v0
.end method

.method public static synthetic OooO00o(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Completable;Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->observerHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/rxdogtag/ObserverHandler;

    .line 18
    invoke-interface {v1, p1, p2}, Lcom/uber/rxdogtag/ObserverHandler;->handle(Lio/reactivex/Completable;Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;

    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/uber/rxdogtag/RxDogTag;->shouldDecorate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    new-instance p1, Lcom/uber/rxdogtag/DogTagCompletableObserver;

    invoke-direct {p1, p0, p2}, Lcom/uber/rxdogtag/DogTagCompletableObserver;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/CompletableObserver;)V

    return-object p1

    :cond_1
    return-object p2
.end method

.method public static synthetic OooO00o(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Maybe;Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->observerHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/rxdogtag/ObserverHandler;

    .line 14
    invoke-interface {v1, p1, p2}, Lcom/uber/rxdogtag/ObserverHandler;->handle(Lio/reactivex/Maybe;Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;

    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/uber/rxdogtag/RxDogTag;->shouldDecorate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    new-instance p1, Lcom/uber/rxdogtag/DogTagMaybeObserver;

    invoke-direct {p1, p0, p2}, Lcom/uber/rxdogtag/DogTagMaybeObserver;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/MaybeObserver;)V

    return-object p1

    :cond_1
    return-object p2
.end method

.method public static synthetic OooO00o(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Observable;Lio/reactivex/Observer;)Lio/reactivex/Observer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->observerHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/rxdogtag/ObserverHandler;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/uber/rxdogtag/ObserverHandler;->handle(Lio/reactivex/Observable;Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/uber/rxdogtag/RxDogTag;->shouldDecorate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance p1, Lcom/uber/rxdogtag/DogTagObserver;

    invoke-direct {p1, p0, p2}, Lcom/uber/rxdogtag/DogTagObserver;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Observer;)V

    return-object p1

    :cond_1
    return-object p2
.end method

.method public static synthetic OooO00o(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Single;Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->observerHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/rxdogtag/ObserverHandler;

    .line 10
    invoke-interface {v1, p1, p2}, Lcom/uber/rxdogtag/ObserverHandler;->handle(Lio/reactivex/Single;Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/uber/rxdogtag/RxDogTag;->shouldDecorate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    new-instance p1, Lcom/uber/rxdogtag/DogTagSingleObserver;

    invoke-direct {p1, p0, p2}, Lcom/uber/rxdogtag/DogTagSingleObserver;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/SingleObserver;)V

    return-object p1

    :cond_1
    return-object p2
.end method

.method public static synthetic OooO00o(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Flowable;Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->observerHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/rxdogtag/ObserverHandler;

    .line 6
    invoke-interface {v1, p1, p2}, Lcom/uber/rxdogtag/ObserverHandler;->handle(Lio/reactivex/Flowable;Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/uber/rxdogtag/RxDogTag;->shouldDecorate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    new-instance p1, Lcom/uber/rxdogtag/DogTagSubscriber;

    invoke-direct {p1, p0, p2}, Lcom/uber/rxdogtag/DogTagSubscriber;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lorg/reactivestreams/Subscriber;)V

    return-object p1

    :cond_1
    return-object p2
.end method

.method public static synthetic OooO00o(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 22
    instance-of v0, p3, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {p1, p3}, Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p3, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "subscribeActual failed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {p0, p2, p3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/StackTraceElement;)Z
    .locals 1

    .line 28
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[[ \u2193\u2193 Original trace \u2193\u2193 ]]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/uber/rxdogtag/RxDogTag;->installWithBuilder(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V

    return-void
.end method

.method public static builder()Lcom/uber/rxdogtag/RxDogTag$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/uber/rxdogtag/RxDogTag$Builder;

    invoke-direct {v0}, Lcom/uber/rxdogtag/RxDogTag$Builder;-><init>()V

    return-object v0
.end method

.method public static containsAnyPackages(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static createException(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)Lio/reactivex/exceptions/OnErrorNotImplementedException;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->ignoredPackages:Ljava/util/Set;

    invoke-static {p1, v0}, Lcom/uber/rxdogtag/RxDogTag;->extractStackElementTag(Ljava/lang/Throwable;Ljava/util/Set;)Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 2
    iget-boolean v0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->repackageOnErrorNotImplementedExceptions:Z

    if-eqz v0, :cond_0

    instance-of v0, p2, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 4
    :cond_0
    instance-of v0, p2, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    check-cast p2, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    .line 6
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v3, p2

    move-object p2, v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 8
    :cond_2
    new-instance v3, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    invoke-direct {v3, v0, p2}, Lio/reactivex/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v0, v2, [Ljava/lang/StackTraceElement;

    .line 9
    invoke-virtual {v3, v0}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 10
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v4, 0x3

    if-eqz p3, :cond_3

    const/4 v5, 0x4

    goto :goto_1

    :cond_3
    move v5, v4

    .line 11
    :goto_1
    iget-boolean p0, p0, Lcom/uber/rxdogtag/RxDogTag$Configuration;->disableAnnotations:Z

    const/4 v6, 0x1

    if-eqz p0, :cond_4

    .line 12
    array-length p0, v0

    add-int/2addr p0, v6

    new-array p0, p0, [Ljava/lang/StackTraceElement;

    .line 13
    aput-object p1, p0, v2

    .line 14
    array-length p1, v0

    if-eqz p1, :cond_8

    .line 15
    array-length p1, v0

    invoke-static {v0, v2, p0, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 16
    :cond_4
    sget-object p0, Lcom/uber/rxdogtag/Oooo0o0;->OooO00o:Lcom/uber/rxdogtag/Oooo0o0;

    .line 17
    invoke-static {v0, p0}, Lcom/uber/rxdogtag/RxDogTag;->indexOfLast([Ljava/lang/Object;Lcom/uber/rxdogtag/RxDogTag$NonCheckingPredicate;)I

    move-result p0

    const/4 v7, -0x1

    if-eq p0, v7, :cond_5

    add-int/2addr p0, v6

    goto :goto_2

    :cond_5
    move p0, v2

    .line 18
    :goto_2
    array-length v7, v0

    add-int/2addr v7, v5

    sub-int/2addr v7, p0

    new-array v7, v7, [Ljava/lang/StackTraceElement;

    .line 19
    aput-object p1, v7, v2

    const/4 p1, 0x2

    .line 20
    new-instance v8, Ljava/lang/StackTraceElement;

    const-string v9, "[[ \u2191\u2191 Inferred subscribe point \u2191\u2191 ]]"

    invoke-direct {v8, v9, v1, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v8, v7, v6

    if-eqz p3, :cond_6

    .line 21
    new-instance v8, Ljava/lang/StackTraceElement;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p3, v6, v2

    const-string p3, "[[ Originating callback: %s ]]"

    .line 22
    invoke-static {v9, p3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v8, p3, v1, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v8, v7, p1

    goto :goto_3

    :cond_6
    move v4, p1

    .line 23
    :goto_3
    new-instance p1, Ljava/lang/StackTraceElement;

    const-string p3, "[[ \u2193\u2193 Original trace \u2193\u2193 ]]"

    invoke-direct {p1, p3, v1, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object p1, v7, v4

    .line 24
    array-length p1, v0

    if-eqz p1, :cond_7

    .line 25
    array-length p1, v0

    sub-int/2addr p1, p0

    invoke-static {v0, p0, v7, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    move-object p0, v7

    .line 26
    :cond_8
    :goto_4
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object v3
.end method

.method public static extractStackElementTag(Ljava/lang/Throwable;Ljava/util/Set;)Ljava/lang/StackTraceElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/uber/rxdogtag/RxDogTag;->containsAnyPackages(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/StackTraceElement;

    const-string p1, "unknown"

    const-string v0, "Unknown"

    invoke-direct {p0, v0, p1, p1, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method public static guardedDelegateCall(Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Lcom/uber/rxdogtag/Oooo0;

    invoke-direct {v2, v0, p0}, Lcom/uber/rxdogtag/Oooo0;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;)V

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lio/reactivex/exceptions/OnErrorNotImplementedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    invoke-interface {p0, p1}, Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 8
    invoke-interface {p0, p1}, Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    throw p0
.end method

.method public static indexOfLast([Ljava/lang/Object;Lcom/uber/rxdogtag/RxDogTag$NonCheckingPredicate;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lcom/uber/rxdogtag/RxDogTag$NonCheckingPredicate<",
            "TT;>;)I"
        }
    .end annotation

    .line 1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    aget-object v1, p0, v0

    invoke-interface {p1, v1}, Lcom/uber/rxdogtag/RxDogTag$NonCheckingPredicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static install()V
    .locals 1

    .line 1
    new-instance v0, Lcom/uber/rxdogtag/RxDogTag$Builder;

    invoke-direct {v0}, Lcom/uber/rxdogtag/RxDogTag$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/uber/rxdogtag/RxDogTag$Builder;->install()V

    return-void
.end method

.method public static declared-synchronized installWithBuilder(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V
    .locals 2

    const-class v0, Lcom/uber/rxdogtag/RxDogTag;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lcom/uber/rxdogtag/Oooo0oo;

    invoke-direct {v1, p0}, Lcom/uber/rxdogtag/Oooo0oo;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->setOnObservableSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 2
    new-instance v1, Lcom/uber/rxdogtag/Oooo0O0;

    invoke-direct {v1, p0}, Lcom/uber/rxdogtag/Oooo0O0;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->setOnFlowableSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 3
    new-instance v1, Lcom/uber/rxdogtag/Oooo0oO;

    invoke-direct {v1, p0}, Lcom/uber/rxdogtag/Oooo0oO;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->setOnSingleSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 4
    new-instance v1, Lcom/uber/rxdogtag/Oooo0OO;

    invoke-direct {v1, p0}, Lcom/uber/rxdogtag/Oooo0OO;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->setOnMaybeSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 5
    new-instance v1, Lcom/uber/rxdogtag/Oooo0o;

    invoke-direct {v1, p0}, Lcom/uber/rxdogtag/Oooo0o;-><init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->setOnCompletableSubscribe(Lio/reactivex/functions/BiFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static reportError(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/uber/rxdogtag/RxDogTag;->createException(Lcom/uber/rxdogtag/RxDogTag$Configuration;Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/lang/String;)Lio/reactivex/exceptions/OnErrorNotImplementedException;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static declared-synchronized reset()V
    .locals 2

    const-class v0, Lcom/uber/rxdogtag/RxDogTag;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->setOnFlowableSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 2
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->setOnObservableSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 3
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->setOnMaybeSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 4
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->setOnSingleSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 5
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->setOnCompletableSubscribe(Lio/reactivex/functions/BiFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static shouldDecorate(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/uber/rxdogtag/RxDogTagErrorReceiver;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p0, Lio/reactivex/observers/LambdaConsumerIntrospection;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lio/reactivex/observers/LambdaConsumerIntrospection;

    invoke-interface {p0}, Lio/reactivex/observers/LambdaConsumerIntrospection;->hasCustomOnError()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
