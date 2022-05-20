.class public final Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;
.super Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator;
.implements Ljava8/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator<",
        "TT;",
        "Ljava8/util/Spliterator<",
        "TT;>;>;",
        "Ljava8/util/Spliterator<",
        "TT;>;",
        "Ljava8/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public tmpSlot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava8/util/Spliterator;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TT;>;JJ)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava8/util/Spliterator;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava8/util/Spliterator;Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TT;>;",
            "Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava8/util/Spliterator;Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
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
    new-instance v0, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfRef;

    iget v1, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    invoke-direct {v0, v1}, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfRef;-><init>(I)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava8/util/stream/StreamSpliterators$ArrayBuffer;->reset()V

    :goto_1
    const-wide/16 v1, 0x0

    move-wide v3, v1

    .line 6
    :cond_1
    iget-object v5, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {v5, v0}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

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

    invoke-virtual {v0, p1, v1, v2}, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->forEach(Ljava8/util/function/Consumer;J)V

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->forEachRemaining(Ljava8/util/function/Consumer;)V

    :cond_5
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
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

.method public makeSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TT;>;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;

    invoke-direct {v0, p1, p0}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;-><init>(Ljava8/util/Spliterator;Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;)V

    return-object v0
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
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

    invoke-interface {v0, p0}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

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
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method
