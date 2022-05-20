.class public final Ljava8/util/stream/WhileOps$TakeWhileTask;
.super Ljava8/util/stream/AbstractShortCircuitTask;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/WhileOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TakeWhileTask"
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
        "Ljava8/util/stream/WhileOps$TakeWhileTask<",
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

.field public final isOrdered:Z

.field public final op:Ljava8/util/stream/AbstractPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;"
        }
    .end annotation
.end field

.field public shortCircuited:Z

.field public thisNodeSize:J


# direct methods
.method public constructor <init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)V
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
            "[TP_OUT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Ljava8/util/stream/AbstractShortCircuitTask;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V

    .line 2
    iput-object p1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    .line 3
    iput-object p4, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->generator:Ljava8/util/function/IntFunction;

    .line 4
    sget-object p1, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p2}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result p1

    iput-boolean p1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    return-void
.end method

.method public constructor <init>(Ljava8/util/stream/WhileOps$TakeWhileTask;Ljava8/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/WhileOps$TakeWhileTask<",
            "TP_IN;TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/AbstractShortCircuitTask;-><init>(Ljava8/util/stream/AbstractShortCircuitTask;Ljava8/util/Spliterator;)V

    .line 6
    iget-object p2, p1, Ljava8/util/stream/WhileOps$TakeWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    iput-object p2, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    .line 7
    iget-object p2, p1, Ljava8/util/stream/WhileOps$TakeWhileTask;->generator:Ljava8/util/function/IntFunction;

    iput-object p2, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->generator:Ljava8/util/function/IntFunction;

    .line 8
    iget-boolean p1, p1, Ljava8/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    iput-boolean p1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Ljava8/util/stream/AbstractShortCircuitTask;->cancel()V

    .line 2
    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->completed:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->getEmptyResult()Ljava8/util/stream/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->doLeaf()Ljava8/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method public final doLeaf()Ljava8/util/stream/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    iget-object v1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->generator:Ljava8/util/function/IntFunction;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava8/util/stream/PipelineHelper;->makeNodeBuilder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v2}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava8/util/stream/AbstractPipeline;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v1

    .line 4
    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v2, v1}, Ljava8/util/stream/PipelineHelper;->wrapSink(Ljava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v1

    iget-object v3, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v2, v1, v3}, Ljava8/util/stream/PipelineHelper;->copyIntoWithCancel(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Z

    move-result v1

    iput-boolean v1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava8/util/stream/AbstractShortCircuitTask;->cancelLaterNodes()V

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava8/util/stream/Node$Builder;->build()Ljava8/util/stream/Node;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava8/util/stream/Node;->count()J

    move-result-wide v1

    iput-wide v1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    return-object v0
.end method

.method public bridge synthetic getEmptyResult()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->getEmptyResult()Ljava8/util/stream/Node;

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
    iget-object v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractPipeline;->getOutputShape()Ljava8/util/stream/StreamShape;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/stream/Nodes;->emptyNode(Ljava8/util/stream/StreamShape;)Ljava8/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/AbstractTask;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava8/util/stream/WhileOps$TakeWhileTask;->makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/WhileOps$TakeWhileTask;

    move-result-object p1

    return-object p1
.end method

.method public makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/WhileOps$TakeWhileTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/stream/WhileOps$TakeWhileTask<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/WhileOps$TakeWhileTask;-><init>(Ljava8/util/stream/WhileOps$TakeWhileTask;Ljava8/util/Spliterator;)V

    return-object v0
.end method

.method public merge()Ljava8/util/stream/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    move-object v1, v0

    check-cast v1, Ljava8/util/stream/WhileOps$TakeWhileTask;

    iget-wide v1, v1, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2
    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Node;

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v1, Ljava8/util/stream/WhileOps$TakeWhileTask;

    iget-wide v1, v1, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 4
    check-cast v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Node;

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractPipeline;->getOutputShape()Ljava8/util/stream/StreamShape;

    move-result-object v0

    iget-object v1, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v1, Ljava8/util/stream/WhileOps$TakeWhileTask;

    .line 6
    invoke-virtual {v1}, Ljava8/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava8/util/stream/Node;

    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v2, Ljava8/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v2}, Ljava8/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava8/util/stream/Node;

    .line 7
    invoke-static {v0, v1, v2}, Ljava8/util/stream/Nodes;->conc(Ljava8/util/stream/StreamShape;Ljava8/util/stream/Node;Ljava8/util/stream/Node;)Ljava8/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method public final onCompletion(Ljava8/util/concurrent/CountedCompleter;)V
    .locals 4
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

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    iget-boolean v0, v0, Ljava8/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    iget-object v1, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v1, Ljava8/util/stream/WhileOps$TakeWhileTask;

    iget-boolean v1, v1, Ljava8/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    .line 3
    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava8/util/stream/AbstractShortCircuitTask;->canceled:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    .line 5
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->getEmptyResult()Ljava8/util/stream/Node;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    move-object v1, v0

    check-cast v1, Ljava8/util/stream/WhileOps$TakeWhileTask;

    iget-boolean v1, v1, Ljava8/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    if-eqz v1, :cond_1

    .line 7
    move-object v1, v0

    check-cast v1, Ljava8/util/stream/WhileOps$TakeWhileTask;

    iget-wide v1, v1, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    iput-wide v1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    .line 8
    check-cast v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Node;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v2, Ljava8/util/stream/WhileOps$TakeWhileTask;

    iget-wide v2, v2, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    .line 10
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->merge()Ljava8/util/stream/Node;

    move-result-object v0

    .line 11
    :goto_0
    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->completed:Z

    .line 13
    invoke-super {p0, p1}, Ljava8/util/stream/AbstractTask;->onCompletion(Ljava8/util/concurrent/CountedCompleter;)V

    return-void
.end method
