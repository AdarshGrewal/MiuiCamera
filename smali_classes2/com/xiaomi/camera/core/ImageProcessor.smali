.class public abstract Lcom/xiaomi/camera/core/ImageProcessor;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;,
        Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;,
        Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;,
        Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_IMAGE_BUFFER_QUEUE_SIZE:I = 0x4

.field public static final DISPATCH_STATUS_OK:I = 0x0

.field public static final DISPATCH_STATUS_SESSION_ERROR:I = -0x1

.field public static final MSG_CHECK_TIMEOUT_TASK:I = 0x3

.field public static final MSG_FLUSH_TASK_SESSION:I = 0x4

.field public static final MSG_IMAGE_DOFILTER:I = 0x2

.field public static final MSG_IMAGE_RECEIVED:I = 0x1

.field public static final PROCESS_TASK_TIMEOUT_MS:I = 0x7530

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_STOPPED:I = 0x3

.field public static final STATE_STOPPING:I = 0x2

.field public static final STATE_WORKING:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ImageProcessor"


# instance fields
.field public mBlockVariable:Landroid/os/ConditionVariable;

.field public mDepthImageReaderHolder:Landroid/media/ImageReader;

.field public mEffectImageReaderHolder:Landroid/media/ImageReader;

.field public mEffectImageReaderHolder2:Landroid/media/ImageReader;

.field public mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

.field public mImageBufferQueueSize:I

.field public mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

.field public mImageReaderHandler:Landroid/os/Handler;

.field public final mImageReaderThread:Landroid/os/HandlerThread;

.field public final mInFlightTaskList:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mIsBokehMode:Z

.field public mMaxParallelRequestNumber:I

.field public mNeedProcessDepthImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mNeedProcessRawImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mRawImageReaderHolder:Landroid/media/ImageReader;

.field public mState:I

.field public final mTaskDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/xiaomi/camera/core/TaskData;",
            ">;"
        }
    .end annotation
.end field

.field public final mTaskDataLock:Ljava/lang/Object;

.field public mTaskSession:Lcom/xiaomi/engine/TaskSession;

.field public mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

.field public mWorkHandler:Landroid/os/Handler;

