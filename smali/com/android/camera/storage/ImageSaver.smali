.class public Lcom/android/camera/storage/ImageSaver;
.super Ljava/lang/Object;
.source "ImageSaver.java"

# interfaces
.implements Lcom/xiaomi/camera/core/ParallelCallback;
.implements Lcom/android/camera/storage/SaverCallback;
.implements Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;,
        Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;
    }
.end annotation


# static fields
.field public static final CAMERA_SAVER_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final HOST_STATE_DESTROY:I = 0x2

.field public static final HOST_STATE_PAUSE:I = 0x1

.field public static final HOST_STATE_RESUME:I = 0x0

.field public static final PREVIEW_SAVER_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final QUEUE_BUSY_SIZE:I = 0x28

.field public static final TAG:Ljava/lang/String; = "ImageSaver"

.field public static final mPreviewRequestQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final mSaveRequestQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final mBitmapTextureLock:Ljava/lang/Object;

.field public mContext:Landroid/content/Context;

.field public mDropBitmapTexture:Z

.field public mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

.field public final mEffectProcessorLock:Ljava/lang/Object;

.field public mHandler:Landroid/os/Handler;

.field public mHeifHandler:Landroid/os/Handler;

.field public mHeifHandlerThread:Landroid/os/HandlerThread;

.field public mHostState:I

.field public volatile mIsBusy:Z

.field public mIsCaptureIntent:Z

.field public mLastImageUri:Landroid/net/Uri;

.field public final mLiveShotPendingTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/xiaomi/camera/core/ParallelTaskData;",
            ">;"
        }
    .end annotation
.end field

.field public mMemoryManager:Lcom/android/camera/storage/MemoryManager;

.field public mPendingThumbnail:Lcom/android/camera/Thumbnail;

.field public mSaveQueueSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mSaverCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mStoredTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

.field public mSupportSuperNightExif:Z

.field public mUpdateThumbnail:Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;

.field public final mUpdateThumbnailLock:Ljava/lang/Object;

.field public mbModuleSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/android/camera/storage/ImageSaver$1;

    invoke-direct {v0}, Lcom/android/camera/storage/ImageSaver$1;-><init>()V

    sput-object v0, Lcom/android/camera/storage/ImageSaver;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/android/camera/storage/ImageSaver;->mSaveRequestQueue:Ljava/util/concurrent/BlockingQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/android/camera/storage/ImageSaver;->mPreviewRequestQueue:Ljava/util/concurrent/BlockingQueue;

    .line 4
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/android/camera/storage/ImageSaver;->mSaveRequestQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lcom/android/camera/storage/ImageSaver;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x4

    const/4 v4, 0x4

    const-wide/16 v5, 0xa

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 6
    sput-object v0, Lcom/android/camera/storage/ImageSaver;->CAMERA_SAVER_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/android/camera/storage/ImageSaver;->mPreviewRequestQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lcom/android/camera/storage/ImageSaver;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 9
    sput-object v0, Lcom/android/camera/storage/ImageSaver;->PREVIEW_SAVER_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;Landroid/os/Handler;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessorLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mBitmapTextureLock:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mLiveShotPendingTaskQueue:Ljava/util/Queue;

    .line 6
    new-instance v0, Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;

    invoke-direct {v0, p0}, Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mSaverCallback:Ljava/lang/ref/WeakReference;

    .line 8
    iput-object p2, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    .line 9
    iput-boolean p3, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z

    .line 10
    new-instance p1, Lcom/android/camera/storage/MemoryManager;

    invoke-direct {p1}, Lcom/android/camera/storage/MemoryManager;-><init>()V

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/MemoryManager;

    .line 11
    invoke-virtual {p1}, Lcom/android/camera/storage/MemoryManager;->initMemory()V

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mbModuleSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mSaveQueueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/storage/ImageSaver;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/ImageSaver;->mSaverCallback:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/storage/ImageSaver;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->updateThumbnail(Z)V

    return-void
.end method

