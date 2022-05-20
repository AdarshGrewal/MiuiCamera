.class public Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;
.super Ljava/io/InputStream;
.source "MediaCodecInputStream.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mBuffer:Ljava/nio/ByteBuffer;

.field public mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field public mBuffers:[Ljava/nio/ByteBuffer;

.field public mClosed:Z

.field public mIndex:I

.field public mMediaCodec:Landroid/media/MediaCodec;

.field public mMediaFormat:Landroid/media/MediaFormat;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "MediaCodecInputStream"

    .line 2
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mMediaCodec:Landroid/media/MediaCodec;

    .line 4
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 5
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    .line 6
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mIndex:I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mClosed:Z

    .line 9
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mMediaCodec:Landroid/media/MediaCodec;

    .line 10
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mClosed:Z

    return-void
.end method

.method public getLastBufferInfo()Landroid/media/MediaCodec$BufferInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_4

    .line 2
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mClosed:Z

    if-nez v1, :cond_4

    .line 3
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/32 v3, 0x7a120

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mIndex:I

    if-ltz v1, :cond_0

    .line 4
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v2, v1

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_0
    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    const-string v3, "MediaCodecInputStream"

    if-ne v1, v2, :cond_2

    .line 7
    :try_start_1
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mMediaFormat:Landroid/media/MediaFormat;

    .line 8
    invoke-virtual {v1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const-string v1, "No buffer available..."

    .line 9
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mClosed:Z

    if-nez v1, :cond_6

    .line 12
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge p3, v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p3, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    sub-int/2addr p3, v1

    .line 13
    :goto_2
    :try_start_2
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 14
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iget-object p2, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lt p1, p2, :cond_7

    .line 15
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mMediaCodec:Landroid/media/MediaCodec;

    iget p2, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    move v0, p3

    goto :goto_3

    .line 17
    :cond_6
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This InputStream was closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 18
    :goto_3
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    move p3, v0

    :cond_7
    :goto_4
    return p3
.end method
