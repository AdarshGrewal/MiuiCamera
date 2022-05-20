.class public final synthetic Lcom/uber/rxdogtag/OooOoo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/uber/rxdogtag/DogTagSubscriber;

.field private final synthetic OooO0O0:Lorg/reactivestreams/Subscription;


# direct methods
.method public synthetic constructor <init>(Lcom/uber/rxdogtag/DogTagSubscriber;Lorg/reactivestreams/Subscription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uber/rxdogtag/OooOoo0;->OooO00o:Lcom/uber/rxdogtag/DogTagSubscriber;

    iput-object p2, p0, Lcom/uber/rxdogtag/OooOoo0;->OooO0O0:Lorg/reactivestreams/Subscription;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/uber/rxdogtag/OooOoo0;->OooO00o:Lcom/uber/rxdogtag/DogTagSubscriber;

    iget-object v1, p0, Lcom/uber/rxdogtag/OooOoo0;->OooO0O0:Lorg/reactivestreams/Subscription;

    invoke-virtual {v0, v1}, Lcom/uber/rxdogtag/DogTagSubscriber;->OooO00o(Lorg/reactivestreams/Subscription;)V

    return-void
.end method
