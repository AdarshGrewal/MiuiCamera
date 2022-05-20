.class public Lcom/android/gallery3d/exif/CountedDataInputStream;
.super Ljava/io/FilterInputStream;
.source "CountedDataInputStream.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final MAX_SKIP_BUFFER_SIZE:I = 0x800


# instance fields
.field public final mByteArray:[B

.field public final mByteBuffer:Ljava/nio/ByteBuffer;

.field public mCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/gallery3d/exif/CountedDataInputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mCount:I

    const/16 p1, 0x8

    new-array p1, p1, [B

    .line 3
    iput-object p1, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mByteArray:[B

    .line 4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public getReadByteCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mCount:I

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 6
    iget v1, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mCount:I

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mCount:I

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mCount:I

    if-ltz p1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mCount:I

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 4
    iget p2, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mCount:I

    if-ltz p1, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    add-int/2addr p2, p3

    iput p2, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mCount:I

    return p1
.end method

.method public readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readOrThrow([BII)V

    .line 2
    iget-object v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 3
    iget-object v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readOrThrow([BII)V

    .line 2
    iget-object v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 3
    iget-object v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readOrThrow([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readOrThrow([BII)V

    return-void
.end method

.method public readOrThrow([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/gallery3d/exif/CountedDataInputStream;->read([BII)I

    move-result p1

    if-ne p1, p3, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readOrThrow([BII)V

    .line 2
    iget-object v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 3
    iget-object v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public readString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-array p1, p1, [B

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readOrThrow([B)V

    .line 3
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-array p1, p1, [B

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readOrThrow([B)V

    .line 6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public readUnsignedInt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public skip(J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x800

    .line 1
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 2
    new-array v3, v2, [B

    move-wide v4, p1

    :goto_0
    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    .line 3
    iget-object v6, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    const/4 v7, 0x0

    int-to-long v8, v2

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v6, v3, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v6, v6

    sub-long/2addr v4, v6

    goto :goto_0

    :cond_2
    :goto_1
    sub-long/2addr p1, v4

    .line 4
    iget v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mCount:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mCount:I

    return-wide p1
.end method

.method public skipOrThrow(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public skipTo(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/gallery3d/exif/CountedDataInputStream;->mCount:I

    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/CountedDataInputStream;->skipOrThrow(J)V

    return-void
.end method
