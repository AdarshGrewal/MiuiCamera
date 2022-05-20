.class public Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;
.super Ljava/lang/Object;
.source "VideoInterpolatorAsyncImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;,
        Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;,
        Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;
    }
.end annotation


# static fields
.field public static final DECODE_THREAD_NAME:Ljava/lang/String; = "DecodeThread"

.field public static final ENCODE_THREAD_NAME:Ljava/lang/String; = "EncodeThread"

.field public static final FRAME_RATE_NORMAL:I = 0x1e

.field public static final FRAME_SIZE_ANIMATION_DURING:I = 0x8

.field public static final FRAME_SKIP_SIZE_ANIMATION_BEGIN:I = 0x10

.field public static final INTERPOLATOR_ACCURACY:I = 0x1

.field public static final MAX_BUFFER_SIZE:I = 0xf

.field public static final TAG:Ljava/lang/String; = "VideoInterpolatorAsyncImp"

.field public static final TOTAL_FRAME_SIZE:I = 0x12c

.field public static bInitWatemarkPipeline:Ljava/lang/Boolean;


# instance fields
.field public mDecodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

.field public mDecoder:Lcom/miui/extravideo/common/MediaDecoderAsync;

.field public mDegree:I

.field public final mDstPath:Ljava/lang/String;

.field public mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

.field public mEncodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

.field public mEncoder:Lcom/miui/extravideo/common/MediaEncoderAsync;

.field public mFrameIndexBeginInterpolation:I

.field public mFrameMapping:[I

.field public mFrameSizeInterpolation:I

.field public mNeedDump:Z

.field public mOriginFPS:I

.field public mOriginVideoTrack:I

.field public final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/miui/extravideo/interpolation/EncodeBufferHolder;",
            ">;"
        }
    .end annotation
.end field

.field public mSkipSizeOrigin2Normal:I

.field public mSkipSizeTarget2Normal:I

.field public mSkipSizeTarget2Origin:I

.field public final mSrcPath:Ljava/lang/String;

.field public final mSupportDeFlicker:Z

.field public final mSupportEditor:Z

.field public final mSupportWatermark:Z

.field public mTargetFPS:I

.field public mWatermarkPipeline:Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;

