.class public abstract Ljava8/util/concurrent/CompletableFuture$UniCompletion;
.super Ljava8/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UniCompletion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/concurrent/CompletableFuture$Completion;"
    }
.end annotation


# instance fields
.field public dep:Ljava8/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation
.end field

.field public executor:Ljava/util/concurrent/Executor;

.field public src:Ljava8/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava8/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 2
    iput-object p1, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava8/util/concurrent/CompletableFuture;

    iput-object p3, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava8/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final claim()Z
    .locals 4

    .line 1
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->executor:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v2, v1}, Ljava8/util/concurrent/ForkJoinTask;->compareAndSetForkJoinTaskTag(SS)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->executor:Ljava/util/concurrent/Executor;

    .line 4
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return v2
.end method

.method public final isLive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava8/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
