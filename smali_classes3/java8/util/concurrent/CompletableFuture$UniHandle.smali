.class public final Ljava8/util/concurrent/CompletableFuture$UniHandle;
.super Ljava8/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UniHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/concurrent/CompletableFuture$UniCompletion<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field public fn:Ljava8/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava8/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V

    iput-object p4, p0, Ljava8/util/concurrent/CompletableFuture$UniHandle;->fn:Ljava8/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final tryFire(I)Ljava8/util/concurrent/CompletableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava8/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v3, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava8/util/concurrent/CompletableFuture;

    if-eqz v3, :cond_2

    iget-object v4, p0, Ljava8/util/concurrent/CompletableFuture$UniHandle;->fn:Ljava8/util/function/BiFunction;

    if-eqz v4, :cond_2

    if-lez p1, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p0

    .line 2
    :goto_0
    invoke-virtual {v3, v2, v4, v5}, Ljava8/util/concurrent/CompletableFuture;->uniHandle(Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/concurrent/CompletableFuture$UniHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava8/util/concurrent/CompletableFuture;

    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava8/util/concurrent/CompletableFuture;

    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$UniHandle;->fn:Ljava8/util/function/BiFunction;

    .line 4
    invoke-virtual {v3, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->postFire(Ljava8/util/concurrent/CompletableFuture;I)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    return-object v1
.end method
