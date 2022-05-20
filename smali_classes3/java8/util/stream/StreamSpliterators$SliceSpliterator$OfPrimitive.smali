.class public abstract Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.super Ljava8/util/stream/StreamSpliterators$SliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava8/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/StreamSpliterators$SliceSpliterator<",
        "TT;TT_SP",
        "LITR;",
        ">;",
        "Ljava8/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava8/util/Spliterator$OfPrimitive;JJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v0

    move-wide/from16 v6, p4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v2 .. v11}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava8/util/Spliterator$OfPrimitive;JJJJ)V

    return-void
.end method

.method public constructor <init>(Ljava8/util/Spliterator$OfPrimitive;JJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p9}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;-><init>(Ljava8/util/Spliterator;JJJJ)V

    return-void
.end method


# virtual methods
.method public abstract emptyConsumer()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_CONS;"
        }
    .end annotation
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-void

    .line 3
    :cond_0
    iget-wide v4, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_1

    return-void

    :cond_1
    cmp-long v0, v4, v0

    if-ltz v0, :cond_2

    .line 4
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {v0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v0

    add-long/2addr v4, v0

    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    cmp-long v0, v4, v0

    if-gtz v0, :cond_2

    .line 5
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 6
    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    iput-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_2

    .line 7
    :cond_2
    :goto_0
    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1

    if-lez v0, :cond_3

    .line 8
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->emptyConsumer()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava8/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    .line 9
    iget-wide v3, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_0

    .line 10
    :cond_3
    :goto_1
    iget-wide v3, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v5, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    .line 11
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    .line 12
    iget-wide v3, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return v1

    .line 3
    :cond_0
    :goto_0
    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v4, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    cmp-long v0, v2, v4

    const-wide/16 v2, 0x1

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->emptyConsumer()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava8/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    .line 5
    iget-wide v4, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v6, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    return v1

    :cond_2
    add-long/2addr v4, v2

    .line 7
    iput-wide v4, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 8
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    return-object v0
.end method
