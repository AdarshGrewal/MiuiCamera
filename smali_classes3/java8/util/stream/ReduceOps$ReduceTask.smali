.class public final Ljava8/util/stream/ReduceOps$ReduceTask;
.super Ljava8/util/stream/AbstractTask;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/ReduceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReduceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava8/util/stream/ReduceOps$AccumulatingSink<",
        "TP_OUT;TR;TS;>;>",
        "Ljava8/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;TS;",
        "Ljava8/util/stream/ReduceOps$ReduceTask<",
        "TP_IN;TP_OUT;TR;TS;>;>;"
    }
.end annotation


# instance fields
.field public final op:Ljava8/util/stream/ReduceOps$ReduceOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/ReduceOps$ReduceOp<",
            "TP_OUT;TR;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava8/util/stream/ReduceOps$ReduceOp;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/ReduceOps$ReduceOp<",
            "TP_OUT;TR;TS;>;",
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Ljava8/util/stream/AbstractTask;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V

    .line 2
    iput-object p1, p0, Ljava8/util/stream/ReduceOps$ReduceTask;->op:Ljava8/util/stream/ReduceOps$ReduceOp;

    return-void
.end method

.method public constructor <init>(Ljava8/util/stream/ReduceOps$ReduceTask;Ljava8/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/ReduceOps$ReduceTask<",
            "TP_IN;TP_OUT;TR;TS;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/AbstractTask;-><init>(Ljava8/util/stream/AbstractTask;Ljava8/util/Spliterator;)V

    .line 4
    iget-object p1, p1, Ljava8/util/stream/ReduceOps$ReduceTask;->op:Ljava8/util/stream/ReduceOps$ReduceOp;

    iput-object p1, p0, Ljava8/util/stream/ReduceOps$ReduceTask;->op:Ljava8/util/stream/ReduceOps$ReduceOp;

    return-void
.end method


# virtual methods
.method public bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$ReduceTask;->doLeaf()Ljava8/util/stream/ReduceOps$AccumulatingSink;

    move-result-object v0

    return-object v0
.end method

.method public doLeaf()Ljava8/util/stream/ReduceOps$AccumulatingSink;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    iget-object v1, p0, Ljava8/util/stream/ReduceOps$ReduceTask;->op:Ljava8/util/stream/ReduceOps$ReduceOp;

    invoke-virtual {v1}, Ljava8/util/stream/ReduceOps$ReduceOp;->makeSink()Ljava8/util/stream/ReduceOps$AccumulatingSink;

    move-result-object v1

    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/ReduceOps$AccumulatingSink;

    return-object v0
.end method

.method public bridge synthetic makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/AbstractTask;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$ReduceTask;->makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/ReduceOps$ReduceTask;

    move-result-object p1

    return-object p1
.end method

.method public makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/ReduceOps$ReduceTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/stream/ReduceOps$ReduceTask<",
            "TP_IN;TP_OUT;TR;TS;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava8/util/stream/ReduceOps$ReduceTask;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/ReduceOps$ReduceTask;-><init>(Ljava8/util/stream/ReduceOps$ReduceTask;Ljava8/util/Spliterator;)V

    return-object v0
.end method

.method public onCompletion(Ljava8/util/concurrent/CountedCompleter;)V
    .locals 2
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

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/ReduceOps$ReduceTask;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/ReduceOps$AccumulatingSink;

    .line 3
    iget-object v1, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v1, Ljava8/util/stream/ReduceOps$ReduceTask;

    invoke-virtual {v1}, Ljava8/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava8/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {v0, v1}, Ljava8/util/stream/ReduceOps$AccumulatingSink;->combine(Ljava8/util/stream/ReduceOps$AccumulatingSink;)V

    .line 4
    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Ljava8/util/stream/AbstractTask;->onCompletion(Ljava8/util/concurrent/CountedCompleter;)V

    return-void
.end method
