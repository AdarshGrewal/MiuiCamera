.class public final Ljava8/util/stream/ForEachOps$ForEachOrderedTask;
.super Ljava8/util/concurrent/CountedCompleter;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/ForEachOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForEachOrderedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Ljava8/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/Sink<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final completionMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava8/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;",
            "Ljava8/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;>;"
        }
    .end annotation
.end field

.field public final helper:Ljava8/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final leftPredecessor:Ljava8/util/stream/ForEachOps$ForEachOrderedTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;"
        }
    .end annotation
.end field

.field public node:Ljava8/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field public spliterator:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/Spliterator<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final targetSize:J


# direct methods
.method public constructor <init>(Ljava8/util/stream/ForEachOps$ForEachOrderedTask;Ljava8/util/Spliterator;Ljava8/util/stream/ForEachOps$ForEachOrderedTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;",
            "Ljava8/util/Spliterator<",
            "TS;>;",
            "Ljava8/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    .line 10
    iget-object v0, p1, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava8/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava8/util/stream/PipelineHelper;

    .line 11
    iput-object p2, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava8/util/Spliterator;

    .line 12
    iget-wide v0, p1, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    iput-wide v0, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    .line 13
    iget-object p2, p1, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentMap;

    iput-object p2, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentMap;

    .line 14
    iget-object p1, p1, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava8/util/stream/Sink;

    iput-object p1, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava8/util/stream/Sink;

    .line 15
    iput-object p3, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava8/util/stream/ForEachOps$ForEachOrderedTask;

    return-void
.end method

.method public constructor <init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/stream/Sink;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TS;>;",
            "Ljava8/util/stream/Sink<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    .line 2
    iput-object p1, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava8/util/stream/PipelineHelper;

    .line 3
    iput-object p2, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava8/util/Spliterator;

    .line 4
    invoke-interface {p2}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava8/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide p1

    iput-wide p1, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    .line 5
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava8/util/stream/AbstractTask;->getLeafTarget()I

    move-result p2

    shl-int/lit8 p2, p2, 0x1

    const/16 v1, 0x10

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {p1, p2, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p1, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    iput-object p3, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava8/util/stream/Sink;

    .line 8
    iput-object v0, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava8/util/stream/ForEachOps$ForEachOrderedTask;

    return-void
.end method

.method public static doCompute(Ljava8/util/stream/ForEachOps$ForEachOrderedTask;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/ForEachOps$ForEachOrderedTask<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava8/util/Spliterator;

    .line 2
    iget-wide v1, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-lez v4, :cond_3

    .line 4
    invoke-interface {v0}, Ljava8/util/Spliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 5
    new-instance v5, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;

    iget-object v6, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava8/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v5, p0, v4, v6}, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljava8/util/stream/ForEachOps$ForEachOrderedTask;Ljava8/util/Spliterator;Ljava8/util/stream/ForEachOps$ForEachOrderedTask;)V

    .line 6
    new-instance v6, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v6, p0, v0, v5}, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljava8/util/stream/ForEachOps$ForEachOrderedTask;Ljava8/util/Spliterator;Ljava8/util/stream/ForEachOps$ForEachOrderedTask;)V

    const/4 v7, 0x1

    .line 7
    invoke-virtual {p0, v7}, Ljava8/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 8
    invoke-virtual {v6, v7}, Ljava8/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 9
    iget-object v8, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v5, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v8, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava8/util/stream/ForEachOps$ForEachOrderedTask;

    if-eqz v8, :cond_1

    .line 11
    invoke-virtual {v5, v7}, Ljava8/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 12
    iget-object v7, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v8, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljava8/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-interface {v7, v8, p0, v5}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_0

    .line 13
    invoke-virtual {p0, v8}, Ljava8/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v5, v8}, Ljava8/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    move-object v0, v4

    move-object p0, v5

    move-object v5, v6

    goto :goto_2

    :cond_2
    move-object p0, v6

    :goto_2
    xor-int/lit8 v3, v3, 0x1

    .line 15
    invoke-virtual {v5}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0}, Ljava8/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 17
    invoke-static {}, Ljava8/util/stream/ForEachOps$ForEachOrderedTask$$Lambda$1;->lambdaFactory$()Ljava8/util/function/IntFunction;

    move-result-object v1

    .line 18
    iget-object v2, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava8/util/stream/PipelineHelper;

    .line 19
    invoke-virtual {v2, v0}, Ljava8/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v3

    .line 20
    invoke-virtual {v2, v3, v4, v1}, Ljava8/util/stream/PipelineHelper;->makeNodeBuilder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;

    move-result-object v1

    .line 21
    iget-object v2, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v2, v1, v0}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Node$Builder;

    invoke-interface {v0}, Ljava8/util/stream/Node$Builder;->build()Ljava8/util/stream/Node;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava8/util/stream/Node;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava8/util/Spliterator;

    .line 23
    :cond_4
    invoke-virtual {p0}, Ljava8/util/concurrent/CountedCompleter;->tryComplete()V

    return-void
.end method

.method public static synthetic lambda$doCompute$80(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final compute()V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->doCompute(Ljava8/util/stream/ForEachOps$ForEachOrderedTask;)V

    return-void
.end method

.method public onCompletion(Ljava8/util/concurrent/CountedCompleter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava8/util/stream/Node;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava8/util/stream/Sink;

    invoke-interface {p1, v1}, Ljava8/util/stream/Node;->forEach(Ljava8/util/function/Consumer;)V

    .line 3
    iput-object v0, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljava8/util/stream/Node;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava8/util/Spliterator;

    if-eqz p1, :cond_1

    .line 5
    iget-object v1, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljava8/util/stream/PipelineHelper;

    iget-object v2, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljava8/util/stream/Sink;

    invoke-virtual {v1, v2, p1}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    .line 6
    iput-object v0, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljava8/util/Spliterator;

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/ForEachOps$ForEachOrderedTask;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava8/util/concurrent/CountedCompleter;->tryComplete()V

    :cond_2
    return-void
.end method
