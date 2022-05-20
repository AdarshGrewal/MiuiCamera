.class public Ljava8/util/stream/SpinedBuffer$OfInt;
.super Ljava8/util/stream/SpinedBuffer$OfPrimitive;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava8/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava8/util/function/IntConsumer;",
        ">;",
        "Ljava8/util/function/IntConsumer;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;-><init>(I)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->preAccept()V

    .line 2
    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    aput p1, v0, v1

    return-void
.end method

.method public bridge synthetic arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [I

    check-cast p4, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava8/util/stream/SpinedBuffer$OfInt;->arrayForEach([IIILjava8/util/function/IntConsumer;)V

    return-void
.end method

.method public arrayForEach([IIILjava8/util/function/IntConsumer;)V
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    .line 2
    aget v0, p1, p2

    invoke-interface {p4, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic arrayLength(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, [I

    invoke-virtual {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfInt;->arrayLength([I)I

    move-result p1

    return p1
.end method

.method public arrayLength([I)I
    .locals 0

    .line 2
    array-length p1, p1

    return p1
.end method

.method public forEach(Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava8/util/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->forEachRemaining(Ljava8/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public get(J)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->chunkFor(J)I

    move-result v0

    .line 2
    iget v1, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    check-cast v0, [I

    long-to-int p1, p1

    aget p1, v0, p1

    return p1

    .line 4
    :cond_0
    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    check-cast v1, [[I

    aget-object v1, v1, v0

    iget-object v2, p0, Ljava8/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    aget-wide v2, v2, v0

    sub-long/2addr p1, v2

    long-to-int p1, p1

    aget p1, v1, p1

    return p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer$OfInt;->iterator()Ljava8/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava8/util/PrimitiveIterator$OfInt;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/Spliterators;->iterator(Ljava8/util/Spliterator$OfInt;)Ljava8/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfInt;->newArray(I)[I

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[I
    .locals 0

    .line 2
    new-array p1, p1, [I

    return-object p1
.end method

.method public bridge synthetic newArrayArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfInt;->newArrayArray(I)[[I

    move-result-object p1

    return-object p1
.end method

.method public newArrayArray(I)[[I
    .locals 0

    .line 2
    new-array p1, p1, [[I

    return-object p1
.end method

.method public spliterator()Ljava8/util/Spliterator$OfInt;
    .locals 7

    .line 1
    new-instance v6, Ljava8/util/stream/SpinedBuffer$OfInt$1Splitr;

    iget v3, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    iget v5, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/SpinedBuffer$OfInt$1Splitr;-><init>(Ljava8/util/stream/SpinedBuffer$OfInt;IIII)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 2
    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/16 v7, 0xc8

    if-ge v1, v7, :cond_0

    new-array v1, v6, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    iget v4, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%s[length=%d, chunks=%d]%s"

    .line 5
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    new-array v6, v6, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    iget v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    const-string v0, "%s[length=%d, chunks=%d]%s..."

    .line 9
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
