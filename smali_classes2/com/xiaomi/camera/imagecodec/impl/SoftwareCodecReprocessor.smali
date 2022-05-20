.class public Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;
.super Lcom/xiaomi/camera/imagecodec/BaseReprocessor;
.source "SoftwareCodecReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$JobHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SoftwareCodecReprocessor"

.field public static final sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton<",
            "Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

.field public final mDataLock:Ljava/lang/Object;

.field public mInitialized:Z

.field public mJpegOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

.field public mReprocessStartTime:J

.field public mRequestDispatchHandler:Landroid/os/Handler;

.field public mRequestDispatchThread:Landroid/os/HandlerThread;

.field public mTaskDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/xiaomi/camera/imagecodec/ReprocessData;",
            ">;"
        }
    .end annotation
.end field

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->checkAndPrepare()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->doCompress()V

    return-void
.end method

.method public static synthetic access$400(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private checkAndPrepare()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v3, "checkConditionIsReady: processor is busy!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return v2

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 7
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "checkConditionIsReady: ignore null request!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private doCompress()V
    .locals 15

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "doCompress: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 4
    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "doCompress: null metadata!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCompress: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getJpegQuality()I

    move-result v1

    int-to-byte v1, v1

    .line 9
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v2

    .line 10
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image;

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mReprocessStartTime:J

    .line 13
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doCompress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x100

    const/4 v5, 0x0

    if-ne v0, v2, :cond_1

    .line 14
    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 15
    aget-object v2, v0, v4

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v6, 0x2

    .line 16
    aget-object v7, v0, v6

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    new-array v13, v6, [I

    .line 17
    aget-object v8, v0, v4

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    aput v8, v13, v4

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    const/4 v14, 0x1

    aput v0, v13, v14

    .line 18
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v8

    sub-int/2addr v0, v8

    aget v8, v13, v4

    add-int/2addr v0, v8

    .line 19
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    add-int v9, v0, v8

    .line 20
    new-array v9, v9, [B

    .line 21
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 22
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 23
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    invoke-virtual {v2, v9, v4, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {v7, v9, v0, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 25
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v10, 0x11

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v11

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v12

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 26
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 27
    :try_start_1
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v9

    invoke-direct {v7, v4, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v7, v1, v2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 28
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v7, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v7}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v2, v7}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onJpegAvailable([BLjava/lang/String;)V

    .line 29
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "jpeg quality %d return for %s. cost=%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v7, v4

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mReprocessStartTime:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v6

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iput-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 31
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    :goto_0
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 33
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    goto :goto_1

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 36
    invoke-virtual {v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isImageFromPool()Z

    move-result v4

    .line 37
    invoke-interface {v0, v3, v2, v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onYuvAvailable(Landroid/media/Image;Ljava/lang/String;Z)V

    .line 38
    iput-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 39
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    :goto_1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->doNextJob()V

    .line 41
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "doCompress: X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 42
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 43
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private doNextJob()V
    .locals 5

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "============================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mInitialized:Z

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "doNextJob: NOT initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 6
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v3, "doNextJob: idle. Try to close device 30s later."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "doNextJob: BUSY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 14
    :cond_3
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "doNextJob: send MSG_DO_NEXT_JOB"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getImageBuffer(Landroid/media/Image;)[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    .line 2
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 5
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private releaseWakeLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public deInit()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mInitialized:Z

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mInitialized:Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 11
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    .line 12
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 14
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit: X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 15
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "init: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mInitialized:Z

    if-nez v1, :cond_0

    const-string v1, "power"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 5
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 7
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "RequestDispatcher"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    .line 8
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 9
    new-instance p1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$JobHandler;

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor$JobHandler;-><init>(Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    .line 10
    iput-boolean v2, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mInitialized:Z

    .line 11
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    sget-object p1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "init: X"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setOutputPictureSpec(III)V
    .locals 3

    const/16 v0, 0x100

    if-ne p3, v0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mJpegOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputPictureSpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mJpegOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only supports JPEG encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "submit: drop this request due to no callback was provided!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mInitialized:Z

    if-eqz v0, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->acquireWakeLock()V

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isImageFromPool()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/xiaomi/camera/imagecodec/ImagePool;->isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    sget-object v3, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v5, "submit: wait image pool>>"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V

    .line 12
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "submit: wait image pool<<"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_1
    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    .line 14
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->queueImage(Landroid/media/Image;)V

    .line 15
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImage(J)Landroid/media/Image;

    move-result-object v0

    .line 16
    sget-object v3, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "submit: image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setMainImage(Landroid/media/Image;)Ljava/util/ArrayList;

    .line 18
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->holdImage(Landroid/media/Image;)V

    .line 19
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getDataStatusCallback()Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 20
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "close original image"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;->onImageClosed(Ljava/util/List;)V

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/SoftwareCodecReprocessor;->doNextJob()V

    return-void

    :catchall_0
    move-exception p1

    .line 26
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 27
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "NOT initialized. Call init() first!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
