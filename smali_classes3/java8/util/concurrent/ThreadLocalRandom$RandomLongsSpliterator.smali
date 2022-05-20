.class public final Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Ljava8/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RandomLongsSpliterator"
.end annotation


# instance fields
.field public final bound:J

.field public final fence:J

.field public index:J

.field public final origin:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iput-wide p3, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    .line 3
    iput-wide p5, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iput-wide p7, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 1
    iget-wide v0, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    iget-wide v2, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->forEachRemaining(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/LongConsumer;)V
    .locals 11

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v0, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iget-wide v2, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 4
    iput-wide v2, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    .line 5
    iget-wide v4, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iget-wide v6, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    .line 6
    invoke-static {}, Ljava8/util/concurrent/ThreadLocalRandom;->current()Ljava8/util/concurrent/ThreadLocalRandom;

    move-result-object v8

    .line 7
    :cond_0
    invoke-static {v8, v4, v5, v6, v7}, Ljava8/util/concurrent/ThreadLocalRandom;->access$100(Ljava8/util/concurrent/ThreadLocalRandom;JJ)J

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava8/util/function/LongConsumer;->accept(J)V

    const-wide/16 v9, 0x1

    add-long/2addr v0, v9

    cmp-long v9, v0, v2

    if-ltz v9, :cond_0

    :cond_1
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 1
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

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
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 6
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->tryAdvance(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/LongConsumer;)Z
    .locals 7

    .line 2
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v0, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iget-wide v2, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 4
    invoke-static {}, Ljava8/util/concurrent/ThreadLocalRandom;->current()Ljava8/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    iget-wide v3, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iget-wide v5, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    invoke-static {v2, v3, v4, v5, v6}, Ljava8/util/concurrent/ThreadLocalRandom;->access$100(Ljava8/util/concurrent/ThreadLocalRandom;JJ)J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Ljava8/util/function/LongConsumer;->accept(J)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 5
    iput-wide v0, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 1

    .line 3
    invoke-virtual {p0}, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;
    .locals 10

    .line 4
    iget-wide v1, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iget-wide v3, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    add-long/2addr v3, v1

    const/4 v0, 0x1

    ushr-long/2addr v3, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v9, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    iput-wide v3, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iget-wide v5, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iget-wide v7, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava8/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    :goto_0
    return-object v0
.end method
