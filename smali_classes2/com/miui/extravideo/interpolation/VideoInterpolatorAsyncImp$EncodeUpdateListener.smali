.class public Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;
.super Ljava/lang/Object;
.source "VideoInterpolatorAsyncImp.java"

# interfaces
.implements Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EncodeUpdateListener"
.end annotation


# instance fields
.field public mEncodeIndex:I

.field public mIsEnd:Z

.field public final synthetic this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;


# direct methods
.method public constructor <init>(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->mIsEnd:Z

    .line 3
    iput p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->mEncodeIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;-><init>(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V

    return-void
.end method

.method private configFrame(Lcom/miui/extravideo/interpolation/EncodeBufferHolder;Lcom/miui/extravideo/interpolation/EncodeBufferHolder;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->data:[B

    iput-object v0, p1, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->data:[B

    .line 2
    iget v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->mEncodeIndex:I

    iget-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$1000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/common/MediaEncoderAsync;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->getFrameRate()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/extravideo/common/MediaUtils;->computePresentationTime(II)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->presentationTimeUs:J

    .line 3
    iget p2, p2, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->flag:I

    iput p2, p1, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->flag:I

    return-void
.end method

.method private notifyDecodeStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$500(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/common/MediaDecoderAsync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/extravideo/common/MediaDecoderAsync;->stop()V

    .line 2
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$1600(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method

.method private release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$1000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/common/MediaEncoderAsync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/extravideo/common/MediaEncoderAsync;->release()V

    .line 2
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$2100(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method


# virtual methods
.method public onEncodeEnd(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->release()V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$1900(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$2000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V

    :goto_0
    return-void
.end method

.method public onError()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->release()V

    .line 2
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->notifyDecodeStop()V

    .line 3
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$2000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V

    .line 4
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$200(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V

    return-void
.end method

.method public onInputBufferAvailable(Lcom/miui/extravideo/interpolation/EncodeBufferHolder;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->mIsEnd:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$1700(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 3
    iget v3, v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->flag:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    .line 4
    iput v3, p1, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->flag:I

    .line 5
    iput-boolean v5, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->mIsEnd:Z

    goto/16 :goto_1

    .line 6
    :cond_1
    iget v3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->mEncodeIndex:I

    const/16 v6, 0x12c

    if-lt v3, v6, :cond_2

    .line 7
    iput v4, p1, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->flag:I

    .line 8
    iput-boolean v5, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->mIsEnd:Z

    .line 9
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->notifyDecodeStop()V

    goto/16 :goto_1

    .line 10
    :cond_2
    iget-object v3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v3}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$1800(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)[I

    move-result-object v3

    iget v6, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->mEncodeIndex:I

    aget v3, v3, v6

    iget v6, v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->representativeIndex:I

    if-ne v3, v6, :cond_4

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->configFrame(Lcom/miui/extravideo/interpolation/EncodeBufferHolder;Lcom/miui/extravideo/interpolation/EncodeBufferHolder;)V

    .line 12
    iget p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->mEncodeIndex:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->mEncodeIndex:I

    .line 13
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$600(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$700(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 14
    :try_start_0
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$700(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$700(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$500(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/common/MediaDecoderAsync;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->getMediaParamsHolder()Lcom/miui/extravideo/common/MediaParamsHolder;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 17
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%s/encode_in_%d_%dX%d.yuv"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v6}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$700(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    iget v2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;->mEncodeIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    iget v5, p1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    iget p1, p1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoHeight:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    iget-object v0, v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->data:[B

    invoke-static {p1, v0}, Lcom/miui/extravideo/common/MediaUtils;->dumpYuv(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    invoke-static {}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to write image"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 20
    :cond_4
    iput v2, p1, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->flag:I

    .line 21
    iput-object v1, p1, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->data:[B

    goto :goto_1

    .line 22
    :cond_5
    iput v2, p1, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->flag:I

    .line 23
    iput-object v1, p1, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->data:[B

    :cond_6
    :goto_1
    return-void
.end method
