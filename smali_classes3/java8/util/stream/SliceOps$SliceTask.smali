.class public final Ljava8/util/stream/SliceOps$SliceTask;
.super Ljava8/util/stream/AbstractShortCircuitTask;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/SliceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SliceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/AbstractShortCircuitTask<",
        "TP_IN;TP_OUT;",
        "Ljava8/util/stream/Node<",
        "TP_OUT;>;",
        "Ljava8/util/stream/SliceOps$SliceTask<",
        "TP_IN;TP_OUT;>;>;"
    }
.end annotation


# instance fields
.field public volatile completed:Z

.field public final generator:Ljava8/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/IntFunction<",
            "[TP_OUT;>;"
        }
    .end annotation
.end field

.field public final op:Ljava8/util/stream/AbstractPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;"
        }
    .end annotation
.end field

.field public final targetOffset:J

.field public final targetSize:J

.field public thisNodeSize:J


# direct methods
.method public constructor <init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;",
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/function/IntFunction<",
            "[TP_OUT;>;JJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Ljava8/util/stream/AbstractShortCircuitTask;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V

    .line 2
    iput-object p1, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    .line 3
    iput-object p4, p0, Ljava8/util/stream/SliceOps$SliceTask;->generator:Ljava8/util/function/IntFunction;

    .line 4
    iput-wide p5, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetOffset:J

    .line 5
    iput-wide p7, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetSize:J

    return-void
.end method

.method public constructor <init>(Ljava8/util/stream/SliceOps$SliceTask;Ljava8/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/SliceOps$SliceTask<",
            "TP_IN;TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/AbstractShortCircuitTask;-><init>(Ljava8/util/stream/AbstractShortCircuitTask;Ljava8/util/Spliterator;)V

    .line 7
    iget-object p2, p1, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    iput-object p2, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    .line 8
    iget-object p2, p1, Ljava8/util/stream/SliceOps$SliceTask;->generator:Ljava8/util/function/IntFunction;

    iput-object p2, p0, Ljava8/util/stream/SliceOps$SliceTask;->generator:Ljava8/util/function/IntFunction;

    .line 9
    iget-wide v0, p1, Ljava8/util/stream/SliceOps$SliceTask;->targetOffset:J

    iput-wide v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetOffset:J

    .line 10
    iget-wide p1, p1, Ljava8/util/stream/SliceOps$SliceTask;->targetSize:J

    iput-wide p1, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetSize:J

    return-void
.end method

.method private completedSize(J)J
    .locals 4

    .line 1
    iget-boolean v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide p1, p0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide p1

    .line 3
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/SliceOps$SliceTask;

    .line 4
    iget-object v1, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v1, Ljava8/util/stream/SliceOps$SliceTask;

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-direct {v0, p1, p2}, Ljava8/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-ltz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {v1, p1, p2}, Ljava8/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide p1

    add-long/2addr v2, p1

    :goto_0
    return-wide v2

    .line 7
    :cond_3
    :goto_1
    iget-wide p1, p0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide p1
.end method

.method private doTruncate(Ljava8/util/stream/Node;)Ljava8/util/stream/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;)",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-interface {p1}, Ljava8/util/stream/Node;->count()J

    move-result-wide v0

    iget-wide v2, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v4, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    :goto_0
    move-wide v5, v0

    .line 2
    iget-wide v3, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-object v7, p0, Ljava8/util/stream/SliceOps$SliceTask;->generator:Ljava8/util/function/IntFunction;

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Ljava8/util/stream/Node;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p1

    return-object p1
.end method

