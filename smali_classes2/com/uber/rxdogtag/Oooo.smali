.class public final synthetic Lcom/uber/rxdogtag/Oooo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lio/reactivex/Observer;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/Observer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uber/rxdogtag/Oooo;->OooO00o:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uber/rxdogtag/Oooo;->OooO00o:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method
