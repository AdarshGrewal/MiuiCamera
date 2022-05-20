.class public final Ljava8/util/concurrent/CompletableFuture$AsyncSupply;
.super Ljava8/util/concurrent/ForkJoinTask;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava8/util/concurrent/CompletableFuture$AsynchronousCompletionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AsyncSupply"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/concurrent/ForkJoinTask<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava8/util/concurrent/CompletableFuture$AsynchronousCompletionTask;"
    }
.end annotation


# instance fields
.field public dep:Ljava8/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation
.end field

.field public fn:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava8/util/function/Supplier<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava8/util/concurrent/ForkJoinTask;-><init>()V

    .line 2
    iput-object p1, p0, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;->dep:Ljava8/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava8/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;->run()V

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;->dep:Ljava8/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava8/util/function/Supplier;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 2
    iput-object v2, p0, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;->dep:Ljava8/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava8/util/function/Supplier;

    .line 3
    iget-object v2, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava8/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    invoke-virtual {v0, v1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    :cond_1
    return-void
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
