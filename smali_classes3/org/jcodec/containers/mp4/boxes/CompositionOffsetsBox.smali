.class public Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox;
.super Lorg/jcodec/containers/mp4/boxes/FullBox;
.source "CompositionOffsetsBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$LongEntry;,
        Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;
    }
.end annotation


# instance fields
.field public entries:[Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createCompositionOffsetsBox([Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;)Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox;
    .locals 3

    .line 1
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 2
    iput-object p0, v0, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox;->entries:[Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "ctts"

    return-object v0
.end method


# virtual methods
.method public doWrite(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;->doWrite(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox;->entries:[Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox;->entries:[Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4
    aget-object v1, v1, v0

    iget v1, v1, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;->count:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox;->entries:[Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;

    aget-object v1, v1, v0

    iget v1, v1, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;->offset:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public estimateSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox;->entries:[Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getEntries()[Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox;->entries:[Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;

    return-object v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;->parse(Ljava/nio/ByteBuffer;)V

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 3
    new-array v1, v0, [Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;

    iput-object v1, p0, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox;->entries:[Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox;->entries:[Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;

    new-instance v3, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/jcodec/containers/mp4/boxes/CompositionOffsetsBox$Entry;-><init>(II)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
