.class public final synthetic Lcom/uber/rxdogtag/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/uber/rxdogtag/DogTagCompletableObserver;

.field private final synthetic OooO0O0:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/uber/rxdogtag/DogTagCompletableObserver;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uber/rxdogtag/OooO0Oo;->OooO00o:Lcom/uber/rxdogtag/DogTagCompletableObserver;

    iput-object p2, p0, Lcom/uber/rxdogtag/OooO0Oo;->OooO0O0:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/uber/rxdogtag/OooO0Oo;->OooO00o:Lcom/uber/rxdogtag/DogTagCompletableObserver;

    iget-object v1, p0, Lcom/uber/rxdogtag/OooO0Oo;->OooO0O0:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/uber/rxdogtag/DogTagCompletableObserver;->OooO0OO(Ljava/lang/Throwable;)V

    return-void
.end method
