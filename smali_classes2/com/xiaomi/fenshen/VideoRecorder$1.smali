.class public Lcom/xiaomi/fenshen/VideoRecorder$1;
.super Landroid/media/MediaCodec$Callback;
.source "VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/fenshen/VideoRecorder;->setVideoCallback()V
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
    iput-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder$1;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "video onError: "

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
    .locals 0

    const-string p1, "VideoRecorder"

    const-string p2, "Video onInputBufferAvailable"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/xiaomi/fenshen/VideoRecorder;->access$000()Z

    move-result v0

    const-string v1, " size "

    const-string v2, "VideoRecorder"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/system/Os;->gettid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Video onOutputBufferAvailable "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " offset "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ts "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " flag "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " count "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/fenshen/VideoRecorder$1;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    iget v3, v3, Lcom/xiaomi/fenshen/VideoRecorder;->videoBufferCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string p3, "Video got EOS"

    .line 4
    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p3, p0, Lcom/xiaomi/fenshen/VideoRecorder$1;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {p3}, Lcom/xiaomi/fenshen/VideoRecorder;->access$100(Lcom/xiaomi/fenshen/VideoRecorder;)Landroid/os/Handler;

    move-result-object p3

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder$1;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v0}, Lcom/xiaomi/fenshen/VideoRecorder;->access$100(Lcom/xiaomi/fenshen/VideoRecorder;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    invoke-virtual {p1, p2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void

    :cond_1
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const-string v0, "Video got BUFFER_FLAG_CODEC_CONFIG"

    .line 8
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iput v4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 10
    :cond_2
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const-string v0, "Video got BUFFER_FLAG_KEY_FRAME"

    .line 11
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_3
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 13
    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_6

    .line 14
    iget-object v3, p0, Lcom/xiaomi/fenshen/VideoRecorder$1;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v3}, Lcom/xiaomi/fenshen/VideoRecorder;->access$200(Lcom/xiaomi/fenshen/VideoRecorder;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 15
    iget-object v3, p0, Lcom/xiaomi/fenshen/VideoRecorder$1;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v3}, Lcom/xiaomi/fenshen/VideoRecorder;->access$400(Lcom/xiaomi/fenshen/VideoRecorder;)Landroid/media/MediaMuxer;

    move-result-object v3

    iget-object v5, p0, Lcom/xiaomi/fenshen/VideoRecorder$1;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v5}, Lcom/xiaomi/fenshen/VideoRecorder;->access$300(Lcom/xiaomi/fenshen/VideoRecorder;)I

    move-result v5

    invoke-virtual {v3, v5, v0, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 16
    invoke-static {}, Lcom/xiaomi/fenshen/VideoRecorder;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video writeSampleData info.flag "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " info.ts "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 18
    :cond_4
    new-instance v1, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;

    iget-object v3, p0, Lcom/xiaomi/fenshen/VideoRecorder$1;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-direct {v1, v3}, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;-><init>(Lcom/xiaomi/fenshen/VideoRecorder;)V

    .line 19
    iput-object v0, v1, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    .line 20
    iput-object p3, v1, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 21
    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder$1;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {v0}, Lcom/xiaomi/fenshen/VideoRecorder;->access$500(Lcom/xiaomi/fenshen/VideoRecorder;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const-string v0, "queue video"

    .line 22
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder$1;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    iget v1, v0, Lcom/xiaomi/fenshen/VideoRecorder;->videoBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/xiaomi/fenshen/VideoRecorder;->videoBufferCount:I

    .line 24
    :cond_6
    invoke-virtual {p1, p2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 25
    invoke-static {}, Lcom/xiaomi/fenshen/VideoRecorder;->access$000()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Video releaseOutputBuffer size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " oidx "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "video onOutputFormatChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoRecorder"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder$1;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-static {p1}, Lcom/xiaomi/fenshen/VideoRecorder;->access$300(Lcom/xiaomi/fenshen/VideoRecorder;)I

    move-result p1

    if-gez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder$1;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-virtual {p1, p2}, Lcom/xiaomi/fenshen/VideoRecorder;->addTrack(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method
