.class public Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;
.super Lorg/jcodec/containers/mp4/boxes/FullBox;
.source "TimecodeMediaInfoBox.java"


# instance fields
.field public bgcolor:[S

.field public color:[S

.field public face:S

.field public font:S

.field public name:Ljava/lang/String;

.field public size:S


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    const/4 p1, 0x3

    new-array v0, p1, [S

    .line 2
    iput-object v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->color:[S

    new-array p1, p1, [S

    .line 3
    iput-object p1, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->bgcolor:[S

    return-void
.end method

.method public static createTimecodeMediaInfoBox(SSS[S[SLjava/lang/String;)Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;
    .locals 3

    .line 1
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 2
    iput-short p0, v0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->font:S

    .line 3
    iput-short p1, v0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->face:S

    .line 4
    iput-short p2, v0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->size:S

    .line 5
    iput-object p3, v0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->color:[S

    .line 6
    iput-object p4, v0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->bgcolor:[S

    .line 7
    iput-object p5, v0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "tcmi"

    return-object v0
.end method


# virtual methods
.method public doWrite(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;->doWrite(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-short v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->font:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3
    iget-short v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->face:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 4
    iget-short v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->size:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 6
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->color:[S

    aget-short v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 7
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->color:[S

    const/4 v2, 0x1

    aget-short v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->color:[S

    const/4 v3, 0x2

    aget-short v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 9
    iget-object v1, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->bgcolor:[S

    aget-short v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 10
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->bgcolor:[S

    aget-short v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 11
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->bgcolor:[S

    aget-short v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 12
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/jcodec/common/io/NIOUtils;->writePascalString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public estimateSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/jcodec/common/io/NIOUtils;->asciiString(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x21

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/FullBox;->parse(Ljava/nio/ByteBuffer;)V

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->font:S

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->face:S

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->size:S

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 6
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->color:[S

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const/4 v2, 0x0

    aput-short v1, v0, v2

    .line 7
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->color:[S

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const/4 v3, 0x1

    aput-short v1, v0, v3

    .line 8
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->color:[S

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const/4 v4, 0x2

    aput-short v1, v0, v4

    .line 9
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->bgcolor:[S

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    aput-short v1, v0, v2

    .line 10
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->bgcolor:[S

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    aput-short v1, v0, v3

    .line 11
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->bgcolor:[S

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    aput-short v1, v0, v4

    .line 12
    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->readPascalString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeMediaInfoBox;->name:Ljava/lang/String;

    return-void
.end method
