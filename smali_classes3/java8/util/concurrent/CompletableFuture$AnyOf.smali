.class public Ljava8/util/concurrent/CompletableFuture$AnyOf;
.super Ljava8/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnyOf"
.end annotation


# instance fields
.field public dep:Ljava8/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public src:Ljava8/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public srcs:[Ljava8/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;[Ljava8/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;[",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava8/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 2
    iput-object p1, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->dep:Ljava8/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->src:Ljava8/util/concurrent/CompletableFuture;

    iput-object p3, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->srcs:[Ljava8/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final isLive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->dep:Ljava8/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final tryFire(I)Ljava8/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->src:Ljava8/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v3, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->dep:Ljava8/util/concurrent/CompletableFuture;

    if-eqz v3, :cond_4

    iget-object v4, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->srcs:[Ljava8/util/concurrent/CompletableFuture;

    if-nez v4, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->src:Ljava8/util/concurrent/CompletableFuture;

    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->dep:Ljava8/util/concurrent/CompletableFuture;

    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->srcs:[Ljava8/util/concurrent/CompletableFuture;

    .line 3
    invoke-virtual {v3, v2}, Ljava8/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4
    array-length v2, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v6, v4, v5

    if-eq v6, v0, :cond_1

    .line 5
    invoke-virtual {v6}, Ljava8/util/concurrent/CompletableFuture;->cleanStack()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    return-object v3

    .line 6
    :cond_3
    invoke-virtual {v3}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    :cond_4
    :goto_1
    return-object v1
.end method
