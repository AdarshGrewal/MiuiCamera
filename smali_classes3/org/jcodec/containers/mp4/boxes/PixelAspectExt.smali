.class public Lorg/jcodec/containers/mp4/boxes/PixelAspectExt;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "PixelAspectExt.java"


# instance fields
.field public hSpacing:I

.field public vSpacing:I


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "pasp"

    return-object v0
.end method


# virtual methods
.method public doWrite(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/PixelAspectExt;->hSpacing:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/PixelAspectExt;->vSpacing:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public estimateSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/PixelAspectExt;->hSpacing:I

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lorg/jcodec/containers/mp4/boxes/PixelAspectExt;->vSpacing:I

    return-void
.end method
