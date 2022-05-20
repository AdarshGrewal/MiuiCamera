.class public final synthetic Lcom/uber/rxdogtag/OooOo0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/uber/rxdogtag/DogTagSingleObserver;

.field private final synthetic OooO0O0:Lio/reactivex/disposables/Disposable;


# direct methods
.method public synthetic constructor <init>(Lcom/uber/rxdogtag/DogTagSingleObserver;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uber/rxdogtag/OooOo0O;->OooO00o:Lcom/uber/rxdogtag/DogTagSingleObserver;

    iput-object p2, p0, Lcom/uber/rxdogtag/OooOo0O;->OooO0O0:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/uber/rxdogtag/OooOo0O;->OooO00o:Lcom/uber/rxdogtag/DogTagSingleObserver;

    iget-object v1, p0, Lcom/uber/rxdogtag/OooOo0O;->OooO0O0:Lio/reactivex/disposables/Disposable;

    invoke-virtual {v0, v1}, Lcom/uber/rxdogtag/DogTagSingleObserver;->OooO00o(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
