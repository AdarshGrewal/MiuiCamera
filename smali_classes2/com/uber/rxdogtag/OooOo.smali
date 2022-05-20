.class public final synthetic Lcom/uber/rxdogtag/OooOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;


# instance fields
.field private final synthetic OooO00o:Lcom/uber/rxdogtag/DogTagSingleObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/uber/rxdogtag/DogTagSingleObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uber/rxdogtag/OooOo;->OooO00o:Lcom/uber/rxdogtag/DogTagSingleObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/uber/rxdogtag/OooOo;->OooO00o:Lcom/uber/rxdogtag/DogTagSingleObserver;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/uber/rxdogtag/DogTagSingleObserver;->OooO00o(Ljava/lang/Throwable;)V

    return-void
.end method
