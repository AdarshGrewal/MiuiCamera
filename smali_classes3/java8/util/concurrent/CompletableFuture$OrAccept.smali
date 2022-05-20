.class public final Ljava8/util/concurrent/CompletableFuture$OrAccept;
.super Ljava8/util/concurrent/CompletableFuture$BiCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OrAccept"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:TT;>",
        "Ljava8/util/concurrent/CompletableFuture$BiCompletion<",
        "TT;TU;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public fn:Ljava8/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ljava8/util/concurrent/CompletableFuture$BiCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V

    iput-object p5, p0, Ljava8/util/concurrent/CompletableFuture$OrAccept;->fn:Ljava8/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final tryFire(I)Ljava8/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava8/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v2, p0, Ljava8/util/concurrent/CompletableFuture$BiCompletion;->snd:Ljava8/util/concurrent/CompletableFuture;

    if-eqz v2, :cond_6

    iget-object v3, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v3, :cond_0

    iget-object v3, v2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v3, :cond_6

    :cond_0
    iget-object v4, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava8/util/concurrent/CompletableFuture;

    if-eqz v4, :cond_6

    iget-object v5, p0, Ljava8/util/concurrent/CompletableFuture$OrAccept;->fn:Ljava8/util/function/Consumer;

    if-nez v5, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-object v6, v4, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v6, :cond_5

    if-gtz p1, :cond_2

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->claim()Z

    move-result v6

    if-nez v6, :cond_2

    return-object v1

    .line 4
    :cond_2
    instance-of v6, v3, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v6, :cond_4

    .line 5
    move-object v6, v3

    check-cast v6, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v6, v6, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v6, :cond_3

    .line 6
    invoke-virtual {v4, v6, v3}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v3, v1

    .line 7
    :cond_4
    invoke-interface {v5, v3}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v4}, Ljava8/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 9
    invoke-virtual {v4, v3}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 10
    :cond_5
    :goto_0
    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava8/util/concurrent/CompletableFuture;

    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$BiCompletion;->snd:Ljava8/util/concurrent/CompletableFuture;

    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava8/util/concurrent/CompletableFuture;

    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$OrAccept;->fn:Ljava8/util/function/Consumer;

    .line 11
    invoke-virtual {v4, v0, v2, p1}, Ljava8/util/concurrent/CompletableFuture;->postFire(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;I)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    return-object v1
.end method