.field public final mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;Lcom/xiaomi/engine/BufferFormat;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mMaxParallelRequestNumber:I

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessRawImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessDepthImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x4

    .line 7
    iput v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageBufferQueueSize:I

    .line 8
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mBlockVariable:Landroid/os/ConditionVariable;

    .line 9
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    .line 10
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    .line 11
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    .line 12
    iput v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mState:I

    .line 13
    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    .line 14
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getProcessorName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 15
    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    const-string v2, "_%s_%dx%d_%d"

    .line 16
    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 17
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create ImageProcessor_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WorkerThread"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    .line 19
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReaderThread"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderThread:Landroid/os/HandlerThread;

    .line 20
    new-instance p1, Lcom/xiaomi/camera/core/FilterProcessor;

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mBlockVariable:Landroid/os/ConditionVariable;

    invoke-direct {p1, v0}, Lcom/xiaomi/camera/core/FilterProcessor;-><init>(Landroid/os/ConditionVariable;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    .line 21
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferHeight()I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/FilterProcessor;->init(Landroid/util/Size;)V

    .line 22
    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getGraphDescriptor()Lcom/xiaomi/engine/GraphDescriptorBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/engine/GraphDescriptorBean;->getOperationModeID()I

    move-result p1

    const p2, 0x8002

    if-ne p1, p2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mIsBokehMode:Z

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/xiaomi/camera/core/ImageProcessor;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/xiaomi/camera/core/ImageProcessor;Lcom/xiaomi/camera/core/TaskData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->processImageInner(Lcom/xiaomi/camera/core/TaskData;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/xiaomi/camera/core/ImageProcessor;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/ImageProcessor;->calculateAndRemoveTimeoutTask(J)V

    return-void
.end method

.method private calculateAndRemoveTimeoutTask(J)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ltz v1, :cond_2

    .line 3
    iget-object v5, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;

    .line 4
    iget-wide v6, v5, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->processStartTime:J

    sub-long v6, p1, v6

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 5
    invoke-direct {p0, v5}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseInFlightTaskLocked(Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;)V

    .line 6
    iget-object v4, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 7
    sget-object v4, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v6, "task %d is timeout. cost: %dms"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, v5, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    iget-wide v8, v5, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->processStartTime:J

    sub-long v8, p1, v8

    .line 8
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    .line 9
    invoke-static {v4, v6, v7}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 10
    iget-object v4, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    if-eqz v4, :cond_0

    .line 11
    iget-object v4, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    iget-wide v5, v5, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    invoke-interface {v4, v5, v6}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 12
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v5

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/camera/db/item/DbItemSaveTask;->clearDepartedTask(Ljava/lang/String;)V

    :cond_0
    move v4, v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 13
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 14
    invoke-static {}, Lcom/android/camera/Util;->dumpBugReportLog()V

    .line 15
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private isAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private mockProcessImage(Lcom/xiaomi/camera/core/TaskData;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "mockProcessImage: skip image processor"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->onProcessImageStart(Lcom/xiaomi/camera/core/TaskData;)V

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    const/4 v2, 0x1

    move v3, v2

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-direct {p0, v4}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    .line 10
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {p0, v5, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;)Landroid/media/Image;

    move-result-object p1

    .line 11
    invoke-direct {p0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    .line 12
    new-instance v1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;

    invoke-direct {v1, p1, v0, v2}, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;-><init>(Landroid/media/Image;IZ)V

    .line 13
    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchFilterTask(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V

    .line 14
    invoke-virtual {p0, v3, v4}, Lcom/xiaomi/camera/core/ImageProcessor;->onProcessImageDone(J)V

    return-void

    .line 15
    :cond_2
    :goto_1
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v0, "mockProcessImage: dataBeans is empty!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private processImageInner(Lcom/xiaomi/camera/core/TaskData;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->mockProcessImage(Lcom/xiaomi/camera/core/TaskData;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->onPreProcessImage(Lcom/xiaomi/camera/core/TaskData;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->processImage(Lcom/xiaomi/camera/core/TaskData;)V

    :goto_0
    return-void
.end method

.method private releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseCaptureDataBean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, v0}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onOriginalImageClosed(Landroid/media/Image;)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 9
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {v1, v0}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onOriginalImageClosed(Landroid/media/Image;)V

    .line 11
    :cond_2
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTuningImage()Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 14
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    if-eqz v0, :cond_4

    .line 15
    invoke-interface {v0, p1}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onOriginalImageClosed(Landroid/media/Image;)V

    .line 16
    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_5
    return-void
.end method

.method private releaseInFlightTaskLocked(Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->taskDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/TaskData;

    .line 2
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 3
    invoke-direct {p0, v2}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-wide v0, p1, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->removeInFlightTask(J)V

    return-void
.end method

.method private releaseResource()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 4
    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder:Landroid/media/ImageReader;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mRawImageReaderHolder:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 7
    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mRawImageReaderHolder:Landroid/media/ImageReader;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mDepthImageReaderHolder:Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 10
    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mDepthImageReaderHolder:Landroid/media/ImageReader;

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder2:Landroid/media/ImageReader;

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 13
    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder2:Landroid/media/ImageReader;

    :cond_3
    return-void
.end method

.method private removeInFlightTask(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private sendProcessImageMessage()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "sendProcessImageMessage"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    if-nez v3, :cond_1

    const-string v3, "WorkThread"

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v1, v2

    const-string v2, "sendProcessImageMessage: failed. %s has died!"

    .line 8
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public abstract configOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/engine/BufferFormat;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method public configOutputConfigurations2(Lcom/xiaomi/engine/BufferFormat;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/engine/BufferFormat;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getBufferWidth()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getBufferHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getBufferFormat()I

    move-result p1

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getImageBufferQueueSize()I

    move-result v3

    .line 4
    invoke-static {v1, v2, p1, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder2:Landroid/media/ImageReader;

    .line 5
    sget-object v1, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->EFFECT:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->setImageReaderNameDepends(Landroid/media/ImageReader;Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;Z)V

    .line 6
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder2:Landroid/media/ImageReader;

    new-instance v1, Lcom/xiaomi/camera/core/ImageProcessor$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/core/ImageProcessor$2;-><init>(Lcom/xiaomi/camera/core/ImageProcessor;)V

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getImageReaderHandler()Landroid/os/Handler;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 9
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder2:Landroid/media/ImageReader;

    .line 10
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public dispatchFilterTask(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 6
    :cond_0
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_1

    const-string v2, "WorkThread"

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v0, v1

    const-string v1, "dispatchFilterTask: failed. %s has died!"

    .line 8
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public dispatchTask(Lcom/xiaomi/camera/core/TaskData;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E:dispatchTask: send image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 5
    monitor-exit v0

    return p1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlgorithmEngineBusy()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTask: send image to engine, taskSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    goto :goto_0

    .line 9
    :cond_1
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTask: taskSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v0, "X:dispatchTask: send image"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public doFilter(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->image:Landroid/media/Image;

    .line 2
    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    .line 3
    iget v3, p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->target:I

    .line 4
    iget-object v4, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    .line 5
    invoke-interface {v4, v1, v2}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    if-eqz v3, :cond_0

    if-ne v5, v3, :cond_5

    .line 6
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoO()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 7
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v7

    if-eq v5, v7, :cond_1

    const/4 v7, 0x3

    .line 8
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 9
    :cond_1
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v7

    .line 10
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCameraId()I

    move-result v8

    .line 11
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v7, v9}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_2

    const/16 v7, 0x12c

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_0
    invoke-static {v0, v8, v7}, Lcom/xiaomi/camera/algoup/NoiseReduction;->doChromaNR(Landroid/media/Image;II)I

    .line 13
    :cond_3
    sget-boolean v7, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_RENDER:Z

    if-nez v7, :cond_4

    .line 14
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v7

    invoke-static {v7}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 15
    sget-object v7, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doFilter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    invoke-virtual {v1, v4, v0, v3}, Lcom/xiaomi/camera/core/FilterProcessor;->doFilterSync(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;I)Landroid/media/Image;

    goto :goto_1

    .line 17
    :cond_4
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v2, "prop skip render"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :goto_1
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v1

    invoke-static {v1}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    .line 19
    sget-object v4, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doFilter: no task data found for image "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v6, v5

    .line 20
    :goto_2
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    iget-boolean p1, p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->isPoolImage:Z

    invoke-interface {v1, v0, v3, p1}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessed(Landroid/media/Image;IZ)V

    goto :goto_3

    .line 21
    :cond_7
    iget-boolean p1, p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->isPoolImage:Z

    if-eqz p1, :cond_8

    .line 22
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFilter: release pool image "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 24
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_8
    move v6, v5

    .line 25
    :goto_3
    sget-boolean p1, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    if-nez p1, :cond_c

    if-eqz v6, :cond_c

    if-eqz v3, :cond_b

    if-eq v3, v5, :cond_a

    const/4 p1, 0x2

    if-eq v3, p1, :cond_9

    .line 26
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 27
    :cond_9
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessDepthImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto :goto_4

    .line 28
    :cond_a
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessRawImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto :goto_4

    .line 29
    :cond_b
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 30
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->tryToStopWork()V

    return-void
.end method

.method public flushTaskSession()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "flushTaskSession: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    invoke-virtual {v1}, Lcom/xiaomi/engine/TaskSession;->flushCurrentTask()V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;->getTaskSession()Lcom/xiaomi/engine/TaskSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;->getTaskSession()Lcom/xiaomi/engine/TaskSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/engine/TaskSession;->flushCurrentTask()V

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "flushTaskSession: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getImageBufferQueueSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageBufferQueueSize:I

    return v0
.end method

.method public getImageReaderHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getProcessorName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskSession()Lcom/xiaomi/engine/TaskSession;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTaskSession2()Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskSession2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAlgorithmEngineBusy()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mMaxParallelRequestNumber:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBokekMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mIsBokehMode:Z

    return v0
.end method

.method public abstract isIdle()Z
.end method

.method public isImageValid(Landroid/media/Image;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2
    :goto_0
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public declared-synchronized isStopped()Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x3

    .line 1
    :try_start_0
    iget v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStopping()Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x2

    .line 1
    :try_start_0
    iget v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public needSlowDown(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int v2, v0, v1

    add-int/2addr v2, p1

    .line 5
    iget v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mMaxParallelRequestNumber:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    .line 6
    sget-object v2, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "slow down. processingTaskNum = %d, pendingTaskNum = %d, inFlightTaskNum = %d"

    .line 8
    invoke-static {v2, p1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    return v4

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onPreProcessImage(Lcom/xiaomi/camera/core/TaskData;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "E:onPreProcessImage"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->getFirstTimestamp()J

    move-result-wide v7

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->containsFirstFrame()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 6
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v9, "onPreProcessImage: timestamp=%d, startTime=%d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1, v9, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7
    new-instance v9, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;

    move-object v1, v9

    move-object v2, p0

    move-wide v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;-><init>(Lcom/xiaomi/camera/core/ImageProcessor;JJ)V

    .line 8
    invoke-virtual {v9, p1}, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->addTaskData(Lcom/xiaomi/camera/core/TaskData;)V

    .line 9
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1, p1}, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->addTaskData(Lcom/xiaomi/camera/core/TaskData;)V

    .line 12
    sget-object v5, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v6, "onPreProcessImage: timestamp=%d, taskDataNum=%d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v3

    iget-object v1, v1, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->taskDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v5, v6, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 13
    :cond_2
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreProcessImage: no record found with timestamp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "X:onPreProcessImage"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->containsFirstFrame()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 20
    :cond_3
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v0, "onPreProcessImage: worker thread is dead"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onProcessImageDone(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "E:onProcessImageDone"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProcessImageDone: timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/ImageProcessor;->removeInFlightTask(J)V

    .line 6
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlgorithmEngineBusy()Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    sget-object p2, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessImageDone: taskSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    .line 10
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p2, "X:onProcessImageDone"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onProcessImageStart(Lcom/xiaomi/camera/core/TaskData;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->containsFirstFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_0
    return-void
.end method

.method public onTaskSessionDied()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->stopWork()V

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskSessionDied: E. processor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 5
    :try_start_0
    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    .line 6
    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    .line 7
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 8
    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;

    .line 9
    iget-wide v4, v3, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-direct {p0, v3}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseInFlightTaskLocked(Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;)V

    .line 11
    sget-object v4, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTaskSessionDied: remove in flight task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 14
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/TaskData;

    .line 16
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/TaskData;->containsFirstFrame()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 17
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/TaskData;->getFirstTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_1
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    .line 19
    invoke-direct {p0, v5}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    goto :goto_2

    .line 20
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 21
    sget-object v4, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTaskSessionDied: remove pending task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/TaskData;->getFirstTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 22
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v2, "onTaskSessionDied: X"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_0
    move-exception v0

    .line 24
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postFlushTaskSession()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "postFlushTaskSession"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    if-nez v3, :cond_1

    const-string v3, "WorkThread"

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v1, v2

    const-string v2, "postFlushTaskSession: failed. %s has died!"

    .line 7
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public abstract processImage(Lcom/xiaomi/camera/core/TaskData;)V
.end method

.method public queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;)Landroid/media/Image;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {p1, p2, v0}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;I)Landroid/media/Image;

    move-result-object p1

    return-object p1
.end method

.method public setImageBufferQueueSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageBufferQueueSize:I

    return-void
.end method

.method public setMaxParallelRequestNumber(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mMaxParallelRequestNumber:I

    :cond_0
    return-void
.end method

.method public setTaskSession(Lcom/xiaomi/engine/TaskSession;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "setTaskSession: worker thread has died"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTaskSession2(Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskSession2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "setTaskSession2: worker thread has died"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized startWork()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2
    new-instance v0, Lcom/xiaomi/camera/core/ImageProcessor$1;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/core/ImageProcessor$1;-><init>(Lcom/xiaomi/camera/core/ImageProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mState:I

    .line 6
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "startWork: %s started"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopWork()V
    .locals 5

    .line 1
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopWork: E. processor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    monitor-enter p0

    const/4 v0, 0x3

    .line 3
    :try_start_0
    iput v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mState:I

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 6
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "ImageProcessor: %s stopped"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 11
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    if-eqz v0, :cond_2

    .line 15
    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    if-eqz v2, :cond_3

    .line 18
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    invoke-virtual {v2}, Lcom/xiaomi/engine/TaskSession;->close()V

    .line 19
    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    .line 20
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    if-eqz v2, :cond_4

    .line 21
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;->getTaskSession()Lcom/xiaomi/engine/TaskSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/engine/TaskSession;->close()V

    .line 22
    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    .line 23
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseResource()V

    .line 25
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "stopWork: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 26
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 27
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public declared-synchronized stopWorkWhenIdle()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopWorkWhenIdle: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isStopped()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 4
    :try_start_1
    iput v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mState:I

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->tryToStopWork()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryToReuse()Z
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isStopped()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryToReuse: failed. processor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :try_start_2
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 6
    sget-object v2, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "tryToReuse: failed. mTaskSession is null processor: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 8
    :cond_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :try_start_4
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryToReuse: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", processor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iput v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 11
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v1

    .line 12
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryToStopWork()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryToStopWork: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isStopping()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->stopWork()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