.field public mYuvFile:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->bInitWatemarkPipeline:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZ)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v4, 0x3c0

    .line 5
    iput v4, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mTargetFPS:I

    const/16 v5, 0xf0

    .line 6
    iput v5, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mOriginFPS:I

    const/16 v6, 0x3c0

    .line 7
    div-int/lit8 v6, v6, 0x1e

    iput v6, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSkipSizeTarget2Normal:I

    .line 8
    div-int/2addr v4, v5

    iput v4, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSkipSizeTarget2Origin:I

    .line 9
    div-int/lit8 v5, v5, 0x1e

    iput v5, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSkipSizeOrigin2Normal:I

    .line 10
    iput v4, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameSizeInterpolation:I

    const/16 v4, 0x2d

    .line 11
    iput v4, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameIndexBeginInterpolation:I

    .line 12
    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v6, 0xf

    invoke-direct {v5, v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v5, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    const/16 v5, 0x12c

    new-array v5, v5, [I

    .line 13
    iput-object v5, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameMapping:[I

    const/4 v5, 0x0

    .line 14
    iput-boolean v5, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mNeedDump:Z

    const/4 v6, 0x0

    .line 15
    iput-object v6, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mYuvFile:Ljava/io/File;

    .line 16
    iput v1, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mOriginFPS:I

    .line 17
    iput v2, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mTargetFPS:I

    .line 18
    div-int/lit8 v7, v2, 0x1e

    iput v7, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSkipSizeTarget2Normal:I

    .line 19
    div-int v7, v2, v1

    iput v7, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSkipSizeTarget2Origin:I

    .line 20
    div-int/lit8 v1, v1, 0x1e

    iput v1, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSkipSizeOrigin2Normal:I

    .line 21
    iput v7, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameSizeInterpolation:I

    const/16 v1, 0x1e0

    if-eq v2, v1, :cond_0

    .line 22
    iput v4, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameIndexBeginInterpolation:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x24

    .line 23
    iput v1, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameIndexBeginInterpolation:I

    :goto_0
    move/from16 v1, p5

    .line 24
    iput-boolean v1, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSupportDeFlicker:Z

    if-eqz p6, :cond_1

    const/4 v5, 0x1

    .line 25
    :cond_1
    iput-boolean v5, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSupportWatermark:Z

    move/from16 v1, p8

    .line 26
    iput-boolean v1, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSupportEditor:Z

    move-object/from16 v1, p4

    .line 27
    iput-object v1, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDstPath:Ljava/lang/String;

    .line 28
    iput-object v3, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSrcPath:Ljava/lang/String;

    .line 29
    new-instance v1, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    const-string v2, "DecodeThread"

    invoke-direct {v1, v2}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    .line 30
    new-instance v1, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    const-string v2, "EncodeThread"

    invoke-direct {v1, v2}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    .line 31
    new-instance v1, Lcom/miui/extravideo/common/MediaDecoderAsync;

    iget-object v2, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    invoke-static {v2}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;->access$000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/miui/extravideo/common/MediaDecoderAsync;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecoder:Lcom/miui/extravideo/common/MediaDecoderAsync;

    .line 32
    invoke-virtual {v1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->getMediaParamsHolder()Lcom/miui/extravideo/common/MediaParamsHolder;

    move-result-object v1

    .line 33
    iget v10, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoDegree:I

    iput v10, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDegree:I

    .line 34
    new-instance v2, Lcom/miui/extravideo/common/MediaEncoderAsync;

    iget v8, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoWidth:I

    iget v9, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoHeight:I

    iget-object v11, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->mimeType:Ljava/lang/String;

    iget-object v12, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDstPath:Ljava/lang/String;

    iget-object v3, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    .line 35
    invoke-static {v3}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;->access$000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;)Landroid/os/Handler;

    move-result-object v13

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/miui/extravideo/common/MediaEncoderAsync;-><init>(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncoder:Lcom/miui/extravideo/common/MediaEncoderAsync;

    .line 36
    iget-object v2, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecoder:Lcom/miui/extravideo/common/MediaDecoderAsync;

    new-instance v3, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;

    invoke-direct {v3, p0, v1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;-><init>(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;Lcom/miui/extravideo/common/MediaParamsHolder;)V

    invoke-virtual {v2, v3}, Lcom/miui/extravideo/common/MediaDecoderAsync;->setListener(Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;)V

    .line 37
    iget-object v2, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncoder:Lcom/miui/extravideo/common/MediaEncoderAsync;

    new-instance v3, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;

    invoke-direct {v3, p0, v6}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;-><init>(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$1;)V

    invoke-virtual {v2, v3}, Lcom/miui/extravideo/common/MediaEncoderAsync;->setListener(Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;)V

    .line 38
    iget-boolean v2, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSupportWatermark:Z

    if-eqz v2, :cond_2

    .line 39
    new-instance v7, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;

    invoke-direct {v7}, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;-><init>()V

    iput-object v7, v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mWatermarkPipeline:Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;

    .line 40
    iget v8, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoWidth:I

    iget v9, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoHeight:I

    iget v12, v1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoDegree:I

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v7 .. v12}, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->init(IILandroid/graphics/Bitmap;[FI)V

    .line 41
    :cond_2
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->initMapping()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;-><init>(IILjava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZ)V

    .line 2
    iput-boolean p9, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mNeedDump:Z

    if-eqz p9, :cond_0

    .line 3
    new-instance p1, Ljava/io/File;

    const-string p2, "sdcard/DCIM/Camera/DumpYuv/"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mYuvFile:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZ)V
    .locals 9

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c0

    .line 43
    iput v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mTargetFPS:I

    const/16 v1, 0xf0

    .line 44
    iput v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mOriginFPS:I

    const/16 v2, 0x3c0

    .line 45
    div-int/lit8 v2, v2, 0x1e

    iput v2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSkipSizeTarget2Normal:I

    .line 46
    div-int/2addr v0, v1

    iput v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSkipSizeTarget2Origin:I

    .line 47
    div-int/lit8 v1, v1, 0x1e

    iput v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSkipSizeOrigin2Normal:I

    .line 48
    iput v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameSizeInterpolation:I

    const/16 v0, 0x2d

    .line 49
    iput v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameIndexBeginInterpolation:I

    .line 50
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    const/16 v0, 0x12c

    new-array v0, v0, [I

    .line 51
    iput-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameMapping:[I

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mNeedDump:Z

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mYuvFile:Ljava/io/File;

    .line 54
    iput-boolean p3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSupportDeFlicker:Z

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    .line 55
    :cond_0
    iput-boolean v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSupportWatermark:Z

    .line 56
    iput-boolean p6, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSupportEditor:Z

    .line 57
    iput-object p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDstPath:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSrcPath:Ljava/lang/String;

    .line 59
    new-instance p2, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    const-string p3, "DecodeThread"

    invoke-direct {p2, p3}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    .line 60
    new-instance p2, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    const-string p3, "EncodeThread"

    invoke-direct {p2, p3}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    .line 61
    new-instance p2, Lcom/miui/extravideo/common/MediaDecoderAsync;

    iget-object p3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    invoke-static {p3}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;->access$000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;)Landroid/os/Handler;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/miui/extravideo/common/MediaDecoderAsync;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecoder:Lcom/miui/extravideo/common/MediaDecoderAsync;

    .line 62
    invoke-virtual {p2}, Lcom/miui/extravideo/common/MediaDecoderAsync;->getMediaParamsHolder()Lcom/miui/extravideo/common/MediaParamsHolder;

    move-result-object p1

    .line 63
    iget v5, p1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoDegree:I

    iput v5, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDegree:I

    .line 64
    new-instance p2, Lcom/miui/extravideo/common/MediaEncoderAsync;

    iget v3, p1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoWidth:I

    iget v4, p1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoHeight:I

    iget-object v6, p1, Lcom/miui/extravideo/common/MediaParamsHolder;->mimeType:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDstPath:Ljava/lang/String;

    iget-object p3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    .line 65
    invoke-static {p3}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;->access$000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;)Landroid/os/Handler;

    move-result-object v8

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lcom/miui/extravideo/common/MediaEncoderAsync;-><init>(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncoder:Lcom/miui/extravideo/common/MediaEncoderAsync;

    .line 66
    iget-object p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecoder:Lcom/miui/extravideo/common/MediaDecoderAsync;

    new-instance p3, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;

    invoke-direct {p3, p0, p1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;-><init>(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;Lcom/miui/extravideo/common/MediaParamsHolder;)V

    invoke-virtual {p2, p3}, Lcom/miui/extravideo/common/MediaDecoderAsync;->setListener(Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;)V

    .line 67
    iget-object p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncoder:Lcom/miui/extravideo/common/MediaEncoderAsync;

    new-instance p3, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;

    invoke-direct {p3, p0, v1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;-><init>(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$1;)V

    invoke-virtual {p2, p3}, Lcom/miui/extravideo/common/MediaEncoderAsync;->setListener(Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;)V

    .line 68
    iget-boolean p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSupportWatermark:Z

    if-eqz p2, :cond_1

    .line 69
    new-instance v0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;

    invoke-direct {v0}, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;-><init>()V

    iput-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mWatermarkPipeline:Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;

    .line 70
    iget v1, p1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoWidth:I

    iget v2, p1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoHeight:I

    iget v5, p1, Lcom/miui/extravideo/common/MediaParamsHolder;->videoDegree:I

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->init(IILandroid/graphics/Bitmap;[FI)V

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->initMapping()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/common/MediaEncoderAsync;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncoder:Lcom/miui/extravideo/common/MediaEncoderAsync;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;[BJI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->putBufferToQueue([BJI)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSkipSizeTarget2Origin:I

    return p0
.end method

.method public static synthetic access$1300(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSkipSizeTarget2Normal:I

    return p0
.end method

.method public static synthetic access$1400(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->putEndFlagToQueue()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/interpolation/EncodeBufferHolder;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->getBufferFromQueue()Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameMapping:[I

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->notifyTaskFinish()V

    return-void
.end method

.method public static synthetic access$200(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->notifyTaskError()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->deleteBadFile()V

    return-void
.end method

.method public static synthetic access$2100(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSupportDeFlicker:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameIndexBeginInterpolation:I

    return p0
.end method

.method public static synthetic access$500(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/common/MediaDecoderAsync;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecoder:Lcom/miui/extravideo/common/MediaDecoderAsync;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mNeedDump:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mYuvFile:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameSizeInterpolation:I

    return p0
.end method

.method private addMetaData()V
    .locals 7

    const-string v0, "jcodec"

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDstPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/jcodec/movtool/MetadataEditor;->createFrom(Ljava/io/File;)Lorg/jcodec/movtool/MetadataEditor;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lorg/jcodec/movtool/MetadataEditor;->getKeyedMeta()Ljava/util/Map;

    move-result-object v2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "com.xiaomi.capture_framerate"

    .line 4
    iget v6, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mTargetFPS:I

    invoke-static {v6}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->createInt(I)Lorg/jcodec/containers/mp4/boxes/MetaValue;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v5, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSupportEditor:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mOriginVideoTrack:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const-string v5, "com.xiaomi.capture_origin_track"

    .line 6
    iget v6, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mOriginVideoTrack:I

    invoke-static {v6}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->createInt(I)Lorg/jcodec/containers/mp4/boxes/MetaValue;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Lorg/jcodec/movtool/MetadataEditor;->save(Z)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "error \n"

    .line 9
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private addOriginVideoToTrack()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSupportEditor:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDstPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".tempResult"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 5
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSrcPath:Ljava/lang/String;

    iget v5, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDegree:I

    invoke-static {v2, v3, v4, v5}, Lcom/miui/extravideo/common/MediaUtils;->mixVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mOriginVideoTrack:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :goto_0
    return-void
.end method

.method private deleteBadFile()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDstPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private getAddIndexByFrame(I)I
    .locals 4

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 2
    iget v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameIndexBeginInterpolation:I

    const/4 v2, 0x1

    if-ge p1, v1, :cond_0

    .line 3
    iget v2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSkipSizeTarget2Normal:I

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, 0x8

    if-ge p1, v3, :cond_1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr p1, v1

    .line 4
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    const/high16 v0, 0x41700000    # 15.0f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v1, v0

    .line 5
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v2, p1

    :cond_1
    :goto_0
    return v2
.end method

.method private getBufferFromQueue()Lcom/miui/extravideo/interpolation/EncodeBufferHolder;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private initMapping()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameMapping:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-direct {p0, v1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->getAddIndexByFrame(I)I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    .line 3
    iget-object v2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameMapping:[I

    aput v0, v2, v1

    goto :goto_1

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameMapping:[I

    add-int/lit8 v4, v1, -0x1

    aget v4, v3, v4

    add-int/2addr v4, v2

    aput v4, v3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyTaskError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/miui/extravideo/interpolation/EncodeListener;->onError()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    :cond_0
    return-void
.end method

.method private notifyTaskFinish()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->addOriginVideoToTrack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/miui/extravideo/interpolation/EncodeListener;->onError()V

    .line 5
    iput-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->addMetaData()V

    .line 7
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/miui/extravideo/interpolation/EncodeListener;->onEncodeFinish()V

    .line 9
    iput-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    :cond_2
    return-void
.end method

.method private putBufferToQueue([BJI)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSupportWatermark:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mWatermarkPipeline:Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->process([B)V

    .line 3
    :cond_0
    new-instance v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    invoke-direct {v0}, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;-><init>()V

    .line 4
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->data:[B

    const/4 p1, 0x0

    .line 5
    iput p1, v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->flag:I

    .line 6
    iput-wide p2, v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->presentationTimeUs:J

    .line 7
    iput p4, v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->representativeIndex:I

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private putEndFlagToQueue()V
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    invoke-direct {v0}, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;-><init>()V

    const/4 v1, 0x4

    .line 2
    iput v1, v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->flag:I

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public doDecodeAndEncode()V
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doDecodeAndEncode FRAME_SKIP_SIZE_ORIGIN_SPEED_TO_NORMAL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSkipSizeOrigin2Normal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecoder:Lcom/miui/extravideo/common/MediaDecoderAsync;

    iget v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSkipSizeOrigin2Normal:I

    invoke-virtual {v0, v1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->setSkipFrameTimes(I)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecoder:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-virtual {v0}, Lcom/miui/extravideo/common/MediaDecoderAsync;->start()V

    .line 4
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncoder:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-virtual {v0}, Lcom/miui/extravideo/common/MediaEncoderAsync;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;->access$000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$1;

    invoke-direct {v1, p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$1;-><init>(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 9
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :goto_0
    return-void
.end method

.method public setEncodeListener(Lcom/miui/extravideo/interpolation/EncodeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    return-void
.end method
