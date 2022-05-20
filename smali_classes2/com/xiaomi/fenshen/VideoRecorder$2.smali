.class public Lcom/xiaomi/fenshen/VideoRecorder$2;
.super Landroid/media/MediaCodec$Callback;
.source "VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/fenshen/VideoRecorder;->setAudioCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/fenshen/VideoRecorder;


# direct methods
.method public constructor <init>(Lcom/xiaomi/fenshen/VideoRecorder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Audio onError: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoRecorder"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 15

    move-object v0, p0

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/VideoRecorder;->access$000()Z

    move-result v1

    const-string v2, "VideoRecorder"

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio onInputBufferAvailable idx "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " inQueue "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v4}, Lcom/xiaomi/fenshen/VideoRecorder;->access$600(Lcom/xiaomi/fenshen/VideoRecorder;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v3, p2

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4
    iget-object v4, v0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v4}, Lcom/xiaomi/fenshen/VideoRecorder;->access$600(Lcom/xiaomi/fenshen/VideoRecorder;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 5
    iget-object v4, v0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v4}, Lcom/xiaomi/fenshen/VideoRecorder;->access$600(Lcom/xiaomi/fenshen/VideoRecorder;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;

    .line 6
    iget-object v5, v0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v5}, Lcom/xiaomi/fenshen/VideoRecorder;->access$600(Lcom/xiaomi/fenshen/VideoRecorder;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 7
    iget-object v5, v4, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    const/4 v6, 0x4

    iput v6, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const-string v5, "input audio EOS frame"

    .line 8
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    iget-object v5, v4, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v11, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 10
    iget-wide v12, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 11
    iget v14, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 12
    iget-object v4, v4, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move v7, v11

    move-wide v8, v12

    move v10, v14

    .line 13
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 14
    invoke-static {}, Lcom/xiaomi/fenshen/VideoRecorder;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio queueInputBuffer size "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ts "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " flag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/VideoRecorder;->access$000()Z

    move-result v0

    const-string v1, " flag "

    const-string v2, " ts "

    const-string v3, " size "

    const-string v4, "VideoRecorder"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio onOutputBufferAvailable "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " offset "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " count "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    iget v5, v5, Lcom/xiaomi/fenshen/VideoRecorder;->audioBufferCount:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v0, 0x4

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const-string p3, "Audio got EOS"

    .line 4
    invoke-static {v4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p3, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {p3}, Lcom/xiaomi/fenshen/VideoRecorder;->access$100(Lcom/xiaomi/fenshen/VideoRecorder;)Landroid/os/Handler;

    move-result-object p3

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v0}, Lcom/xiaomi/fenshen/VideoRecorder;->access$100(Lcom/xiaomi/fenshen/VideoRecorder;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    invoke-virtual {p1, p2, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void

    :cond_1
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const-string v0, "Audio got BUFFER_FLAG_CODEC_CONFIG"

    .line 8
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iput v6, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 10
    :cond_2
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const-string v0, "Audio got BUFFER_FLAG_KEY_FRAME"

    .line 11
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_3
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v0, :cond_6

    .line 13
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 14
    iget-object v5, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v5}, Lcom/xiaomi/fenshen/VideoRecorder;->access$200(Lcom/xiaomi/fenshen/VideoRecorder;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 15
    iget-object v5, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v5}, Lcom/xiaomi/fenshen/VideoRecorder;->access$400(Lcom/xiaomi/fenshen/VideoRecorder;)Landroid/media/MediaMuxer;

    move-result-object v5

    iget-object v7, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v7}, Lcom/xiaomi/fenshen/VideoRecorder;->access$700(Lcom/xiaomi/fenshen/VideoRecorder;)I

    move-result v7

    invoke-virtual {v5, v7, v0, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 16
    invoke-static {}, Lcom/xiaomi/fenshen/VideoRecorder;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio writeSampleData info.ts "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 18
    :cond_4
    new-instance v3, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;

    iget-object v5, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-direct {v3, v5}, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;-><init>(Lcom/xiaomi/fenshen/VideoRecorder;)V

    .line 19
    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v3, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    .line 20
    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v7, v5, [B

    .line 21
    invoke-virtual {v0, v7, v6, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 22
    iget-object v0, v3, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v7, v6, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 23
    iget-object v0, v3, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 24
    iget-object v0, v3, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 25
    iput-object p3, v3, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 26
    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v0}, Lcom/xiaomi/fenshen/VideoRecorder;->access$800(Lcom/xiaomi/fenshen/VideoRecorder;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    iget v3, v0, Lcom/xiaomi/fenshen/VideoRecorder;->audioBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/xiaomi/fenshen/VideoRecorder;->audioBufferCount:I

    .line 28
    invoke-static {}, Lcom/xiaomi/fenshen/VideoRecorder;->access$000()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio getOutputBuffer size "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_6
    invoke-virtual {p1, p2, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Audio onOutputFormatChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoRecorder"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {p1}, Lcom/xiaomi/fenshen/VideoRecorder;->access$700(Lcom/xiaomi/fenshen/VideoRecorder;)I

    move-result p1

    if-gez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder$2;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-virtual {p1, p2}, Lcom/xiaomi/fenshen/VideoRecorder;->addTrack(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method
