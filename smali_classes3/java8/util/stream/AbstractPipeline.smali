.class public abstract Ljava8/util/stream/AbstractPipeline;
.super Ljava8/util/stream/PipelineHelper;
.source "AbstractPipeline.java"

# interfaces
.implements Ljava8/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "E_OUT:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava8/util/stream/BaseStream<",
        "TE_OUT;TS;>;>",
        "Ljava8/util/stream/PipelineHelper<",
        "TE_OUT;>;",
        "Ljava8/util/stream/BaseStream<",
        "TE_OUT;TS;>;"
    }
.end annotation


# static fields
.field public static final MSG_CONSUMED:Ljava/lang/String; = "source already consumed or closed"

.field public static final MSG_STREAM_LINKED:Ljava/lang/String; = "stream has already been operated upon or closed"


# instance fields
.field public combinedFlags:I

.field public depth:I

.field public linkedOrConsumed:Z

.field public nextStage:Ljava8/util/stream/AbstractPipeline;

.field public parallel:Z

.field public final previousStage:Ljava8/util/stream/AbstractPipeline;

.field public sourceAnyStateful:Z

.field public sourceCloseAction:Ljava/lang/Runnable;

.field public final sourceOrOpFlags:I

.field public sourceSpliterator:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/Spliterator<",
            "*>;"
        }
    .end annotation
.end field

.field public final sourceStage:Ljava8/util/stream/AbstractPipeline;

.field public sourceSupplier:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava8/util/Spliterator;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "*>;IZ)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava8/util/stream/PipelineHelper;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    .line 11
    iput-object p1, p0, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator:Ljava8/util/Spliterator;

    .line 12
    iput-object p0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    .line 13
    sget p1, Ljava8/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr p1, p2

    iput p1, p0, Ljava8/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    shl-int/lit8 p1, p1, 0x1

    not-int p1, p1

    .line 14
    sget p2, Ljava8/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr p1, p2

    iput p1, p0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Ljava8/util/stream/AbstractPipeline;->depth:I

    .line 16
    iput-boolean p3, p0, Ljava8/util/stream/AbstractPipeline;->parallel:Z

    return-void
.end method