.method private isLeftCompleted(J)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v0

    :goto_0
    cmp-long v2, v0, p1

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    return v3

    .line 2
    :cond_1
    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->getParent()Ljava8/util/stream/AbstractTask;

    move-result-object v2

    check-cast v2, Ljava8/util/stream/SliceOps$SliceTask;

    move-object v4, p0

    :goto_1
    if-eqz v2, :cond_3

    .line 3
    iget-object v5, v2, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    if-ne v4, v5, :cond_2

    .line 4
    iget-object v4, v2, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v4, Ljava8/util/stream/SliceOps$SliceTask;

    if-eqz v4, :cond_2

    .line 5
    invoke-direct {v4, p1, p2}, Ljava8/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v4

    add-long/2addr v0, v4

    cmp-long v4, v0, p1

    if-ltz v4, :cond_2

    return v3

    .line 6
    :cond_2
    invoke-virtual {v2}, Ljava8/util/stream/AbstractTask;->getParent()Ljava8/util/stream/AbstractTask;

    move-result-object v4

    check-cast v4, Ljava8/util/stream/SliceOps$SliceTask;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_1

    :cond_3
    cmp-long p1, v0, p1

    if-ltz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    return v3
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Ljava8/util/stream/AbstractShortCircuitTask;->cancel()V

    .line 2
    iget-boolean v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava8/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava8/util/stream/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/SliceOps$SliceTask;->doLeaf()Ljava8/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method public final doLeaf()Ljava8/util/stream/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->isRoot()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Ljava8/util/stream/StreamOpFlag;->SIZED:Ljava8/util/stream/StreamOpFlag;

    iget-object v3, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget v3, v3, Ljava8/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v0, v3}, Ljava8/util/stream/StreamOpFlag;->isPreserved(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget-object v1, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    .line 4
    invoke-virtual {v0, v1}, Ljava8/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v1

    .line 5
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget-object v3, p0, Ljava8/util/stream/SliceOps$SliceTask;->generator:Ljava8/util/function/IntFunction;

    invoke-virtual {v0, v1, v2, v3}, Ljava8/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v2}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava8/util/stream/AbstractPipeline;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v1

    .line 7
    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v2, v1}, Ljava8/util/stream/PipelineHelper;->wrapSink(Ljava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v1

    iget-object v3, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v2, v1, v3}, Ljava8/util/stream/PipelineHelper;->copyIntoWithCancel(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Z

    .line 8
    invoke-interface {v0}, Ljava8/util/stream/Node$Builder;->build()Ljava8/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    iget-object v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget-object v3, p0, Ljava8/util/stream/SliceOps$SliceTask;->generator:Ljava8/util/function/IntFunction;

    invoke-virtual {v0, v1, v2, v3}, Ljava8/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;

    move-result-object v0

    .line 10
    iget-wide v1, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetOffset:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 11
    iget-object v1, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v2}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava8/util/stream/AbstractPipeline;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v1

    .line 12
    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v2, v1}, Ljava8/util/stream/PipelineHelper;->wrapSink(Ljava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v1

    iget-object v3, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v2, v1, v3}, Ljava8/util/stream/PipelineHelper;->copyIntoWithCancel(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Z

    goto :goto_0

    .line 13
    :cond_2
    iget-object v1, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v1, v0, v2}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava8/util/stream/Node$Builder;->build()Ljava8/util/stream/Node;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava8/util/stream/Node;->count()J

    move-result-wide v1

    iput-wide v1, p0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Ljava8/util/stream/SliceOps$SliceTask;->completed:Z

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    return-object v0
.end method

.method public bridge synthetic getEmptyResult()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava8/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method public final getEmptyResult()Ljava8/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractPipeline;->getOutputShape()Ljava8/util/stream/StreamShape;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/stream/Nodes;->emptyNode(Ljava8/util/stream/StreamShape;)Ljava8/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/AbstractTask;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava8/util/stream/SliceOps$SliceTask;->makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/SliceOps$SliceTask;

    move-result-object p1

    return-object p1
.end method

.method public makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/SliceOps$SliceTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/stream/SliceOps$SliceTask<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava8/util/stream/SliceOps$SliceTask;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/SliceOps$SliceTask;-><init>(Ljava8/util/stream/SliceOps$SliceTask;Ljava8/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava8/util/concurrent/CountedCompleter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->isLeaf()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/SliceOps$SliceTask;

    iget-wide v3, v0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/SliceOps$SliceTask;

    iget-wide v5, v0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    .line 3
    iget-boolean v0, p0, Ljava8/util/stream/AbstractShortCircuitTask;->canceled:Z

    if-eqz v0, :cond_0

    .line 4
    iput-wide v1, p0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    .line 5
    invoke-virtual {p0}, Ljava8/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava8/util/stream/Node;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v3, p0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Ljava8/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava8/util/stream/Node;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/SliceOps$SliceTask;

    iget-wide v3, v0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/SliceOps$SliceTask;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Node;

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractPipeline;->getOutputShape()Ljava8/util/stream/StreamShape;

    move-result-object v0

    iget-object v3, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v3, Ljava8/util/stream/SliceOps$SliceTask;

    .line 11
    invoke-virtual {v3}, Ljava8/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava8/util/stream/Node;

    iget-object v4, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v4, Ljava8/util/stream/SliceOps$SliceTask;

    invoke-virtual {v4}, Ljava8/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava8/util/stream/Node;

    .line 12
    invoke-static {v0, v3, v4}, Ljava8/util/stream/Nodes;->conc(Ljava8/util/stream/StreamShape;Ljava8/util/stream/Node;Ljava8/util/stream/Node;)Ljava8/util/stream/Node;

    move-result-object v0

    .line 13
    :goto_0
    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Ljava8/util/stream/SliceOps$SliceTask;->doTruncate(Ljava8/util/stream/Node;)Ljava8/util/stream/Node;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->completed:Z

    .line 15
    :cond_4
    iget-wide v3, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetSize:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_5

    .line 16
    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->isRoot()Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v2, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v0, v2

    .line 17
    invoke-direct {p0, v0, v1}, Ljava8/util/stream/SliceOps$SliceTask;->isLeftCompleted(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {p0}, Ljava8/util/stream/AbstractShortCircuitTask;->cancelLaterNodes()V

    .line 19
    :cond_5
    invoke-super {p0, p1}, Ljava8/util/stream/AbstractTask;->onCompletion(Ljava8/util/concurrent/CountedCompleter;)V

    return-void
.end method
