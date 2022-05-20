.class public Lcom/xiaomi/camera/core/MultiFrameProcessor;
.super Ljava/lang/Object;
.source "MultiFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/MultiFrameProcessor$ProcessDataAndTaskSession;,
        Lcom/xiaomi/camera/core/MultiFrameProcessor$WorkerHandler;,
        Lcom/xiaomi/camera/core/MultiFrameProcessor$MultiFrameProcessorHolder;
    }
.end annotation


# static fields
.field public static final REPROCESS_TIMEOUT_MS:I = 0x1f40

.field public static final TAG:Ljava/lang/String; = "MultiFrameProcessor"


# instance fields
.field public final MSG_PROCESS_DATA:I

.field public mHandler:Landroid/os/Handler;

.field public final mObjLock:Ljava/lang/Object;

.field public mProcessResultListener:Lcom/xiaomi/camera/processor/ProcessResultListener;

.field public mReprocessStartTime:J

.field public mReprocessing:Z

.field public mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mObjLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/xiaomi/camera/core/MultiFrameProcessor$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/core/MultiFrameProcessor$1;-><init>(Lcom/xiaomi/camera/core/MultiFrameProcessor;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mProcessResultListener:Lcom/xiaomi/camera/processor/ProcessResultListener;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->MSG_PROCESS_DATA:I

    .line 6
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MultiFrameProcessorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mWorkThread:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 8
    new-instance v0, Lcom/xiaomi/camera/core/MultiFrameProcessor$WorkerHandler;

    iget-object v1, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/core/MultiFrameProcessor$WorkerHandler;-><init>(Lcom/xiaomi/camera/core/MultiFrameProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/core/MultiFrameProcessor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/core/MultiFrameProcessor;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/xiaomi/camera/core/MultiFrameProcessor;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->reprocessImage(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;IZ)V

    return-void
.end method

.method public static synthetic access$300(Lcom/xiaomi/camera/core/MultiFrameProcessor;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mObjLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/xiaomi/camera/core/MultiFrameProcessor;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mReprocessing:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/xiaomi/camera/core/MultiFrameProcessor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mReprocessStartTime:J

    return-wide v0
.end method

.method public static synthetic access$600(Lcom/xiaomi/camera/core/MultiFrameProcessor;Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/engine/TaskSession;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->doProcess(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/engine/TaskSession;)V

    return-void
.end method

.method private doProcess(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/engine/TaskSession;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doProcess: start process task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-boolean v0, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_MULTI:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    sget-object p2, Lcom/xiaomi/camera/core/MultiFrameProcessor;->TAG:Ljava/lang/String;

    const-string v0, "prop skip multi"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p2, Lcom/xiaomi/camera/processor/MockMultiProcessor;

    invoke-direct {p2}, Lcom/xiaomi/camera/processor/MockMultiProcessor;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mProcessResultListener:Lcom/xiaomi/camera/processor/ProcessResultListener;

    invoke-virtual {p2, p1, v0, v1}, Lcom/xiaomi/camera/processor/MockMultiProcessor;->doProcess(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/camera/processor/ProcessResultListener;Lcom/xiaomi/engine/TaskSession;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    .line 6
    new-instance p2, Lcom/xiaomi/camera/processor/ClearShotProcessor;

    invoke-direct {p2}, Lcom/xiaomi/camera/processor/ClearShotProcessor;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mProcessResultListener:Lcom/xiaomi/camera/processor/ProcessResultListener;

    invoke-virtual {p2, p1, v0, v1}, Lcom/xiaomi/camera/processor/ClearShotProcessor;->doProcess(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/camera/processor/ProcessResultListener;Lcom/xiaomi/engine/TaskSession;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-ne v2, v0, :cond_2

    .line 7
    new-instance p2, Lcom/xiaomi/camera/processor/GroupShotProcessor;

    invoke-direct {p2}, Lcom/xiaomi/camera/processor/GroupShotProcessor;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mProcessResultListener:Lcom/xiaomi/camera/processor/ProcessResultListener;

    invoke-virtual {p2, p1, v0, v1}, Lcom/xiaomi/camera/processor/GroupShotProcessor;->doProcess(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/camera/processor/ProcessResultListener;Lcom/xiaomi/engine/TaskSession;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v1, v0, :cond_4

    .line 8
    new-instance v0, Lcom/xiaomi/camera/processor/SuperResolutionProcessor;

    invoke-direct {v0}, Lcom/xiaomi/camera/processor/SuperResolutionProcessor;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoSize()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/camera/processor/SuperResolutionProcessor;->setOutputSize(II)V

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mProcessResultListener:Lcom/xiaomi/camera/processor/ProcessResultListener;

    invoke-virtual {v0, p1, v1, p2}, Lcom/xiaomi/camera/processor/SuperResolutionProcessor;->doProcess(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/camera/processor/ProcessResultListener;Lcom/xiaomi/engine/TaskSession;)V

    :goto_0
    return-void

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown multi-frame process algorithm type: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance()Lcom/xiaomi/camera/core/MultiFrameProcessor;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/MultiFrameProcessor$MultiFrameProcessorHolder;->INSTANCE:Lcom/xiaomi/camera/core/MultiFrameProcessor;

    return-object v0
.end method

.method private reprocessImage(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;IZ)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 1
    new-instance v11, Lcom/xiaomi/camera/core/MultiFrameProcessor$2;

    move-object/from16 v0, p1

    invoke-direct {v11, v1, v0, v2}, Lcom/xiaomi/camera/core/MultiFrameProcessor$2;-><init>(Lcom/xiaomi/camera/core/MultiFrameProcessor;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;I)V

    const/4 v12, 0x1

    if-nez v2, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-ne v2, v12, :cond_3

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v3

    .line 4
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v8

    .line 6
    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v9

    .line 7
    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v13

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v4

    const/4 v6, 0x2

    invoke-static {v4, v3, v6}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;I)Landroid/media/Image;

    move-result-object v4

    .line 9
    invoke-virtual {v4, v13, v14}, Landroid/media/Image;->setTimestamp(J)V

    .line 10
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 11
    sget-object v3, Lcom/xiaomi/camera/core/MultiFrameProcessor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "E: reprocessImage: timestamp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", imageType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v15, v1, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mObjLock:Ljava/lang/Object;

    monitor-enter v15

    .line 13
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mReprocessStartTime:J

    .line 14
    iput-boolean v12, v1, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mReprocessing:Z

    .line 15
    new-instance v10, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v6

    const/16 v0, 0x23

    move-object v3, v10

    move/from16 v7, p3

    move-object v12, v10

    move v10, v0

    invoke-direct/range {v3 .. v11}, Lcom/xiaomi/camera/imagecodec/ReprocessData;-><init>(Landroid/media/Image;Ljava/lang/String;Lcom/xiaomi/protocol/ICustomCaptureResult;ZIIILcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;)V

    const/4 v3, 0x1

    .line 16
    invoke-virtual {v12, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setImageFromPool(Z)V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x1f40

    const/4 v7, 0x0

    .line 18
    :try_start_1
    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    .line 19
    :goto_1
    iget-boolean v0, v1, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mReprocessing:Z

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, v1, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mObjLock:Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 21
    iput-boolean v7, v1, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mReprocessing:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 22
    :goto_2
    :try_start_2
    iput-boolean v7, v1, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mReprocessing:Z

    .line 23
    sget-object v8, Lcom/xiaomi/camera/core/MultiFrameProcessor;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    cmp-long v0, v8, v5

    if-ltz v0, :cond_2

    .line 25
    sget-object v0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->TAG:Ljava/lang/String;

    const-string v3, "reprocessImage: frame %d is timeout"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 26
    :cond_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    sget-object v0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X: reprocessImage: timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", imageType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 28
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 29
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") not supported."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public processData(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/engine/TaskSession;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getBurstNum()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processData: queue task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Lcom/xiaomi/camera/core/MultiFrameProcessor$ProcessDataAndTaskSession;

    invoke-direct {v2, p0, p1, p2}, Lcom/xiaomi/camera/core/MultiFrameProcessor$ProcessDataAndTaskSession;-><init>(Lcom/xiaomi/camera/core/MultiFrameProcessor;Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/engine/TaskSession;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/core/MultiFrameProcessor;->TAG:Ljava/lang/String;

    const-string v1, "processData: sync mode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->doProcess(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/engine/TaskSession;)V

    :goto_0
    return-void

    .line 7
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loss some capture data, burstNum is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getBurstNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; but data bean list size is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
