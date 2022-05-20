.class public Lorg/jcodec/containers/mp4/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# instance fields
.field public entry:I

.field public offset:J

.field public sampleCount:I

.field public sampleDur:I

.field public sampleDurs:[I

.field public sampleSize:I

.field public sampleSizes:[I

.field public startTv:J


# direct methods
.method public constructor <init>(JJII[II[II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/jcodec/containers/mp4/Chunk;->offset:J

    .line 3
    iput-wide p3, p0, Lorg/jcodec/containers/mp4/Chunk;->startTv:J

    .line 4
    iput p5, p0, Lorg/jcodec/containers/mp4/Chunk;->sampleCount:I

    .line 5
    iput p6, p0, Lorg/jcodec/containers/mp4/Chunk;->sampleSize:I

    .line 6
    iput-object p7, p0, Lorg/jcodec/containers/mp4/Chunk;->sampleSizes:[I

    .line 7
    iput p8, p0, Lorg/jcodec/containers/mp4/Chunk;->sampleDur:I

    .line 8
    iput-object p9, p0, Lorg/jcodec/containers/mp4/Chunk;->sampleDurs:[I

    .line 9
    iput p10, p0, Lorg/jcodec/containers/mp4/Chunk;->entry:I

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/Chunk;->sampleDur:I

    if-lez v0, :cond_0

    .line 2
    iget v1, p0, Lorg/jcodec/containers/mp4/Chunk;->sampleCount:I

    mul-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/jcodec/containers/mp4/Chunk;->sampleDurs:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 4
    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getEntry()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/Chunk;->entry:I

    return v0
.end method

.method public getOffset()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/Chunk;->offset:J

    return-wide v0
.end method

.method public getSampleCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/Chunk;->sampleCount:I

    return v0
.end method

.method public getSampleDur()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/Chunk;->sampleDur:I

    return v0
.end method

.method public getSampleDurs()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jcodec/containers/mp4/Chunk;->sampleDurs:[I

    return-object v0
.end method

.method public getSampleSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/Chunk;->sampleSize:I

    return v0
.end method

.method public getSampleSizes()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jcodec/containers/mp4/Chunk;->sampleSizes:[I

    return-object v0
.end method

.method public getSize()J
    .locals 5

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/Chunk;->sampleSize:I

    if-lez v0, :cond_0

    .line 2
    iget v1, p0, Lorg/jcodec/containers/mp4/Chunk;->sampleCount:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lorg/jcodec/containers/mp4/Chunk;->sampleSizes:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 4
    aget v3, v3, v2

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public getStartTv()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/jcodec/containers/mp4/Chunk;->startTv:J

    return-wide v0
.end method
