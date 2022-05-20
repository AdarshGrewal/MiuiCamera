.class public final synthetic Lcom/uber/rxdogtag/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/uber/rxdogtag/DogTagMaybeObserver;

.field private final synthetic OooO0O0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/uber/rxdogtag/DogTagMaybeObserver;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uber/rxdogtag/OooO0oO;->OooO00o:Lcom/uber/rxdogtag/DogTagMaybeObserver;

    iput-object p2, p0, Lcom/uber/rxdogtag/OooO0oO;->OooO0O0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/uber/rxdogtag/OooO0oO;->OooO00o:Lcom/uber/rxdogtag/DogTagMaybeObserver;

    iget-object v1, p0, Lcom/uber/rxdogtag/OooO0oO;->OooO0O0:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/uber/rxdogtag/DogTagMaybeObserver;->OooO00o(Ljava/lang/Object;)V

    return-void
.end method
