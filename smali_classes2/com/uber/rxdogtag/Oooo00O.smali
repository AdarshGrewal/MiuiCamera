.class public final synthetic Lcom/uber/rxdogtag/Oooo00O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lorg/reactivestreams/Subscriber;


# direct methods
.method public synthetic constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uber/rxdogtag/Oooo00O;->OooO00o:Lorg/reactivestreams/Subscriber;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uber/rxdogtag/Oooo00O;->OooO00o:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method
