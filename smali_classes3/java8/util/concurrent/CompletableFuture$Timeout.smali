.class public final Ljava8/util/concurrent/CompletableFuture$Timeout;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Timeout"
.end annotation


# instance fields
.field public final f:Ljava8/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava8/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/concurrent/CompletableFuture$Timeout;->f:Ljava8/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$Timeout;->f:Ljava8/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava8/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$Timeout;->f:Ljava8/util/concurrent/CompletableFuture;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Ljava8/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method
