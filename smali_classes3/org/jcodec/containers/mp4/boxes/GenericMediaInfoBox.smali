.class public Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;
.super Lorg/jcodec/containers/mp4/boxes/FullBox;
.source "GenericMediaInfoBox.java"


# instance fields
.field public bOpColor:S

.field public balance:S

.field public gOpColor:S

.field public graphicsMode:S

.field public rOpColor:S


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createGenericMediaInfoBox()Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;
    .locals 3

    .line 1
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "gmin"

    return-object v0
.end method


# virtual methods
.method public doWrite(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;->doWrite(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-short v0, p0, Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;->graphicsMode:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3
    iget-short v0, p0, Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;->rOpColor:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 4
    iget-short v0, p0, Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;->gOpColor:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 5
    iget-short v0, p0, Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;->bOpColor:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 6
    iget-short v0, p0, Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;->balance:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public estimateSize()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;->parse(Ljava/nio/ByteBuffer;)V

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;->graphicsMode:S

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;->rOpColor:S

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;->gOpColor:S

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;->bOpColor:S

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/jcodec/containers/mp4/boxes/GenericMediaInfoBox;->balance:S

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    return-void
.end method
