.class public Ljava8/util/stream/WhileOps$4Op;
.super Ljava8/util/stream/DoublePipeline$StatefulOp;
.source "WhileOps.java"

# interfaces
.implements Ljava8/util/stream/WhileOps$DropWhileOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/WhileOps;->makeDropWhileDouble(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/DoublePredicate;)Ljava8/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Op"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/DoublePipeline$StatefulOp<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava8/util/stream/WhileOps$DropWhileOp<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$predicate:Ljava8/util/function/DoublePredicate;


# direct methods
.method public constructor <init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/DoublePredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Double;",
            "*>;",
            "Ljava8/util/stream/StreamShape;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p4, p0, Ljava8/util/stream/WhileOps$4Op;->val$predicate:Ljava8/util/function/DoublePredicate;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/DoublePipeline$StatefulOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/stream/Node<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava8/util/stream/WhileOps$DropWhileTask;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava8/util/stream/WhileOps$DropWhileTask;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)V

    .line 2
    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/Node;

    return-object p1
.end method

.method public opEvaluateParallelLazy(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ljava8/util/stream/WhileOps;->DOUBLE_ARR_GEN:Ljava8/util/function/IntFunction;

    invoke-virtual {p0, p1, p2, v0}, Ljava8/util/stream/WhileOps$4Op;->opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava8/util/stream/Node;->spliterator()Ljava8/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;

    .line 5
    invoke-virtual {p1, p2}, Ljava8/util/stream/PipelineHelper;->wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object p1

    check-cast p1, Ljava8/util/Spliterator$OfDouble;

    const/4 p2, 0x0

    iget-object v1, p0, Ljava8/util/stream/WhileOps$4Op;->val$predicate:Ljava8/util/function/DoublePredicate;

    invoke-direct {v0, p1, p2, v1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;-><init>(Ljava8/util/Spliterator$OfDouble;ZLjava8/util/function/DoublePredicate;)V

    return-object v0
.end method

.method public opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p2, p1}, Ljava8/util/stream/WhileOps$4Op;->opWrapSink(Ljava8/util/stream/Sink;Z)Ljava8/util/stream/WhileOps$DropWhileSink;

    move-result-object p1

    return-object p1
.end method

.method public opWrapSink(Ljava8/util/stream/Sink;Z)Ljava8/util/stream/WhileOps$DropWhileSink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;Z)",
            "Ljava8/util/stream/WhileOps$DropWhileSink<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava8/util/stream/WhileOps$4Op$1OpSink;

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/stream/WhileOps$4Op$1OpSink;-><init>(Ljava8/util/stream/WhileOps$4Op;Ljava8/util/stream/Sink;Z)V

    return-object v0
.end method
