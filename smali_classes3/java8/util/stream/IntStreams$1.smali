.class public final Ljava8/util/stream/IntStreams$1;
.super Ljava8/util/Spliterators$AbstractIntSpliterator;
.source "IntStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/IntStreams;->iterate(ILjava8/util/function/IntUnaryOperator;)Ljava8/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public prev:I

.field public started:Z

.field public final synthetic val$f:Ljava8/util/function/IntUnaryOperator;

.field public final synthetic val$seed:I


# direct methods
.method public constructor <init>(JILjava8/util/function/IntUnaryOperator;I)V
    .locals 0

    .line 1
    iput-object p4, p0, Ljava8/util/stream/IntStreams$1;->val$f:Ljava8/util/function/IntUnaryOperator;

    iput p5, p0, Ljava8/util/stream/IntStreams$1;->val$seed:I

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/Spliterators$AbstractIntSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/IntStreams$1;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/IntConsumer;)Z
    .locals 3

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p0, Ljava8/util/stream/IntStreams$1;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Ljava8/util/stream/IntStreams$1;->val$f:Ljava8/util/function/IntUnaryOperator;

    iget v2, p0, Ljava8/util/stream/IntStreams$1;->prev:I

    invoke-interface {v0, v2}, Ljava8/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Ljava8/util/stream/IntStreams$1;->val$seed:I

    .line 6
    iput-boolean v1, p0, Ljava8/util/stream/IntStreams$1;->started:Z

    .line 7
    :goto_0
    iput v0, p0, Ljava8/util/stream/IntStreams$1;->prev:I

    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    return v1
.end method
