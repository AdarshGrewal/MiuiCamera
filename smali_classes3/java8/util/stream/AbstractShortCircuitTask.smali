.class public abstract Ljava8/util/stream/AbstractShortCircuitTask;
.super Ljava8/util/stream/AbstractTask;
.source "AbstractShortCircuitTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava8/util/stream/AbstractShortCircuitTask<",
        "TP_IN;TP_OUT;TR;TK;>;>",
        "Ljava8/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;TR;TK;>;"
    }
.end annotation


# instance fields
.field public volatile canceled:Z

.field public final sharedResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava8/util/stream/AbstractShortCircuitTask;Ljava8/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/AbstractTask;-><init>(Ljava8/util/stream/AbstractTask;Ljava8/util/Spliterator;)V

    .line 4
    iget-object p1, p1, Ljava8/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Ljava8/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/AbstractTask;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ljava8/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ljava8/util/stream/AbstractShortCircuitTask;->canceled:Z

    return-void
.end method

.method public cancelLaterNodes()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->getParent()Ljava8/util/stream/AbstractTask;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/AbstractShortCircuitTask;

    move-object v1, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v2, v0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    if-ne v2, v1, :cond_0

    .line 3
    iget-object v1, v0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v1, Ljava8/util/stream/AbstractShortCircuitTask;

    .line 4
    iget-boolean v2, v1, Ljava8/util/stream/AbstractShortCircuitTask;->canceled:Z

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava8/util/stream/AbstractShortCircuitTask;->cancel()V

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava8/util/stream/AbstractTask;->getParent()Ljava8/util/stream/AbstractTask;

    move-result-object v1

    check-cast v1, Ljava8/util/stream/AbstractShortCircuitTask;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public compute()V
    .locals 10

    .line 1
    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    .line 2
    invoke-interface {v0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 3
    invoke-virtual {p0, v1, v2}, Ljava8/util/stream/AbstractTask;->getTargetSize(J)J

    move-result-wide v3

    .line 4
    iget-object v5, p0, Ljava8/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    move-object v7, p0

    .line 5
    :goto_0
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    .line 6
    invoke-virtual {v7}, Ljava8/util/stream/AbstractShortCircuitTask;->taskCanceled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 7
    invoke-virtual {v7}, Ljava8/util/stream/AbstractShortCircuitTask;->getEmptyResult()Ljava/lang/Object;

    move-result-object v8

    goto :goto_3

    :cond_0
    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 8
    invoke-interface {v0}, Ljava8/util/Spliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {v7, v1}, Ljava8/util/stream/AbstractTask;->makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/AbstractTask;

    move-result-object v2

    check-cast v2, Ljava8/util/stream/AbstractShortCircuitTask;

    iput-object v2, v7, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    .line 10
    invoke-virtual {v7, v0}, Ljava8/util/stream/AbstractTask;->makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/AbstractTask;

    move-result-object v8

    check-cast v8, Ljava8/util/stream/AbstractShortCircuitTask;

    iput-object v8, v7, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    const/4 v9, 0x1

    .line 11
    invoke-virtual {v7, v9}, Ljava8/util/concurrent/CountedCompleter;->setPendingCount(I)V

    if-eqz v6, :cond_2

    move-object v0, v1

    move-object v7, v2

    move-object v2, v8

    goto :goto_1

    :cond_2
    move-object v7, v8

    :goto_1
    xor-int/lit8 v6, v6, 0x1

    .line 12
    invoke-virtual {v2}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    .line 13
    invoke-interface {v0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v1

    goto :goto_0

    .line 14
    :cond_3
    :goto_2
    invoke-virtual {v7}, Ljava8/util/stream/AbstractTask;->doLeaf()Ljava/lang/Object;

    move-result-object v8

    .line 15
    :cond_4
    :goto_3
    invoke-virtual {v7, v8}, Ljava8/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v7}, Ljava8/util/concurrent/CountedCompleter;->tryComplete()V

    return-void
.end method

.method public abstract getEmptyResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public getLocalResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ljava8/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava8/util/stream/AbstractShortCircuitTask;->getEmptyResult()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0

    .line 4
    :cond_1
    invoke-super {p0}, Ljava8/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setLocalResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Ljava8/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljava8/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public shortCircuit(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Ljava8/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public taskCanceled()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ljava8/util/stream/AbstractShortCircuitTask;->canceled:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->getParent()Ljava8/util/stream/AbstractTask;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava8/util/stream/AbstractShortCircuitTask;

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v0, v1, Ljava8/util/stream/AbstractShortCircuitTask;->canceled:Z

    .line 4
    invoke-virtual {v1}, Ljava8/util/stream/AbstractTask;->getParent()Ljava8/util/stream/AbstractTask;

    move-result-object v1

    goto :goto_0

    :cond_0
    return v0
.end method
