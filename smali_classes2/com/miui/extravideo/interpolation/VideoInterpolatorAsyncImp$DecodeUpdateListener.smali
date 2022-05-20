.class public Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;
.super Ljava/lang/Object;
.source "VideoInterpolatorAsyncImp.java"

# interfaces
.implements Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecodeUpdateListener"
.end annotation


# instance fields
.field public mBeginInterpolator:Z

.field public mDeFlickerJni:Lcom/miui/extravideo/deflicker/DeFlickerJni;

.field public mDecodeIndex:I

.field public mEncodeBuffer:[B

.field public final mHeight:I

.field public final mMediaInterpolator:Lcom/miui/extravideo/interpolation/MediaInterpolator;

.field public mMediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

.field public mRepresentativeIndex:I

.field public final mWidth:I

.field public mYuvBuffer:[B

.field public final synthetic this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;


# direct methods
.method public constructor <init>(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;Lcom/miui/extravideo/common/MediaParamsHolder;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mDecodeIndex:I

    .line 3
    iput-boolean v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mBeginInterpolator:Z

    .line 4
    iput v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mRepresentativeIndex:I

    .line 5
    iput-object p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mMediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

    .line 6
    iget v0, p2, Lcom/miui/extravideo/common/MediaParamsHolder;->videoWidth:I

    iput v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mWidth:I

    .line 7
    iget p2, p2, Lcom/miui/extravideo/common/MediaParamsHolder;->videoHeight:I

    iput p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mHeight:I

    .line 8
    new-instance v1, Lcom/miui/extravideo/interpolation/MediaInterpolator;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, v2}, Lcom/miui/extravideo/interpolation/MediaInterpolator;-><init>(III)V

    iput-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mMediaInterpolator:Lcom/miui/extravideo/interpolation/MediaInterpolator;

    .line 9
    invoke-static {p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$300(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    new-instance p1, Lcom/miui/extravideo/deflicker/DeFlickerJni;

    iget p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mWidth:I

    iget v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mHeight:I

    invoke-direct {p1, p2, v0}, Lcom/miui/extravideo/deflicker/DeFlickerJni;-><init>(II)V

    iput-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mDeFlickerJni:Lcom/miui/extravideo/deflicker/DeFlickerJni;

    :cond_0
    return-void
.end method

.method private initEncodeBuffer(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mEncodeBuffer:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mEncodeBuffer:[B

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mEncodeBuffer:[B

    if-nez v0, :cond_1

    .line 4
    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mEncodeBuffer:[B

    :cond_1
    return-void
.end method

.method private initYuvBuffer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mYuvBuffer:[B

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mWidth:I

    iget v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mYuvBuffer:[B

    :cond_0
    return-void
.end method

.method private notifyEncodeStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$1000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/common/MediaEncoderAsync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/extravideo/common/MediaEncoderAsync;->stop()V

    .line 2
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$1600(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method

.method private release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$500(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/common/MediaDecoderAsync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/extravideo/common/MediaDecoderAsync;->release()V

    .line 2
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mMediaInterpolator:Lcom/miui/extravideo/interpolation/MediaInterpolator;

    invoke-virtual {v0}, Lcom/miui/extravideo/interpolation/MediaInterpolator;->release()V

    .line 3
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mDeFlickerJni:Lcom/miui/extravideo/deflicker/DeFlickerJni;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/extravideo/deflicker/DeFlickerJni;->release()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$1500(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method


# virtual methods
.method public onDecodeBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->initEncodeBuffer(Landroid/media/MediaCodec$BufferInfo;)V

    .line 2
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->initYuvBuffer()V

    .line 3
    iget-object p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mEncodeBuffer:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mEncodeBuffer:[B

    array-length p2, p1

    if-lez p2, :cond_6

    .line 6
    iget-object p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mYuvBuffer:[B

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mMediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

    invoke-static {p1, p2, v0}, Lcom/miui/extravideo/common/MediaColorConvertUtils;->convertDecodeColorToEncode([B[BLcom/miui/extravideo/common/MediaParamsHolder;)V

    .line 7
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$600(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$700(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$700(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$700(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 10
    :cond_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v0, "%s/decode_out_%d_%dX%d.yuv"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v3}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$700(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mDecodeIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    const/4 v2, 0x2

    iget v3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mYuvBuffer:[B

    invoke-static {p1, v0}, Lcom/miui/extravideo/common/MediaUtils;->dumpYuv(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-static {}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to write image"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mDeFlickerJni:Lcom/miui/extravideo/deflicker/DeFlickerJni;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mYuvBuffer:[B

    invoke-virtual {p1, v0}, Lcom/miui/extravideo/deflicker/DeFlickerJni;->process([B)V

    .line 14
    :cond_2
    iget-boolean p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mBeginInterpolator:Z

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mMediaInterpolator:Lcom/miui/extravideo/interpolation/MediaInterpolator;

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$900(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mYuvBuffer:[B

    invoke-virtual {p1, v0, v1}, Lcom/miui/extravideo/interpolation/MediaInterpolator;->configInterpolationSize(I[B)V

    .line 16
    :goto_1
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mMediaInterpolator:Lcom/miui/extravideo/interpolation/MediaInterpolator;

    invoke-virtual {p1}, Lcom/miui/extravideo/interpolation/MediaInterpolator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mMediaInterpolator:Lcom/miui/extravideo/interpolation/MediaInterpolator;

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mYuvBuffer:[B

    invoke-virtual {p1, v0}, Lcom/miui/extravideo/interpolation/MediaInterpolator;->nextByteBuffer([B)V

    .line 18
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mYuvBuffer:[B

    iget v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mDecodeIndex:I

    invoke-static {p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$1000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/common/MediaEncoderAsync;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/extravideo/common/MediaEncoderAsync;->getFrameRate()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/extravideo/common/MediaUtils;->computePresentationTime(II)J

    move-result-wide v1

    iget v3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mRepresentativeIndex:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$1100(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;[BJI)V

    .line 19
    iget p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mDecodeIndex:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mDecodeIndex:I

    .line 20
    iget p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mRepresentativeIndex:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mRepresentativeIndex:I

    goto :goto_1

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mYuvBuffer:[B

    iget v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mDecodeIndex:I

    invoke-static {p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$1000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/common/MediaEncoderAsync;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/extravideo/common/MediaEncoderAsync;->getFrameRate()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/extravideo/common/MediaUtils;->computePresentationTime(II)J

    move-result-wide v1

    iget v3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mRepresentativeIndex:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$1100(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;[BJI)V

    .line 22
    iget p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mDecodeIndex:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mDecodeIndex:I

    .line 23
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$400(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 24
    iget p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mRepresentativeIndex:I

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$1200(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mRepresentativeIndex:I

    goto :goto_2

    .line 25
    :cond_4
    iget p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mRepresentativeIndex:I

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$1300(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mRepresentativeIndex:I

    .line 26
    :cond_5
    :goto_2
    iget p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mDecodeIndex:I

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$400(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)I

    move-result v0

    sub-int/2addr v0, p2

    if-ne p1, v0, :cond_6

    .line 27
    iput-boolean p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mBeginInterpolator:Z

    :cond_6
    return-void
.end method

.method public onDecodeStop(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->release()V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$1400(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V

    :cond_0
    return-void
.end method

.method public onError()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->release()V

    .line 2
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->notifyEncodeStop()V

    .line 3
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$200(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V

    return-void
.end method

.method public onFrameDecodeBegin(IJ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {p2}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$400(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$500(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/common/MediaDecoderAsync;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/extravideo/common/MediaDecoderAsync;->setSkipFrameTimes(I)V

    :cond_0
    return-void
.end method

.method public onOutputFormatChange(Landroid/media/MediaFormat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;->mMediaParamsHolder:Lcom/miui/extravideo/common/MediaParamsHolder;

    invoke-virtual {v0, p1}, Lcom/miui/extravideo/common/MediaParamsHolder;->setFormat(Landroid/media/MediaFormat;)V

    return-void
.end method
