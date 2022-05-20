.class public Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;
.super Lorg/jcodec/containers/mp4/boxes/SampleEntry;
.source "TimecodeSampleEntry.java"


# static fields
.field public static final FLAG_24HOURMAX:I = 0x2

.field public static final FLAG_COUNTER:I = 0x8

.field public static final FLAG_DROPFRAME:I = 0x1

.field public static final FLAG_NEGATIVETIMEOK:I = 0x4

.field public static final TMCD:Ljava/lang/String; = "tmcd"


# instance fields
.field public flags:I

.field public frameDuration:I

.field public numFrames:B

.field public timescale:I


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/SampleEntry;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createTimecodeSampleEntry(IIII)Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;
    .locals 3

    .line 1
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/Header;

    const-string v2, "tmcd"

    invoke-direct {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    .line 2
    iput p0, v0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->flags:I

    .line 3
    iput p1, v0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->timescale:I

    .line 4
    iput p2, v0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->frameDuration:I

    int-to-byte p0, p3

    .line 5
    iput-byte p0, v0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->numFrames:B

    return-object v0
.end method


# virtual methods
.method public doWrite(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/SampleEntry;->doWrite(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->flags:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->timescale:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->frameDuration:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    iget-byte v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->numFrames:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, -0x31

    .line 7
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->flags:I

    return v0
.end method

.method public getFrameDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->frameDuration:I

    return v0
.end method

.method public getNumFrames()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->numFrames:B

    return v0
.end method

.method public getTimescale()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->timescale:I

    return v0
.end method

.method public isDropFrame()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/jcodec/containers/mp4/boxes/SampleEntry;->parse(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x4

    .line 2
    invoke-static {p1, v0}, Lorg/jcodec/common/io/NIOUtils;->skip(Ljava/nio/ByteBuffer;I)I

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->flags:I

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->timescale:I

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->frameDuration:I

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/jcodec/containers/mp4/boxes/TimecodeSampleEntry;->numFrames:B

    const/4 v0, 0x1

    .line 7
    invoke-static {p1, v0}, Lorg/jcodec/common/io/NIOUtils;->skip(Ljava/nio/ByteBuffer;I)I

    return-void
.end method