.method private addSaveRequest(Lcom/android/camera/storage/SaveRequest;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/storage/ImageSaver;->addSaveRequest(Lcom/android/camera/storage/SaveRequest;Z)V

    return-void
.end method

.method private addSaveRequest(Lcom/android/camera/storage/SaveRequest;Z)V
    .locals 2

    .line 2
    monitor-enter p0

    const/4 v0, 0x2

    .line 3
    :try_start_0
    iget v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string v1, "addSaveRequest: host is being destroyed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->isSaveQueueFull()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 6
    iput-boolean v1, p0, Lcom/android/camera/storage/ImageSaver;->mIsBusy:Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mSaveQueueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 8
    invoke-interface {p1}, Lcom/android/camera/storage/SaveRequest;->getSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/storage/ImageSaver;->addUsedMemory(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/storage/SaveRequest;->setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 10
    :try_start_1
    sget-object p2, Lcom/android/camera/storage/ImageSaver;->PREVIEW_SAVER_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 11
    :cond_2
    sget-object p2, Lcom/android/camera/storage/ImageSaver;->CAMERA_SAVER_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12
    :catch_0
    :try_start_2
    iput-boolean v1, p0, Lcom/android/camera/storage/ImageSaver;->mIsBusy:Z

    .line 13
    sget-object p1, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "stop snapshot due to thread pool is full"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private dealExif(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sceneDetectedAFResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->DXO_ASD_SCENE_AF:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sceneDetectedAEResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->DXO_ASD_SCENE_AE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_SR_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " superResolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MFNR_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mfnrEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SW_MFNR_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " swMfnrEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {p2}, Lcom/android/camera2/CaptureResultParser;->getSatMasterCameraId(Landroid/hardware/camera2/CaptureResult;)I

    move-result v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " 180cameraID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_SCENE_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 15
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SUPERNIGHT_RAW_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v3, v4}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureRequest;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    .line 17
    :goto_0
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    sget-object v7, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MIVI_SUPER_NIGHT_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v6, v7}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureRequest;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 18
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_2

    .line 19
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    .line 20
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " superNight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    if-nez v3, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    move v4, v5

    :cond_5
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->FRONT_SINGLE_CAMERA_BOKEH:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " frontPortraitBokeh:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v2

    const-string v3, " remosaic:"

    if-eqz v2, :cond_6

    .line 24
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->CONTROL_ENABLE_REMOSAIC:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->CONTROL_ENABLE_SPECSHOT_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " specshot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 28
    :cond_6
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->REMOSAIC_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    :goto_2
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->getOperateMode()I

    move-result v2

    const v3, 0x9000

    if-ne v2, v3, :cond_7

    const-string v2, " bokehEnable:true"

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 32
    :cond_7
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->REAR_BOKEH_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " bokehEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :goto_3
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->DEPURPLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    if-eqz v2, :cond_8

    .line 35
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v5, :cond_8

    const-string v2, " Depurple:true "

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    const-string v2, " Depurple:false "

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :goto_4
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ULTRA_WIDE_LENS_DISTORTION_CORRECTION_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    if-eqz v2, :cond_9

    .line 39
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v5, :cond_9

    const-string v2, " uwldc:true "

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_9
    const-string v2, " uwldc:false "

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :goto_5
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " beauty:{level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_SKIN_COLOR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " skinColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_SLIM_FACE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " slimFace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_SKIN_SMOOTH:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " slimSmooth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_ENLARGE_EYE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " enlargeEye:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_NOSE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " nose:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_RISORIUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " risorius:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_LIPS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " lips:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_CHIN:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " chin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_SMILE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " smile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_SLIM_NOSE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " slimNose:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_HAIRLINE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " hairLine:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_HEAD_SLIM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " headSlim:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_BODY_SLIM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " bodySlim:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_SHOULDER_SLIM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " shoulderSlim:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_LEG_SLIM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " legSlim:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->WHOLE_BODY_SLIM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " wholeBodySlim:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BUTT_SLIM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " buttSlim:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cameraPreferredMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getCameraPreferredMode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {p2}, Lcom/android/camera2/CaptureResultParser;->getExifValues(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v1

    if-eqz v1, :cond_a

    .line 81
    array-length v2, v1

    if-lez v2, :cond_a

    .line 82
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 83
    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setCaptureResult(Ljava/lang/String;)V

    .line 84
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 85
    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/core/PictureInfo;->setAlgoExif(Ljava/lang/String;)V

    .line 86
    :cond_b
    invoke-direct {p0, p2, v0}, Lcom/android/camera/storage/ImageSaver;->setSuperNightExif(Landroid/hardware/camera2/CaptureResult;Lcom/xiaomi/camera/core/PictureInfo;)V

    return-void
.end method

.method private initEffectProcessorLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mSaverCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;

    iget-boolean v2, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;-><init>(Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;Z)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 3
    invoke-virtual {v0, p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setQuality(I)V

    :cond_0
    return-void
.end method

.method private insertImageSaveRequest(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/storage/ImageSaveRequest$Builder;

    invoke-direct {v0}, Lcom/android/camera/storage/ImageSaveRequest$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setParallelTaskData(Lcom/xiaomi/camera/core/ParallelTaskData;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 3
    invoke-static {p1}, Lcom/android/camera/storage/AbstractSaveRequest;->calculateMemoryUsed(Lcom/xiaomi/camera/core/ParallelTaskData;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setSize(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 4
    invoke-static {p1}, Lcom/android/camera/storage/AbstractSaveRequest;->isHeicSavingRequest(Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setIsHeic(Z)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->build()Lcom/android/camera/storage/ImageSaveRequest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->addSaveRequest(Lcom/android/camera/storage/SaveRequest;)V

    return-void
.end method

.method private insertParallelSaveRequest(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/storage/ParallelSaveRequest$Builder;

    invoke-direct {v0}, Lcom/android/camera/storage/ParallelSaveRequest$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setParallelTaskData(Lcom/xiaomi/camera/core/ParallelTaskData;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 3
    invoke-static {p1}, Lcom/android/camera/storage/AbstractSaveRequest;->calculateMemoryUsed(Lcom/xiaomi/camera/core/ParallelTaskData;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setSize(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 4
    invoke-static {p1}, Lcom/android/camera/storage/AbstractSaveRequest;->isHeicSavingRequest(Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setIsHeic(Z)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/storage/ParallelSaveRequest$Builder;->build()Lcom/android/camera/storage/ParallelSaveRequest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->addSaveRequest(Lcom/android/camera/storage/SaveRequest;)V

    return-void
.end method

.method private insertParallelTaskData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/storage/ImageSaver;->insertParallelTaskData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)V

    return-void
.end method

.method private insertParallelTaskData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown shot type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_1
    const-string v0, "JPEG"

    .line 4
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->insertParallelSaveRequest(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/storage/ImageSaver;->insertRawImageSaveRequest(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->insertImageSaveRequest(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->insertParallelSaveRequest(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/storage/ImageSaver;->insertRawImageSaveRequest(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 10
    :pswitch_5
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isShot2Gallery()Z

    move-result p2

    if-nez p2, :cond_1

    .line 11
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->insertImageSaveRequest(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->insertParallelSaveRequest(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_0

    .line 13
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->insertPreviewSaveRequest(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_0

    .line 14
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->processIntentResult(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_0

    .line 15
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->insertImageSaveRequest(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_0

    .line 16
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->processParallelIntentResult(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private insertPreviewSaveRequest(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/storage/PreviewSaveRequest$Builder;

    invoke-direct {v0}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->noGaussian()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->setNoGaussian(Z)Lcom/android/camera/storage/PreviewSaveRequest$Builder;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setParallelTaskData(Lcom/xiaomi/camera/core/ParallelTaskData;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 4
    invoke-static {p1}, Lcom/android/camera/storage/AbstractSaveRequest;->isHeicSavingRequest(Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setIsHeic(Z)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->build()Lcom/android/camera/storage/PreviewSaveRequest;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/storage/ImageSaver;->addSaveRequest(Lcom/android/camera/storage/SaveRequest;Z)V

    return-void
.end method

.method private isLastImageForThumbnail()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private processIntentResult(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/storage/ImageSaveRequest$Builder;

    invoke-direct {v0}, Lcom/android/camera/storage/ImageSaveRequest$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setParallelTaskData(Lcom/xiaomi/camera/core/ParallelTaskData;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 3
    invoke-static {p1}, Lcom/android/camera/storage/AbstractSaveRequest;->calculateMemoryUsed(Lcom/xiaomi/camera/core/ParallelTaskData;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setSize(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 4
    invoke-static {p1}, Lcom/android/camera/storage/AbstractSaveRequest;->isHeicSavingRequest(Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setIsHeic(Z)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->build()Lcom/android/camera/storage/ImageSaveRequest;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/camera/storage/AbstractSaveRequest;->setSaverCallback(Lcom/android/camera/storage/SaverCallback;)V

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserParallelTaskData()V

    .line 8
    iget v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v0, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    invoke-direct {p0, p1, v1, v0}, Lcom/android/camera/storage/ImageSaver;->showCaptureResultOnCover(Lcom/xiaomi/camera/core/ParallelTaskData;II)V

    return-void
.end method

.method private processParallelIntentResult(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/storage/ParallelSaveRequest$Builder;

    invoke-direct {v0}, Lcom/android/camera/storage/ParallelSaveRequest$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setParallelTaskData(Lcom/xiaomi/camera/core/ParallelTaskData;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 3
    invoke-static {p1}, Lcom/android/camera/storage/AbstractSaveRequest;->calculateMemoryUsed(Lcom/xiaomi/camera/core/ParallelTaskData;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setSize(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 4
    invoke-static {p1}, Lcom/android/camera/storage/AbstractSaveRequest;->isHeicSavingRequest(Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setIsHeic(Z)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/storage/ParallelSaveRequest$Builder;->build()Lcom/android/camera/storage/ParallelSaveRequest;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/camera/storage/AbstractSaveRequest;->setSaverCallback(Lcom/android/camera/storage/SaverCallback;)V

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserParallelTaskData()V

    .line 8
    iget v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v0, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    invoke-direct {p0, p1, v1, v0}, Lcom/android/camera/storage/ImageSaver;->showCaptureResultOnCover(Lcom/xiaomi/camera/core/ParallelTaskData;II)V

    return-void
.end method

.method private releaseEffectProcessor()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCapture()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "release Effect Processor"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->releaseIfNeeded()V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private releaseResourcesIfQueueEmpty()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->mSaveRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-gtz v0, :cond_3

    sget-object v0, Lcom/android/camera/storage/ImageSaver;->mPreviewRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mLiveShotPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mStoredTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    :cond_3
    :goto_0
    return-void
.end method

.method private setSuperNightExif(Landroid/hardware/camera2/CaptureResult;Lcom/xiaomi/camera/core/PictureInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mSupportSuperNightExif:Z

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif;->getSuperNightExif(Landroid/hardware/camera2/CaptureResult;Z)Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p1}, Lcom/android/camera/module/DebugInfoUtil;->getSuperNightExif(Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p2, p1}, Lcom/xiaomi/camera/core/PictureInfo;->setSuperNightExif(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showCaptureResultOnCover(Lcom/xiaomi/camera/core/ParallelTaskData;II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mBitmapTextureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/storage/ImageSaver;->mDropBitmapTexture:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "showCaptureResultOnCover drop it"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput-boolean v2, p0, Lcom/android/camera/storage/ImageSaver;->mDropBitmapTexture:Z

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    .line 7
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mStoredTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    int-to-double v3, p2

    .line 8
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPreviewSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-double v5, p2

    div-double/2addr v3, v5

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p2

    .line 11
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getShootOrientation()I

    move-result v1

    rsub-int v1, v1, 0x168

    .line 12
    iget-object v3, p0, Lcom/android/camera/storage/ImageSaver;->mSaverCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;

    if-nez v3, :cond_1

    move v4, v2

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v3}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->getDisplayRotation()I

    move-result v4

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object p1

    add-int/2addr p3, v1

    add-int/2addr p3, v4

    invoke-static {p1, p3, v2, p2}, Lcom/android/camera/Thumbnail;->createBitmap([BIZI)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz v3, :cond_2

    .line 15
    invoke-interface {v3}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/CameraScreenNail;->renderBitmapToCanvas(Landroid/graphics/Bitmap;)V

    .line 16
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateThumbnail(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateThumbnail needAnimation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mSaverCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, p1}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    .line 9
    invoke-interface {v0}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->isActivityPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-interface {v0}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThumbnailUpdater;->saveThumbnailToFile()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public addGif(Ljava/lang/String;Landroid/net/Uri;II)V
    .locals 7

    .line 1
    monitor-enter p0

    const/4 v0, 0x2

    .line 2
    :try_start_0
    iget v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string v1, "addVideo: host is being destroyed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 6
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "width"

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "height"

    .line 8
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "title"

    .line 9
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_data"

    .line 10
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "orientation"

    const/16 v5, 0x5a

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "datetaken"

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    new-instance v3, Lcom/android/camera/storage/GifSaveRequest$Builder;

    invoke-direct {v3}, Lcom/android/camera/storage/GifSaveRequest$Builder;-><init>()V

    .line 14
    invoke-virtual {v3, p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->setGifPath(Ljava/lang/String;)Lcom/android/camera/storage/GifSaveRequest$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v1, v2}, Lcom/android/camera/storage/GifSaveRequest$Builder;->setDateTaken(J)Lcom/android/camera/storage/GifSaveRequest$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v0}, Lcom/android/camera/storage/GifSaveRequest$Builder;->setTitle(Ljava/lang/String;)Lcom/android/camera/storage/GifSaveRequest$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1, p3}, Lcom/android/camera/storage/GifSaveRequest$Builder;->setWidth(I)Lcom/android/camera/storage/GifSaveRequest$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1, p4}, Lcom/android/camera/storage/GifSaveRequest$Builder;->setHeight(I)Lcom/android/camera/storage/GifSaveRequest$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v5}, Lcom/android/camera/storage/GifSaveRequest$Builder;->setOrientation(I)Lcom/android/camera/storage/GifSaveRequest$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p2}, Lcom/android/camera/storage/GifSaveRequest$Builder;->setUri(Landroid/net/Uri;)Lcom/android/camera/storage/GifSaveRequest$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->build()Lcom/android/camera/storage/GifSaveRequest;

    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->addSaveRequest(Lcom/android/camera/storage/SaveRequest;)V

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addGifSync(Ljava/lang/String;Landroid/net/Uri;II)Landroid/net/Uri;
    .locals 5

    .line 1
    monitor-enter p0

    const/4 v0, 0x2

    .line 2
    :try_start_0
    iget v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string v1, "addVideo: host is being destroyed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 6
    new-instance v3, Lcom/android/camera/storage/GifSaveRequest$Builder;

    invoke-direct {v3}, Lcom/android/camera/storage/GifSaveRequest$Builder;-><init>()V

    .line 7
    invoke-virtual {v3, p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->setGifPath(Ljava/lang/String;)Lcom/android/camera/storage/GifSaveRequest$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v1, v2}, Lcom/android/camera/storage/GifSaveRequest$Builder;->setDateTaken(J)Lcom/android/camera/storage/GifSaveRequest$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/camera/storage/GifSaveRequest$Builder;->setTitle(Ljava/lang/String;)Lcom/android/camera/storage/GifSaveRequest$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p3}, Lcom/android/camera/storage/GifSaveRequest$Builder;->setWidth(I)Lcom/android/camera/storage/GifSaveRequest$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p4}, Lcom/android/camera/storage/GifSaveRequest$Builder;->setHeight(I)Lcom/android/camera/storage/GifSaveRequest$Builder;

    move-result-object p1

    const/16 p3, 0x5a

    .line 12
    invoke-virtual {p1, p3}, Lcom/android/camera/storage/GifSaveRequest$Builder;->setOrientation(I)Lcom/android/camera/storage/GifSaveRequest$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Lcom/android/camera/storage/GifSaveRequest$Builder;->setUri(Landroid/net/Uri;)Lcom/android/camera/storage/GifSaveRequest$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->build()Lcom/android/camera/storage/GifSaveRequest;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/android/camera/storage/ImageSaver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, p0}, Lcom/android/camera/storage/GifSaveRequest;->setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V

    .line 16
    invoke-virtual {p1}, Lcom/android/camera/storage/GifSaveRequest;->save()V

    .line 17
    iget-object p1, p1, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addHeif(Landroid/media/Image;Landroid/hardware/camera2/CaptureResult;Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mHeifHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HeifSaverThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mHeifHandlerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHeifHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mHeifHandler:Landroid/os/Handler;

    .line 5
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeifSaverThread: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mHeifHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    new-instance v0, Lcom/android/camera/storage/HeifSaveRequest;

    iget-object v7, p0, Lcom/android/camera/storage/ImageSaver;->mHeifHandler:Landroid/os/Handler;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/storage/HeifSaveRequest;-><init>(Landroid/media/Image;Landroid/hardware/camera2/CaptureResult;Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;Landroid/os/Handler;)V

    const/4 p1, 0x1

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/android/camera/storage/ImageSaver;->addSaveRequest(Lcom/android/camera/storage/SaveRequest;Z)V

    return-void
.end method

.method public addImage(Lcom/android/camera/storage/ImageSaveRequest$Builder;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addImage ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->getOldTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setUri(Landroid/net/Uri;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackImageSaver(Ljava/lang/Object;I)V

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->getInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/camera/storage/ImageSaver;->setSuperNightExif(Landroid/hardware/camera2/CaptureResult;Lcom/xiaomi/camera/core/PictureInfo;)V

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->build()Lcom/android/camera/storage/ImageSaveRequest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->addSaveRequest(Lcom/android/camera/storage/SaveRequest;)V

    return-void
.end method

.method public declared-synchronized addUsedMemory(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/MemoryManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/storage/MemoryManager;->addUsedMemory(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addVideo(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;ZZLjava/util/List;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    const/4 v0, 0x2

    .line 2
    :try_start_0
    iget v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string v1, "addVideo: host is being destroyed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    new-instance v0, Lcom/android/camera/storage/VideoSaveRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/camera/storage/VideoSaveRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)V

    .line 5
    invoke-virtual {v0, p6}, Lcom/android/camera/storage/VideoSaveRequest;->setTags(Ljava/util/List;)V

    if-eqz p5, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/storage/VideoSaveRequest;->setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/storage/VideoSaveRequest;->save()V

    .line 8
    iget-object p1, v0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    monitor-exit p0

    return-object p1

    .line 9
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver;->addSaveRequest(Lcom/android/camera/storage/SaveRequest;)V

    const/4 p1, 0x0

    .line 10
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addVideo(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    .locals 2

    .line 12
    monitor-enter p0

    const/4 v0, 0x2

    .line 13
    :try_start_0
    iget v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-ne v0, v1, :cond_0

    .line 14
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string v1, "addVideo: host is being destroyed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    new-instance v0, Lcom/android/camera/storage/VideoSaveRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/camera/storage/VideoSaveRequest;-><init>(Ljava/lang/String;Landroid/content/ContentValues;Z)V

    .line 16
    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver;->addSaveRequest(Lcom/android/camera/storage/SaveRequest;)V

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addVideoSync(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 2

    .line 2
    monitor-enter p0

    const/4 v0, 0x2

    .line 3
    :try_start_0
    iget v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string v1, "addVideo: host is being destroyed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    new-instance v0, Lcom/android/camera/storage/VideoSaveRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/camera/storage/VideoSaveRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/storage/VideoSaveRequest;->setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/storage/VideoSaveRequest;->save()V

    .line 8
    iget-object p1, v0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addVideoSync(Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/camera/storage/ImageSaver;->addVideoSync(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mHeifHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mHeifHandlerThread:Landroid/os/HandlerThread;

    .line 5
    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mHeifHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public getBurstDelay()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/MemoryManager;

    invoke-virtual {v0}, Lcom/android/camera/storage/MemoryManager;->getBurstDelay()I

    move-result v0

    return v0
.end method

.method public getInFlightTask()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mSaveQueueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getStoredJpegData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mStoredTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object v0

    return-object v0
.end method

.method public getSuitableBurstShotSpeed()F
    .locals 1

    const v0, 0x3f28f5c3    # 0.66f

    return v0
.end method

.method public insertRawImageSaveRequest(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawImageData()[B

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isShot2Gallery()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isInTimerBurstShotting()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    :goto_1
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getRawSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 10
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getRawSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 11
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 12
    sget-object v4, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string v6, "insertRawImageSaveRequest: No jpeg orientation"

    invoke-static {v4, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 14
    :goto_2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDateTakenTime()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    .line 15
    sget-object p1, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertRawImageSaveRequest title = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", orientation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {v0, v5}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackImageSaver(Ljava/lang/Object;I)V

    .line 17
    new-instance p1, Lcom/android/camera/storage/RawImageSaveRequest$Builder;

    invoke-direct {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;-><init>()V

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->setData([B)Lcom/android/camera/storage/RawImageSaveRequest$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->setCaptureResult(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera/storage/RawImageSaveRequest$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p3}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->setCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/storage/RawImageSaveRequest$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v6, v7}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->setDateTaken(J)Lcom/android/camera/storage/RawImageSaveRequest$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v2}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->setTitle(Ljava/lang/String;)Lcom/android/camera/storage/RawImageSaveRequest$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v3}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->setWidth(I)Lcom/android/camera/storage/RawImageSaveRequest$Builder;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->setHeight(I)Lcom/android/camera/storage/RawImageSaveRequest$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v4}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->setOrientation(I)Lcom/android/camera/storage/RawImageSaveRequest$Builder;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->build()Lcom/android/camera/storage/RawImageSaveRequest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->addSaveRequest(Lcom/android/camera/storage/SaveRequest;)V

    return-void
.end method

.method public isBusy()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mIsBusy:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string v1, "ImageSaver is full"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mIsBusy:Z

    return v0
.end method

.method public isNeedSlowDown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/MemoryManager;

    invoke-virtual {v0}, Lcom/android/camera/storage/MemoryManager;->isNeedSlowDown()Z

    move-result v0

    return v0
.end method

.method public isNeedStopCapture()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/MemoryManager;

    invoke-virtual {v0}, Lcom/android/camera/storage/MemoryManager;->isNeedStopCapture()Z

    move-result v0

    return v0
.end method

.method public isPendingSave()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mLiveShotPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/android/camera/storage/ImageSaver;->mSaveRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/android/camera/storage/ImageSaver;->mPreviewRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public declared-synchronized isSaveQueueFull()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/MemoryManager;

    invoke-virtual {v0}, Lcom/android/camera/storage/MemoryManager;->isSaveQueueFull()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/storage/ImageSaver;->mIsBusy:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/android/camera/storage/ImageSaver;->mIsBusy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public needThumbnail(Z)Z
    .locals 0

    .line 1
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver;->isLastImageForThumbnail()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    .line 3
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    :try_start_0
    iget-object p3, p0, Lcom/android/camera/storage/ImageSaver;->mSaverCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;

    if-eqz p3, :cond_4

    .line 4
    invoke-interface {p3, p1, p2}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p3, p0, Lcom/android/camera/storage/ImageSaver;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 6
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    .line 7
    iget-object p3, p0, Lcom/android/camera/storage/ImageSaver;->mSaverCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;

    if-eqz p3, :cond_4

    .line 8
    invoke-interface {p3, p1, p2}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p3, p0, Lcom/android/camera/storage/ImageSaver;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 10
    iget-object p3, p0, Lcom/android/camera/storage/ImageSaver;->mSaverCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;

    if-eqz p3, :cond_4

    .line 11
    invoke-interface {p3, p1, p2}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    .line 12
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onHostDestroy()V
    .locals 4

    .line 1
    monitor-enter p0

    const/4 v0, 0x2

    .line 2
    :try_start_0
    iput v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver;->releaseResourcesIfQueueEmpty()V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    iput-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mSaveQueueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-eqz v1, :cond_0

    .line 12
    sget-object v1, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "release Effect Processor"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->releaseIfNeeded()V

    .line 14
    iput-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 15
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 16
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onHostDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception v1

    .line 17
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    .line 18
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public onHostPause()V
    .locals 3

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iput-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onHostPause"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 10
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public onHostResume(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    .line 4
    sget-object p1, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onHostResume: isCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onModuleDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mSaveQueueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCapture()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "release Effect Processor"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->releaseIfNeeded()V

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 8
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mbModuleSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mbModuleSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onParallelProcessFinish: path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onParallelProcessFinish: live: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isLiveShotTask()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isLiveShotTask()Z

    move-result v0

    const-string/jumbo v1, "onParallelProcessFinish: insert: "

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getMicroVideoPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 5
    sget-object p2, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p2, p0, Lcom/android/camera/storage/ImageSaver;->mLiveShotPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    sget-object p2, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "onParallelProcessFinish: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 9
    invoke-direct {p0, p1, p2, p2}, Lcom/android/camera/storage/ImageSaver;->insertParallelTaskData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_1

    .line 10
    :cond_1
    sget-object p1, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onParallelProcessFinish: error: jpeg data is null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 11
    :cond_2
    sget-object p2, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "onParallelProcessFinish: enqueue: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p2, p0, Lcom/android/camera/storage/ImageSaver;->mLiveShotPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object p2

    if-eqz p2, :cond_3

    .line 14
    array-length p2, p2

    .line 15
    invoke-virtual {p0, p2}, Lcom/android/camera/storage/ImageSaver;->addUsedMemory(I)V

    goto :goto_0

    :cond_3
    move p2, v2

    .line 16
    :goto_0
    sget-object p3, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onParallelProcessFinish: memory[+]: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", task: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :goto_1
    sget-object p1, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onParallelProcessFinish: pending: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/storage/ImageSaver;->mLiveShotPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {p3}, Ljava/util/Queue;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 20
    :cond_4
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/camera/storage/ImageSaver;->dealExif(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;)V

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/storage/ImageSaver;->insertParallelTaskData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)V

    return v2
.end method

.method public onSaveFinish(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/camera/storage/ImageSaver;->reduceUsedMemory(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mSaveQueueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mbModuleSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    iget v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    iget v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-ne p1, v1, :cond_2

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessorLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-eqz v1, :cond_1

    .line 7
    sget-object v1, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "release Effect Processor"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->releaseIfNeeded()V

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mbModuleSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->isSaveQueueFull()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/android/camera/storage/ImageSaver;->mSaveRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    const/16 v1, 0x28

    if-ge p1, v1, :cond_3

    sget-object p1, Lcom/android/camera/storage/ImageSaver;->mPreviewRequestQueue:Ljava/util/concurrent/BlockingQueue;

    .line 13
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    if-ge p1, v1, :cond_3

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mIsBusy:Z

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver;->releaseResourcesIfQueueEmpty()V

    .line 16
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public onVideoClipSavingCancelled(Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoClipSavingCancelled: video = 0, timestamp = -1"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "empty"

    const-wide/16 v1, -0x1

    .line 2
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/camera/storage/ImageSaver;->onVideoClipSavingCompleted(Ljava/lang/Object;Ljava/lang/String;J)V

    return-void
.end method

.method public onVideoClipSavingCompleted(Ljava/lang/Object;Ljava/lang/String;J)V
    .locals 3

    .line 1
    const-class v0, Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onVideoClipSavingCompleted: Oops, corresponding task is not found"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 4
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoClipSavingCompleted: timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1, p2, p3, p4}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillVideoPath(Ljava/lang/String;J)V

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isJpegDataReady()Z

    move-result p2

    const-string p3, ", task: "

    const-string/jumbo p4, "onVideoClipSavingCompleted: memory[-]: "

    if-eqz p2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/android/camera/storage/ImageSaver;->mLiveShotPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object p2

    array-length p2, p2

    .line 9
    invoke-virtual {p0, p2}, Lcom/android/camera/storage/ImageSaver;->reduceUsedMemory(I)V

    .line 10
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p2, 0x0

    .line 13
    invoke-direct {p0, p1, p2, p2}, Lcom/android/camera/storage/ImageSaver;->insertParallelTaskData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isPictureFilled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 15
    sget-object p2, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onVideoClipSavingCompleted: get error jpeg data, ignore this liveshot"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p2, p0, Lcom/android/camera/storage/ImageSaver;->mLiveShotPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object p2

    array-length p2, p2

    .line 18
    invoke-virtual {p0, p2}, Lcom/android/camera/storage/ImageSaver;->reduceUsedMemory(I)V

    .line 19
    sget-object v0, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 22
    :cond_3
    sget-object p2, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "onVideoClipSavingCompleted: enqueue: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p2, p0, Lcom/android/camera/storage/ImageSaver;->mLiveShotPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 24
    :cond_4
    :goto_0
    sget-object p1, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onVideoClipSavingCompleted: pending: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/storage/ImageSaver;->mLiveShotPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {p3}, Ljava/util/Queue;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVideoClipSavingException(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object p2, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onVideoClipSavingException: video = 0, timestamp = -1"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "empty"

    const-wide/16 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/camera/storage/ImageSaver;->onVideoClipSavingCompleted(Ljava/lang/Object;Ljava/lang/String;J)V

    return-void
.end method

.method public postHideThumbnailProgressing()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/storage/ImageSaver$2;

    invoke-direct {v2, p0}, Lcom/android/camera/storage/ImageSaver$2;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postUpdateThumbnail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 4
    iget-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;

    invoke-virtual {p1, p2}, Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;->setNeedAnimation(Z)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Lcom/android/camera/storage/ImageSaver$ThumbnailUpdater;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs processorJpegSync(Z[Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver;->initEffectProcessorLocked()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-eqz v1, :cond_1

    .line 4
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    if-eqz v3, :cond_0

    .line 5
    iget-object v4, p0, Lcom/android/camera/storage/ImageSaver;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v4, v3, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorJpegSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "processorJpegSync(): mEffectProcessor is null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized reduceUsedMemory(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/MemoryManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/storage/MemoryManager;->reduceUsedMemory(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releaseStoredJpegData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mStoredTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    return-void
.end method

.method public saveStoredData()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mStoredTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 5
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 6
    iget-object v5, p0, Lcom/android/camera/storage/ImageSaver;->mStoredTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientation([B)I

    move-result v5

    .line 7
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v6

    add-int/2addr v6, v5

    .line 8
    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move v9, v4

    move v4, v3

    move v3, v9

    .line 9
    :goto_0
    new-instance v6, Lcom/android/camera/storage/ImageSaveRequest$Builder;

    invoke-direct {v6}, Lcom/android/camera/storage/ImageSaveRequest$Builder;-><init>()V

    .line 10
    iget-object v7, p0, Lcom/android/camera/storage/ImageSaver;->mStoredTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v7}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setData([B)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 11
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setNeedThumbnail(Z)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 12
    invoke-virtual {v6, v2}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setTitle(Ljava/lang/String;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    const/4 v0, 0x0

    .line 13
    invoke-virtual {v6, v0}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setOldTitle(Ljava/lang/String;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setDate(J)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 15
    invoke-virtual {v6, v0}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setUri(Landroid/net/Uri;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 16
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 17
    invoke-virtual {v6, v3}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setWidth(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 18
    invoke-virtual {v6, v4}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setHeight(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 19
    invoke-virtual {v6, v0}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setExif(Lcom/android/gallery3d/exif/ExifInterface;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 20
    invoke-virtual {v6, v5}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setOrientation(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    const/4 v2, 0x0

    .line 21
    invoke-virtual {v6, v2}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setHide(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 22
    invoke-virtual {v6, v2}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setMap(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    const/4 v3, 0x1

    .line 23
    invoke-virtual {v6, v3}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setFinalImage(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 24
    invoke-virtual {v6, v2}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setMirror(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 25
    invoke-virtual {v6, v2}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setParallelProcess(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 26
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setAlgorithmName(Ljava/lang/String;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 27
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    const/4 v1, -0x1

    .line 28
    invoke-virtual {v6, v1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setPreviewThumbnailHash(I)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 29
    invoke-virtual {p0, v6, v0}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaveRequest$Builder;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public setDropBitmapTexture(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mBitmapTextureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/storage/ImageSaver;->mDropBitmapTexture:Z

    .line 3
    sget-object v1, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDropBitmapTexture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSuperNightExifSupport(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/storage/ImageSaver;->mSupportSuperNightExif:Z

    return-void
.end method

.method public updateImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/storage/ImageSaveRequest$Builder;

    invoke-direct {v0}, Lcom/android/camera/storage/ImageSaveRequest$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setTitle(Ljava/lang/String;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 3
    invoke-virtual {v0, p2}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setOldTitle(Ljava/lang/String;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->build()Lcom/android/camera/storage/ImageSaveRequest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->addSaveRequest(Lcom/android/camera/storage/SaveRequest;)V

    return-void
.end method

.method public updatePreviewThumbnailUri(ILandroid/net/Uri;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mSaverCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_2

    .line 4
    sget-object v1, Lcom/android/camera/storage/ImageSaver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "previewThumbnailHash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", current thumbnail hash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 6
    :cond_1
    invoke-virtual {v2, p2}, Lcom/android/camera/Thumbnail;->setUri(Landroid/net/Uri;)V

    .line 7
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
