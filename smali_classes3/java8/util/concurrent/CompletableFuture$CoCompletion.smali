.class public final Ljava8/util/concurrent/CompletableFuture$CoCompletion;
.super Ljava8/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CoCompletion"
.end annotation


# instance fields
.field public base:Ljava8/util/concurrent/CompletableFuture$BiCompletion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava8/util/concurrent/CompletableFuture$Completion;-><init>()V

    iput-object p1, p0, Ljava8/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava8/util/concurrent/CompletableFuture$BiCompletion;

    return-void
.end method


# virtual methods
.method public final isLive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava8/util/concurrent/CompletableFuture$BiCompletion;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava8/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final tryFire(I)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava8/util/concurrent/CompletableFuture$BiCompletion;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava8/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava8/util/concurrent/CompletableFuture$BiCompletion;

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method
