.class public Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;
.super Landroid/media/MediaCodec$Callback;
.source "MediaDecoderAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extravideo/common/MediaDecoderAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;


# direct methods
.method public constructor <init>(Lcom/miui/extravideo/common/MediaDecoderAsync;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/extravideo/common/MediaDecoderAsync;Lcom/miui/extravideo/common/MediaDecoderAsync$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;-><init>(Lcom/miui/extravideo/common/MediaDecoderAsync;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    const-string p1, "MediaDecoderAsync"

    const-string v0, "onError"

    .line 1
    invoke-static {p1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$300(Lcom/miui/extravideo/common/MediaDecoderAsync;)Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$300(Lcom/miui/extravideo/common/MediaDecoderAsync;)Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;->onError()V

    :cond_0
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 11

    const-string v0, "MediaDecoderAsync"

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {v2}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$100(Lcom/miui/extravideo/common/MediaDecoderAsync;)Landroid/media/MediaExtractor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 3
    iget-object v1, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {v1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$100(Lcom/miui/extravideo/common/MediaDecoderAsync;)Landroid/media/MediaExtractor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    .line 4
    iget-object v1, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {v1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$208(Lcom/miui/extravideo/common/MediaDecoderAsync;)I

    const-string v1, "input  decode index : %d time : %d simple size : %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    iget-object v4, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {v4}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$200(Lcom/miui/extravideo/common/MediaDecoderAsync;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {v1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$300(Lcom/miui/extravideo/common/MediaDecoderAsync;)Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {v1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$300(Lcom/miui/extravideo/common/MediaDecoderAsync;)Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {v2}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$200(Lcom/miui/extravideo/common/MediaDecoderAsync;)I

    move-result v2

    invoke-interface {v1, v2, v8, v9}, Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;->onFrameDecodeBegin(IJ)V

    :cond_0
    if-gez v7, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    move-object v1, p1

    move v2, p2

    .line 8
    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v4, p1

    move v5, p2

    .line 9
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$400(Lcom/miui/extravideo/common/MediaDecoderAsync;)I

    move-result p1

    if-ge v3, p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$100(Lcom/miui/extravideo/common/MediaDecoderAsync;)Landroid/media/MediaExtractor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "onInputBufferAvailable exception"

    .line 12
    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 7

    const-string v0, "MediaDecoderAsync"

    .line 1
    :try_start_0
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2
    :goto_0
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {v1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$300(Lcom/miui/extravideo/common/MediaDecoderAsync;)Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {v1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$300(Lcom/miui/extravideo/common/MediaDecoderAsync;)Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;

    move-result-object v1

    invoke-interface {v1, v4, p3}, Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;->onDecodeBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const-string v1, "output decode presentation time : %d"

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    iget-wide v5, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 7
    invoke-virtual {p1, p2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$300(Lcom/miui/extravideo/common/MediaDecoderAsync;)Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$300(Lcom/miui/extravideo/common/MediaDecoderAsync;)Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;->onDecodeStop(Z)V

    const-string p1, "OutputBuffer BUFFER_FLAG_END_OF_STREAM"

    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "onOutputBufferAvailable exception"

    .line 11
    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string v0, "onOutputFormatChanged : %s"

    .line 1
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaDecoderAsync"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$300(Lcom/miui/extravideo/common/MediaDecoderAsync;)Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$300(Lcom/miui/extravideo/common/MediaDecoderAsync;)Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;->onOutputFormatChange(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method
