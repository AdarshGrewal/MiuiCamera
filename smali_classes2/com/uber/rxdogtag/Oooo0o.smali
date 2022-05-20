.class public final synthetic Lcom/uber/rxdogtag/Oooo0o;
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

    iput-object p1, p0, Lcom/uber/rxdogtag/Oooo0o;->OooO00o:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uber/rxdogtag/Oooo0o;->OooO00o:Lcom/uber/rxdogtag/RxDogTag$Configuration;

    check-cast p1, Lio/reactivex/Completable;

    check-cast p2, Lio/reactivex/CompletableObserver;

    invoke-static {v0, p1, p2}, Lcom/uber/rxdogtag/RxDogTag;->OooO00o(Lcom/uber/rxdogtag/RxDogTag$Configuration;Lio/reactivex/Completable;Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;

    move-result-object p1

    return-object p1
.end method
