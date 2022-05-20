.class public Ljava8/util/stream/SpinedBuffer;
.super Ljava8/util/stream/AbstractSpinedBuffer;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava8/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/SpinedBuffer$OfDouble;,
        Ljava8/util/stream/SpinedBuffer$OfLong;,
        Ljava8/util/stream/SpinedBuffer$OfInt;,
        Ljava8/util/stream/SpinedBuffer$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/AbstractSpinedBuffer;",
        "Ljava8/util/function/Consumer<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final SPLITERATOR_CHARACTERISTICS:I = 0x4050


# instance fields
.field public curChunk:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field public spine:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava8/util/stream/AbstractSpinedBuffer;-><init>()V

    .line 4
    iget v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava8/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava8/util/stream/AbstractSpinedBuffer;-><init>(I)V

    .line 2
    iget p1, p0, Ljava8/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ljava8/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    return-void
.end method

.method private inflateSpine()V
    .locals 3

    .line 1
    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v1, v0, [[Ljava/lang/Object;

    .line 2
    iput-object v1, p0, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    new-array v0, v0, [J

    .line 3
    iput-object v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    const/4 v0, 0x0

    .line 4
    iget-object v2, p0, Ljava8/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aput-object v2, v1, v0

    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 2
    invoke-direct {p0}, Ljava8/util/stream/SpinedBuffer;->inflateSpine()V

    .line 3
    iget v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v2, v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer;->increaseCapacity()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    .line 6
    iget v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    .line 7
    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v0, v1, v0

    iput-object v0, p0, Ljava8/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    .line 8
    :cond_2
    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    iget v1, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    aput-object p1, v0, v1

    return-void
.end method

.method public asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntFunction<",
            "[TE;>;)[TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/AbstractSpinedBuffer;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    .line 2
    invoke-interface {p1, v0}, Ljava8/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Ljava8/util/stream/SpinedBuffer;->copyInto([Ljava/lang/Object;I)V

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream size exceeds max array size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public capacity()J
    .locals 5

    .line 1
    iget v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljava8/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    aget-wide v1, v1, v0

    iget-object v3, p0, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v0, v3, v0

    array-length v0, v0

    int-to-long v3, v0

    add-long v0, v1, v3

    :goto_0
    return-wide v0
.end method

.method public clear()V
    .locals 5

    .line 1
    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    aget-object v0, v0, v2

    iput-object v0, p0, Ljava8/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    move v0, v2

    .line 3
    :goto_0
    iget-object v3, p0, Ljava8/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 4
    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput-object v1, p0, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    .line 6
    iput-object v1, p0, Ljava8/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    goto :goto_2

    :cond_1
    move v0, v2

    .line 7
    :goto_1
    iget v3, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    if-ge v0, v3, :cond_2

    .line 8
    iget-object v3, p0, Ljava8/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_2
    :goto_2
    iput v2, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    .line 10
    iput v2, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    return-void
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;I)V"
        }
    .end annotation

    int-to-long v0, p2

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/AbstractSpinedBuffer;->count()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 2
    array-length v4, p1

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    .line 3
    iget v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    iget v2, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_0
    move v0, v1

    .line 5
    :goto_0
    iget v2, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-ge v0, v2, :cond_1

    .line 6
    iget-object v2, p0, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v3, v2, v0

    aget-object v2, v2, v0

    array-length v2, v2

    invoke-static {v3, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v2, p0, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    array-length v2, v2

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    if-lez v0, :cond_2

    .line 9
    iget-object v2, p0, Ljava8/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_1
    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "does not fit"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ensureCapacity(J)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer;->capacity()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 2
    invoke-direct {p0}, Ljava8/util/stream/SpinedBuffer;->inflateSpine()V

    .line 3
    iget v2, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    :goto_0
    add-int/lit8 v2, v2, 0x1

    cmp-long v3, p1, v0

    if-lez v3, :cond_1

    .line 4
    iget-object v3, p0, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    array-length v4, v3

    if-lt v2, v4, :cond_0

    .line 5
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    .line 6
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    iput-object v3, p0, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    .line 7
    iget-object v3, p0, Ljava8/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Ljava8/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    .line 8
    :cond_0
    invoke-virtual {p0, v2}, Ljava8/util/stream/AbstractSpinedBuffer;->chunkSize(I)I

    move-result v3

    .line 9
    iget-object v4, p0, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v5, v4, v2

    .line 10
    iget-object v5, p0, Ljava8/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    add-int/lit8 v6, v2, -0x1

    aget-wide v7, v5, v6

    aget-object v4, v4, v6

    array-length v4, v4

    int-to-long v9, v4

    add-long/2addr v7, v9

    aput-wide v7, v5, v2

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public forEach(Ljava8/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 3
    invoke-interface {p1, v5}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_2
    iget v1, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    if-ge v0, v1, :cond_2

    .line 5
    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 3
    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    long-to-int p1, p1

    aget-object p1, v0, p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava8/util/stream/AbstractSpinedBuffer;->count()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget v1, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-gt v0, v1, :cond_3

    .line 7
    iget-object v1, p0, Ljava8/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    aget-wide v2, v1, v0

    iget-object v4, p0, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v5, v4, v0

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v2, v5

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    .line 8
    aget-object v2, v4, v0

    aget-wide v0, v1, v0

    sub-long/2addr p1, v0

    long-to-int p1, p1

    aget-object p1, v2, p1

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public increaseCapacity()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer;->capacity()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava8/util/stream/SpinedBuffer;->ensureCapacity(J)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer;->spliterator()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/Spliterators;->iterator(Ljava8/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava8/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Ljava8/util/stream/SpinedBuffer$1Splitr;

    iget v3, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    iget v5, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/SpinedBuffer$1Splitr;-><init>(Ljava8/util/stream/SpinedBuffer;IIII)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava8/util/stream/SpinedBuffer$$Lambda$1;->lambdaFactory$(Ljava/util/List;)Ljava8/util/function/Consumer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava8/util/stream/SpinedBuffer;->forEach(Ljava8/util/function/Consumer;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpinedBuffer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
