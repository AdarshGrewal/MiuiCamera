.class public final Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;
.super Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava8/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field public final s:Ljava8/util/function/IntSupplier;


# direct methods
.method public constructor <init>(JLjava8/util/function/IntSupplier;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;-><init>(J)V

    .line 2
    iput-object p3, p0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->s:Ljava8/util/function/IntSupplier;

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfInt;->forEachRemaining(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/IntConsumer;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfInt;->forEachRemaining(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfInt;->tryAdvance(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/IntConsumer;)Z
    .locals 1

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->s:Ljava8/util/function/IntSupplier;

    invoke-interface {v0}, Ljava8/util/function/IntSupplier;->getAsInt()I

    move-result v0

    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public trySplit()Ljava8/util/Spliterator$OfInt;
    .locals 4

    .line 3
    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    new-instance v2, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;

    const/4 v3, 0x1

    ushr-long/2addr v0, v3

    iput-wide v0, p0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    iget-object v3, p0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->s:Ljava8/util/function/IntSupplier;

    invoke-direct {v2, v0, v1, v3}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;-><init>(JLjava8/util/function/IntSupplier;)V

    return-object v2
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->trySplit()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->trySplit()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