.method public constructor <init>(Ljava8/util/function/Supplier;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator<",
            "*>;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava8/util/stream/PipelineHelper;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    .line 3
    iput-object p1, p0, Ljava8/util/stream/AbstractPipeline;->sourceSupplier:Ljava8/util/function/Supplier;

    .line 4
    iput-object p0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    .line 5
    sget p1, Ljava8/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr p1, p2

    iput p1, p0, Ljava8/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    shl-int/lit8 p1, p1, 0x1

    not-int p1, p1

    .line 6
    sget p2, Ljava8/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr p1, p2

    iput p1, p0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Ljava8/util/stream/AbstractPipeline;->depth:I

    .line 8
    iput-boolean p3, p0, Ljava8/util/stream/AbstractPipeline;->parallel:Z

    return-void
.end method

.method public constructor <init>(Ljava8/util/stream/AbstractPipeline;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*TE_IN;*>;I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava8/util/stream/PipelineHelper;-><init>()V

    .line 18
    iget-boolean v0, p1, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p1, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 20
    iput-object p0, p1, Ljava8/util/stream/AbstractPipeline;->nextStage:Ljava8/util/stream/AbstractPipeline;

    .line 21
    iput-object p1, p0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    .line 22
    sget v1, Ljava8/util/stream/StreamOpFlag;->OP_MASK:I

    and-int/2addr v1, p2

    iput v1, p0, Ljava8/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 23
    iget v1, p1, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p2, v1}, Ljava8/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result p2

    iput p2, p0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    .line 24
    iget-object p2, p1, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iput-object p2, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    .line 25
    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 26
    iget-object p2, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iput-boolean v0, p2, Ljava8/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    .line 27
    :cond_0
    iget p1, p1, Ljava8/util/stream/AbstractPipeline;->depth:I

    add-int/2addr p1, v0

    iput p1, p0, Ljava8/util/stream/AbstractPipeline;->depth:I

    return-void

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "stream has already been operated upon or closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic lambda$opEvaluateParallelLazy$79(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic lambda$spliterator$77(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/Spliterator;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$wrapSpliterator$78(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 0

    return-object p0
.end method

.method private sourceSpliterator(I)Ljava8/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava8/util/Spliterator<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iget-object v1, v0, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator:Ljava8/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iput-object v2, v0, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator:Ljava8/util/Spliterator;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Ljava8/util/stream/AbstractPipeline;->sourceSupplier:Ljava8/util/function/Supplier;

    if-eqz v0, :cond_6

    .line 4
    invoke-interface {v0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava8/util/Spliterator;

    .line 5
    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iput-object v2, v0, Ljava8/util/stream/AbstractPipeline;->sourceSupplier:Ljava8/util/function/Supplier;

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iget-boolean v2, v0, Ljava8/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    if-eqz v2, :cond_4

    .line 7
    iget-object v2, v0, Ljava8/util/stream/AbstractPipeline;->nextStage:Ljava8/util/stream/AbstractPipeline;

    const/4 v3, 0x1

    :goto_1
    if-eq v0, p0, :cond_4

    .line 8
    iget v4, v2, Ljava8/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 9
    invoke-virtual {v2}, Ljava8/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x0

    .line 10
    sget-object v5, Ljava8/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {v5, v4}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 11
    sget v5, Ljava8/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    not-int v5, v5

    and-int/2addr v4, v5

    .line 12
    :cond_1
    invoke-virtual {v2, v0, v1}, Ljava8/util/stream/AbstractPipeline;->opEvaluateParallelLazy(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object v1

    const/16 v5, 0x40

    .line 13
    invoke-interface {v1, v5}, Ljava8/util/Spliterator;->hasCharacteristics(I)Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    not-int v5, v5

    and-int/2addr v4, v5

    sget v5, Ljava8/util/stream/StreamOpFlag;->IS_SIZED:I

    goto :goto_2

    :cond_2
    sget v5, Ljava8/util/stream/StreamOpFlag;->IS_SIZED:I

    not-int v5, v5

    and-int/2addr v4, v5

    sget v5, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    :goto_2
    or-int/2addr v4, v5

    :cond_3
    add-int/lit8 v5, v3, 0x1

    .line 14
    iput v3, v2, Ljava8/util/stream/AbstractPipeline;->depth:I

    .line 15
    iget v0, v0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v4, v0}, Ljava8/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v0

    iput v0, v2, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    .line 16
    iget-object v0, v2, Ljava8/util/stream/AbstractPipeline;->nextStage:Ljava8/util/stream/AbstractPipeline;

    move v3, v5

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 17
    iget v0, p0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p1, v0}, Ljava8/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result p1

    iput p1, p0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    :cond_5
    return-object v1

    .line 18
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "source already consumed or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceSupplier:Ljava8/util/function/Supplier;

    .line 3
    iput-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator:Ljava8/util/Spliterator;

    .line 4
    iget-object v1, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iget-object v2, v1, Ljava8/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 5
    iput-object v0, v1, Ljava8/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 6
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final copyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Ljava8/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p2}, Ljava8/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava8/util/stream/Sink;->begin(J)V

    .line 4
    invoke-interface {p2, p1}, Ljava8/util/Spliterator;->forEachRemaining(Ljava8/util/function/Consumer;)V

    .line 5
    invoke-interface {p1}, Ljava8/util/stream/Sink;->end()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/AbstractPipeline;->copyIntoWithCancel(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Z

    :goto_0
    return-void
.end method

.method public final copyIntoWithCancel(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)Z"
        }
    .end annotation

    move-object v0, p0

    .line 1
    :goto_0
    iget v1, v0, Ljava8/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    .line 2
    iget-object v0, v0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava8/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava8/util/stream/Sink;->begin(J)V

    .line 4
    invoke-virtual {v0, p2, p1}, Ljava8/util/stream/AbstractPipeline;->forEachWithCancel(Ljava8/util/Spliterator;Ljava8/util/stream/Sink;)Z

    move-result p2

    .line 5
    invoke-interface {p1}, Ljava8/util/stream/Sink;->end()V

    return p2
