.class public abstract Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.super Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_BUFF:",
        "Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive<",
        "TT_CONS;>;T_SP",
        "LITR::Ljava8/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator<",
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava8/util/Spliterator;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava8/util/Spliterator$OfPrimitive;Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<",
            "TT;TT_CONS;TT_BUFF;TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava8/util/Spliterator;Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V

    return-void
.end method


# virtual methods
.method public abstract acceptConsumed(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation
.end method

.method public abstract bufferCreate(I)Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_BUFF;"
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

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permitStatus()Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v1

    sget-object v2, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-eq v1, v2, :cond_5

    .line 3
    sget-object v2, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-ne v1, v2, :cond_4

    if-nez v0, :cond_0

    .line 4
    iget v0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    invoke-virtual {p0, v0}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->bufferCreate(I)Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->reset()V

    :goto_1
    const-wide/16 v1, 0x0

    move-wide v3, v1

    .line 6
    :cond_1
    iget-object v5, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava8/util/Spliterator;

    check-cast v5, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {v5, v0}, Ljava8/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget v5, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    :cond_2
    cmp-long v1, v3, v1

    if-nez v1, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-virtual {p0, v3, v4}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->acquirePermits(J)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->forEach(Ljava/lang/Object;J)V

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permitStatus()Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v0

    sget-object v1, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p0}, Ljava8/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const-wide/16 v0, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->acquirePermits(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->acceptConsumed(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    return-object v0
.end method
