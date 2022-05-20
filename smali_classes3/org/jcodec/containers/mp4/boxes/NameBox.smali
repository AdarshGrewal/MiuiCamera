.class public Lorg/jcodec/containers/mp4/boxes/NameBox;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "NameBox.java"


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createNameBox(Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/NameBox;
    .locals 3

    .line 1
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/NameBox;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/NameBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/NameBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 2
    iput-object p0, v0, Lorg/jcodec/containers/mp4/boxes/NameBox;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    return-object v0
.end method


# virtual methods
.method public doWrite(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/NameBox;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/jcodec/common/JCodecUtil2;->asciiString(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public estimateSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/NameBox;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/jcodec/common/JCodecUtil2;->asciiString(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/NameBox;->name:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->readNullTermString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jcodec/containers/mp4/boxes/NameBox;->name:Ljava/lang/String;

    return-void
.end method
