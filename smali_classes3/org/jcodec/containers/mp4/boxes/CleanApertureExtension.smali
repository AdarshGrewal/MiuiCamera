.class public Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "CleanApertureExtension.java"


# instance fields
.field public apertureHeightDenominator:I

.field public apertureHeightNumerator:I

.field public apertureWidthDenominator:I

.field public apertureWidthNumerator:I

.field public horizOffsetDenominator:I

.field public horizOffsetNumerator:I

.field public vertOffsetDenominator:I

.field public vertOffsetNumerator:I


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createCleanApertureExtension(IIIIIIII)Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;
    .locals 3

    .line 1
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 2
    iput p0, v0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->apertureWidthNumerator:I

    .line 3
    iput p1, v0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->apertureWidthDenominator:I

    .line 4
    iput p2, v0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->apertureHeightNumerator:I

    .line 5
    iput p3, v0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->apertureHeightDenominator:I

    .line 6
    iput p4, v0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->horizOffsetNumerator:I

    .line 7
    iput p5, v0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->horizOffsetDenominator:I

    .line 8
    iput p6, v0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->vertOffsetNumerator:I

    .line 9
    iput p7, v0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->vertOffsetDenominator:I

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "clap"

    return-object v0
.end method


# virtual methods
.method public doWrite(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->apertureWidthNumerator:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->apertureWidthDenominator:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->apertureHeightNumerator:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->apertureHeightDenominator:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->horizOffsetNumerator:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->horizOffsetDenominator:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->vertOffsetNumerator:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 8
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->vertOffsetDenominator:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public estimateSize()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->apertureWidthNumerator:I

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->apertureWidthDenominator:I

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->apertureHeightNumerator:I

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->apertureHeightDenominator:I

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->horizOffsetNumerator:I

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->horizOffsetDenominator:I

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->vertOffsetNumerator:I

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lorg/jcodec/containers/mp4/boxes/CleanApertureExtension;->vertOffsetDenominator:I

    return-void
.end method
