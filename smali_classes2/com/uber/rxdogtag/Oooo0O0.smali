.class public final synthetic Lcom/uber/rxdogtag/Oooo0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# instance fields
.field private final synthetic OooO00o:Lcom/uber/rxdogtag/RxDogTag$Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/uber/rxdogtag/RxDogTag$Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uber/rxdogtag/Oooo0O0;->OooO00o:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uber/rxdogtag/Oooo0O0;->OooO00o:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    check-cast p1, Lio/reactivex/Flowable;

    check-cast p2, Lorg/reactivestreams/Subscriber;

    invoke-static {v0, p1, p2}, Lcom/uber/rxdogtag/RxDogTag;->OooO00o(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Flowable;Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p1

    return-object p1
.end method
