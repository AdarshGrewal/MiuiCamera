.class public abstract Ljava8/util/stream/AbstractSpinedBuffer;
.super Ljava/lang/Object;
.source "AbstractSpinedBuffer.java"


# static fields
.field public static final MAX_CHUNK_POWER:I = 0x1e

.field public static final MIN_CHUNK_POWER:I = 0x4

.field public static final MIN_CHUNK_SIZE:I = 0x10

.field public static final MIN_SPINE_SIZE:I = 0x8


# instance fields
.field public elementIndex:I

.field public final initialChunkPower:I

.field public priorElementCount:[J

.field public spineIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    add-int/lit8 p1, p1, -0x1

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    .line 5
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljava8/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public chunkSize(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v1, p0, Ljava8/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    const/16 p1, 0x1e

    .line 2
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget p1, p0, Ljava8/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    :goto_1
    shl-int p1, v0, p1

    return p1
.end method

.method public abstract clear()V
.end method

.method public count()J
    .locals 4

    .line 1
    iget v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v0, :cond_0

    iget v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljava8/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    aget-wide v0, v1, v0

    iget v2, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v0, :cond_0

    iget v0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
