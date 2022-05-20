.class public final Ljava8/util/stream/IntStreams$2;
.super Ljava8/util/Spliterators$AbstractIntSpliterator;
.source "IntStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/IntStreams;->iterate(ILjava8/util/function/IntPredicate;Ljava8/util/function/IntUnaryOperator;)Ljava8/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public finished:Z

.field public prev:I

.field public started:Z

.field public final synthetic val$hasNext:Ljava8/util/function/IntPredicate;

.field public final synthetic val$next:Ljava8/util/function/IntUnaryOperator;

.field public final synthetic val$seed:I


# direct methods
.method public constructor <init>(JILjava8/util/function/IntUnaryOperator;ILjava8/util/function/IntPredicate;)V
    .locals 0

    .line 1
    iput-object p4, p0, Ljava8/util/stream/IntStreams$2;->val$next:Ljava8/util/function/IntUnaryOperator;

    iput p5, p0, Ljava8/util/stream/IntStreams$2;->val$seed:I

    iput-object p6, p0, Ljava8/util/stream/IntStreams$2;->val$hasNext:Ljava8/util/function/IntPredicate;

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/Spliterators$AbstractIntSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/IntStreams$2;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/IntConsumer;)V
    .locals 2

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p0, Ljava8/util/stream/IntStreams$2;->finished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ljava8/util/stream/IntStreams$2;->finished:Z

    .line 5
    iget-boolean v0, p0, Ljava8/util/stream/IntStreams$2;->started:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava8/util/stream/IntStreams$2;->val$next:Ljava8/util/function/IntUnaryOperator;

    iget v1, p0, Ljava8/util/stream/IntStreams$2;->prev:I

    invoke-interface {v0, v1}, Ljava8/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Ljava8/util/stream/IntStreams$2;->val$seed:I

    .line 6
    :goto_0
    iget-object v1, p0, Ljava8/util/stream/IntStreams$2;->val$hasNext:Ljava8/util/function/IntPredicate;

    invoke-interface {v1, v0}, Ljava8/util/function/IntPredicate;->test(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    .line 8
    iget-object v1, p0, Ljava8/util/stream/IntStreams$2;->val$next:Ljava8/util/function/IntUnaryOperator;

    invoke-interface {v1, v0}, Ljava8/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/IntStreams$2;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/IntConsumer;)Z
    .locals 4

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p0, Ljava8/util/stream/IntStreams$2;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-boolean v0, p0, Ljava8/util/stream/IntStreams$2;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Ljava8/util/stream/IntStreams$2;->val$next:Ljava8/util/function/IntUnaryOperator;

    iget v3, p0, Ljava8/util/stream/IntStreams$2;->prev:I

    invoke-interface {v0, v3}, Ljava8/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Ljava8/util/stream/IntStreams$2;->val$seed:I

    .line 7
    iput-boolean v2, p0, Ljava8/util/stream/IntStreams$2;->started:Z

    .line 8
    :goto_0
    iget-object v3, p0, Ljava8/util/stream/IntStreams$2;->val$hasNext:Ljava8/util/function/IntPredicate;

    invoke-interface {v3, v0}, Ljava8/util/function/IntPredicate;->test(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    iput-boolean v2, p0, Ljava8/util/stream/IntStreams$2;->finished:Z

    return v1

    .line 10
    :cond_2
    iput v0, p0, Ljava8/util/stream/IntStreams$2;->prev:I

    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    return v2
.end method
