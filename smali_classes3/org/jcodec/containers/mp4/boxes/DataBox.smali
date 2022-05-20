.class public Lorg/jcodec/containers/mp4/boxes/DataBox;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "DataBox.java"


# static fields
.field public static final FOURCC:Ljava/lang/String; = "data"


# instance fields
.field public data:[B

.field public locale:I

.field public type:I


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createDataBox(II[B)Lorg/jcodec/containers/mp4/boxes/DataBox;
    .locals 4

    .line 1
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/DataBox;

    const-string v1, "data"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lorg/jcodec/containers/mp4/boxes/Header;->createHeader(Ljava/lang/String;J)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/DataBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 2
    iput p0, v0, Lorg/jcodec/containers/mp4/boxes/DataBox;->type:I

    .line 3
    iput p1, v0, Lorg/jcodec/containers/mp4/boxes/DataBox;->locale:I

    .line 4
    iput-object p2, v0, Lorg/jcodec/containers/mp4/boxes/DataBox;->data:[B

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "data"

    return-object v0
.end method


# virtual methods
.method public doWrite(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->type:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->locale:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public estimateSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->data:[B

    return-object v0
.end method

.method public getLocale()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->locale:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->type:I

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->type:I

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->locale:I

    .line 3
    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->readBuf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->toArray(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/jcodec/containers/mp4/boxes/DataBox;->data:[B

    return-void
.end method