.end method

.method public final evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/TerminalOp<",
            "TE_OUT;TR;>;)TR;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 3
    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Ljava8/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava8/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava8/util/stream/TerminalOp;->evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava8/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava8/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava8/util/stream/TerminalOp;->evaluateSequential(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final evaluate(Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava8/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava8/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, p0, p1, p2, p3}, Ljava8/util/stream/AbstractPipeline;->evaluateToNode(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Ljava8/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    .line 10
    invoke-virtual {p0, v0, v1, p3}, Ljava8/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;

    move-result-object p2

    .line 11
    invoke-virtual {p0, p2, p1}, Ljava8/util/stream/AbstractPipeline;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/Node$Builder;

    invoke-interface {p1}, Ljava8/util/stream/Node$Builder;->build()Ljava8/util/stream/Node;

    move-result-object p1

    return-object p1
.end method

.method public final evaluateToArrayNode(Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava8/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 3
    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iput v2, p0, Ljava8/util/stream/AbstractPipeline;->depth:I

    .line 5
    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    invoke-direct {v0, v2}, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava8/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Ljava8/util/stream/AbstractPipeline;->opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-direct {p0, v2}, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava8/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract evaluateToNode(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava8/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava8/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method public final exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)J"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/stream/StreamOpFlag;->SIZED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava8/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public abstract forEachWithCancel(Ljava8/util/Spliterator;Ljava8/util/stream/Sink;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TE_OUT;>;",
            "Ljava8/util/stream/Sink<",
            "TE_OUT;>;)Z"
        }
    .end annotation
.end method

.method public abstract getOutputShape()Ljava8/util/stream/StreamShape;
.end method

.method public final getSourceShape()Ljava8/util/stream/StreamShape;
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    iget v1, v0, Ljava8/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    .line 2
    iget-object v0, v0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava8/util/stream/AbstractPipeline;->getOutputShape()Ljava8/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public final getStreamAndOpFlags()I
    .locals 1

    .line 1
    iget v0, p0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    return v0
.end method

.method public final getStreamFlags()I
    .locals 1

    .line 1
    iget v0, p0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v0}, Ljava8/util/stream/StreamOpFlag;->toStreamFlags(I)I

    move-result v0

    return v0
.end method

.method public final isOrdered()Z
    .locals 2

    .line 1
    sget-object v0, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    iget v1, p0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    return v0
.end method

.method public final isParallel()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iget-boolean v0, v0, Ljava8/util/stream/AbstractPipeline;->parallel:Z

    return v0
.end method

.method public abstract lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator<",
            "TE_OUT;>;>;)",
            "Ljava8/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method public abstract makeNodeBuilder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava8/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava8/util/stream/Node$Builder<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method public onClose(Ljava/lang/Runnable;)Ljava8/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")TS;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iget-object v1, v0, Ljava8/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1, p1}, Ljava8/util/stream/Streams;->composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Ljava8/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    return-object p0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava8/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Parallel evaluation is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public opEvaluateParallelLazy(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava8/util/stream/AbstractPipeline$$Lambda$3;->lambdaFactory$()Ljava8/util/function/IntFunction;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava8/util/stream/AbstractPipeline;->opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p1

    invoke-interface {p1}, Ljava8/util/stream/Node;->spliterator()Ljava8/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public abstract opIsStateful()Z
.end method

.method public abstract opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "TE_OUT;>;)",
            "Ljava8/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation
.end method

.method public final parallel()Ljava8/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava8/util/stream/AbstractPipeline;->parallel:Z

    return-object p0
.end method

.method public final sequential()Ljava8/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava8/util/stream/AbstractPipeline;->parallel:Z

    return-object p0
.end method

.method public final sourceStageSpliterator()Ljava8/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    if-ne p0, v0, :cond_3

    .line 2
    iget-boolean v1, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 4
    iget-object v1, v0, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator:Ljava8/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    iput-object v2, v0, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator:Ljava8/util/Spliterator;

    return-object v1

    .line 6
    :cond_0
    iget-object v0, v0, Ljava8/util/stream/AbstractPipeline;->sourceSupplier:Ljava8/util/function/Supplier;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator;

    .line 8
    iget-object v1, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iput-object v2, v1, Ljava8/util/stream/AbstractPipeline;->sourceSupplier:Ljava8/util/function/Supplier;

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public spliterator()Ljava8/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 3
    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    if-ne p0, v0, :cond_2

    .line 4
    iget-object v1, v0, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator:Ljava8/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    iput-object v2, v0, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator:Ljava8/util/Spliterator;

    return-object v1

    .line 6
    :cond_0
    iget-object v1, v0, Ljava8/util/stream/AbstractPipeline;->sourceSupplier:Ljava8/util/function/Supplier;

    if-eqz v1, :cond_1

    .line 7
    iput-object v2, v0, Ljava8/util/stream/AbstractPipeline;->sourceSupplier:Ljava8/util/function/Supplier;

    .line 8
    invoke-virtual {p0, v1}, Ljava8/util/stream/AbstractPipeline;->lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    invoke-static {p0}, Ljava8/util/stream/AbstractPipeline$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/function/Supplier;

    move-result-object v0

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Ljava8/util/stream/AbstractPipeline;->wrap(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)Ljava8/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract wrap(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Ljava8/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method public final wrapAndCopyInto(Ljava8/util/function/Consumer;Ljava8/util/Spliterator;)Ljava8/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "S_::",
            "Ljava8/util/function/Consumer<",
            "TE_OUT;>;>(TS_;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)TS_;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/function/Consumer;

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractPipeline;->wrapSink(Ljava8/util/function/Consumer;)Ljava8/util/stream/Sink;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava8/util/stream/AbstractPipeline;->copyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)V

    return-object p1
.end method

.method public final wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "S_::",
            "Ljava8/util/stream/Sink<",
            "TE_OUT;>;>(TS_;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)TS_;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Sink;

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractPipeline;->wrapSink(Ljava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava8/util/stream/AbstractPipeline;->copyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)V

    return-object p1
.end method

.method public final wrapSink(Ljava8/util/function/Consumer;)Ljava8/util/stream/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Consumer<",
            "TE_OUT;>;)",
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava8/util/stream/AbstractPipeline$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/AbstractPipeline$1;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/Consumer;)V

    move-object p1, p0

    .line 7
    :goto_0
    iget v1, p1, Ljava8/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    .line 8
    iget-object v1, p1, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    iget v1, v1, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {p1, v1, v0}, Ljava8/util/stream/AbstractPipeline;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v0

    .line 9
    iget-object p1, p1, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final wrapSink(Ljava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Sink<",
            "TE_OUT;>;)",
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    .line 2
    :goto_0
    iget v1, v0, Ljava8/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    .line 3
    iget-object v1, v0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    iget v1, v1, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, v1, p1}, Ljava8/util/stream/AbstractPipeline;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object p1

    .line 4
    iget-object v0, v0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Ljava8/util/stream/AbstractPipeline;->depth:I

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Ljava8/util/stream/AbstractPipeline$$Lambda$2;->lambdaFactory$(Ljava8/util/Spliterator;)Ljava8/util/function/Supplier;

    move-result-object p1

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Ljava8/util/stream/AbstractPipeline;->wrap(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)Ljava8/util/Spliterator;

    move-result-object p1

    return-object p1
.end method
