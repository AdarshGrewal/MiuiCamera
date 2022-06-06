.class public Lcom/xiaomi/camera/core/PostProcessor;
.super Ljava/lang/Object;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;,
        Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;,
        Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;,
        Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;
    }
.end annotation


# static fields
.field public static final DISCARD_FREE_BUFFER_PER_JPEG_NUM:I = 0x19

.field public static final RESULT_CODE_CROP_REGION:I = 0x1

.field public static final RESULT_CODE_FLAW_RESULT:I = 0x0

.field public static final RESULT_CODE_RESULT_METADATA:I = 0x3

.field public static final RESULT_CODE_SESSION_DIED:I = 0x2

.field public static final RESULT_MSG_ANCHOR_TIMESTAMP:I = 0xa

.field public static final SKIP_IMAGEPROCESSOR:Z

.field public static final SKIP_IMAGEPROCESS_PROP:Ljava/lang/String; = "camera.skip.imageprocessor"

.field public static final SKIP_MULTI:Z

.field public static final SKIP_MULTI_PROP:Ljava/lang/String; = "camera.skip.multi"

.field public static final SKIP_RENDER:Z

.field public static final SKIP_RENDER_PROP:Ljava/lang/String; = "camera.skip.render"

.field public static final STATE_STOPPED:I = 0x3

.field public static final STATE_STOPPING:I = 0x2

.field public static final STATE_WORKING:I = 0x1

.field public static final TAG:Ljava/lang/String; = "PostProcessor"


# instance fields
.field public mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

.field public mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

.field public final mCaptureStatusListener:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

.field public mHeifSaverCallback:Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

.field public mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

.field public mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

.field public final mImageProcessorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/xiaomi/engine/BufferFormat;",
            "Lcom/xiaomi/camera/core/ImageProcessor;",
            ">;"
        }
    .end annotation
.end field

.field public final mImageProcessorStatusCb:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

.field public mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field public mIsCaptureSessionCreated:Z

.field public final mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

.field public mJpegNumSinceLastFreeBuffer:I

.field public final mLock:Ljava/lang/Object;

.field public mMaxParallelRequestNumber:I

.field public final mObsoleteImageReaderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field public final mParallelTaskHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/xiaomi/camera/core/ParallelTaskData;",
            ">;"
        }
    .end annotation
.end field

.field public mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

.field public final mRawDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

.field public mResultDataCallbackListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/camera/core/IResultDataCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field public mSRRequireReprocess:Z

.field public mSessionStatusCb:Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;

.field public mSessionStatusCbListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/protocol/ISessionStatusCallBackListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mSpecList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;"
        }
    .end annotation
.end field

.field public mState:I

.field public final mTaskLock:Ljava/lang/Object;

.field public mToken:I

.field public mWaitingCropRegions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mWaitingEncodeDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;",
            ">;"
        }
    .end annotation
.end field

.field public mWaitingReprocessDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/xiaomi/camera/imagecodec/ReprocessData;",
            ">;"
        }
    .end annotation
.end field

.field public mWorkerHandler:Landroid/os/Handler;

.field public mWorkerThread:Landroid/os/HandlerThread;

.field public mZipperResultListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "camera.skip.multi"

    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_MULTI:Z

    const-string v1, "camera.skip.imageprocessor"

    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    const-string v1, "camera.skip.render"

    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_RENDER:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mMaxParallelRequestNumber:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CallbackHandleThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/HashMap;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskLock:Ljava/lang/Object;

    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureStatusListener:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mToken:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mIsCaptureSessionCreated:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mState:I

    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegNumSinceLastFreeBuffer:I

    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$1;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSessionStatusCb:Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;

    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$3;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$3;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mZipperResultListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$4;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$4;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$5;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$5;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mRawDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$6;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$6;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorStatusCb:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$7;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$7;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->init()V

    return-void
.end method

.method public static synthetic OooO00o(ZLcom/xiaomi/camera/core/CaptureData$CaptureDataBean;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public static synthetic OooO00o(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic access$000(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSessionStatusCbListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1000(Lcom/xiaomi/camera/core/PostProcessor;ILcom/xiaomi/camera/core/ParallelTaskData;Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/camera/core/PostProcessor;->chooseAndCloseTuningData(ILcom/xiaomi/camera/core/ParallelTaskData;Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->processRaw(Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->tryToCloseSession()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;Lcom/xiaomi/camera/core/CaptureDataListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;Lcom/xiaomi/camera/core/CaptureDataListener;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->removeParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->dumpFusionInputs(Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData;I)Lcom/xiaomi/protocol/ICustomCaptureResult;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->chooseCaptureResult(Lcom/xiaomi/camera/core/CaptureData;I)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageMemoryManager;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorStatusCb:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/camera/core/PostProcessor;->generateReprocessData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mHeifSaverCallback:Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/android/camera/storage/ImageSaver;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingReprocessDatas:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$2402(Lcom/xiaomi/camera/core/PostProcessor;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingReprocessDatas:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic access$2500(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingCropRegions:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$2502(Lcom/xiaomi/camera/core/PostProcessor;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingCropRegions:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic access$2600(Lcom/xiaomi/camera/core/PostProcessor;JLandroid/media/Image;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/camera/core/PostProcessor;->doEncodeJpeg(JLandroid/media/Image;)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/xiaomi/camera/core/PostProcessor;Landroid/media/Image;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->closePoolImage(Landroid/media/Image;)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->isNeedCallBackFinished(Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->onTaskSessionDied()V

    return-void
.end method

.method public static synthetic access$3000(Lcom/xiaomi/camera/core/PostProcessor;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegNumSinceLastFreeBuffer:I

    return p0
.end method

.method public static synthetic access$3002(Lcom/xiaomi/camera/core/PostProcessor;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegNumSinceLastFreeBuffer:I

    return p1
.end method

.method public static synthetic access$3008(Lcom/xiaomi/camera/core/PostProcessor;)I
    .locals 2

    iget v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegNumSinceLastFreeBuffer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegNumSinceLastFreeBuffer:I

    return v0
.end method

.method public static synthetic access$3100(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->needFreeBuffers(Lcom/xiaomi/camera/core/ParallelTaskData;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3200(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->freeBuffers()V

    return-void
.end method

.method public static synthetic access$3300(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->tryToStopBoost()V

    return-void
.end method

.method public static synthetic access$3400(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/camera/core/PostProcessor;->receiveSuperNightYuvImage(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic access$400(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mResultDataCallbackListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/xiaomi/camera/core/PostProcessor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->startBoost(I)V

    return-void
.end method

.method public static synthetic access$700(Lcom/xiaomi/camera/core/PostProcessor;JLcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/camera/core/PostProcessor;->putParallelTaskData(JLcom/xiaomi/camera/core/ParallelTaskData;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mZipperResultListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    return-object p0
.end method

.method private beginProcessYuv(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZZ)V
    .locals 13

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move/from16 v0, p4

    iget-object v1, v6, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v6, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v3, p3

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process yuv timestamp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " for flag "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v6, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;

    const/4 v11, 0x1

    if-nez v1, :cond_3

    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v2, "create super night data"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;-><init>(Lcom/xiaomi/camera/core/PostProcessor$1;)V

    if-nez v0, :cond_1

    sget v4, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_NONE:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/camera/core/PostProcessor;->generateReprocessData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v0

    iput-boolean v11, v12, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->mainImageReceived:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    sget v4, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_NONE:I

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/camera/core/PostProcessor;->generateReprocessData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setTuningImage(Landroid/media/Image;)Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTuningImage()Landroid/media/Image;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    :cond_2
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTuningImage(Landroid/media/Image;)V

    iput-boolean v11, v12, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->tuningImageReceived:Z

    :goto_0
    iput-object v0, v12, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->reprocessData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    iget-object v0, v6, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v3, "another yuv image received"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->reprocessData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    if-nez v0, :cond_4

    invoke-virtual {v2, p2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setMainImage(Landroid/media/Image;)Ljava/util/ArrayList;

    iput-boolean v11, v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->mainImageReceived:Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2, p2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setTuningImage(Landroid/media/Image;)Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTuningImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_5
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTuningImage(Landroid/media/Image;)V

    iput-boolean v11, v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->tuningImageReceived:Z

    :goto_1
    iget-boolean v0, v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->mainImageReceived:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->tuningImageReceived:Z

    if-eqz v0, :cond_8

    if-eqz p6, :cond_7

    const/16 v0, 0xc

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v1

    if-ne v0, v1, :cond_6

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    goto :goto_2

    :cond_6
    const/16 v0, 0xf

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    goto :goto_2

    :cond_7
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method private chooseAndCloseTuningData(ILcom/xiaomi/camera/core/ParallelTaskData;Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ne v2, p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setHWMFNRProcessing(Z)V

    :cond_1
    if-nez v2, :cond_9

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->isRequireTuningData()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p3}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/xiaomi/camera/core/PostProcessor;->hasEV0(Lcom/xiaomi/camera/core/CaptureData;)Z

    move-result p3

    if-ne v0, p1, :cond_2

    move v3, p3

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    move v4, v1

    move v5, v4

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_9

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTuningImage()Landroid/media/Image;

    move-result-object v7

    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isTuningImageFromPool()Z

    move-result v8

    invoke-static {p1}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v9

    if-nez v9, :cond_5

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    if-nez v4, :cond_7

    if-eqz v8, :cond_4

    invoke-virtual {p2, v7}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTuningImage(Landroid/media/Image;)V

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v6

    invoke-static {v6, v7, v0}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;I)Landroid/media/Image;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTuningImage(Landroid/media/Image;)V

    goto :goto_5

    :cond_5
    :goto_3
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    invoke-direct {p0, p3, v6}, Lcom/xiaomi/camera/core/PostProcessor;->isEVValid(ZLandroid/hardware/camera2/CaptureRequest;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v5, :cond_7

    sget-object v5, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    const-string v10, "choose tuning buffer: get the %d frame metadata"

    invoke-static {v6, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_6

    invoke-virtual {p2, v7}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTuningImage(Landroid/media/Image;)V

    move v5, v0

    :goto_4
    move v6, v1

    goto :goto_6

    :cond_6
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-static {v5, v7, v0}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;I)Landroid/media/Image;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTuningImage(Landroid/media/Image;)V

    move v5, v0

    move v6, v5

    goto :goto_6

    :cond_7
    :goto_5
    move v6, v0

    :goto_6
    if-eqz v6, :cond_8

    invoke-virtual {v7}, Landroid/media/Image;->close()V

    iget-object v6, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

    invoke-interface {v6, v7}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_9
    return-void
.end method

.method private chooseCaptureResult(Lcom/xiaomi/camera/core/CaptureData;I)Lcom/xiaomi/protocol/ICustomCaptureResult;
    .locals 3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00ooOoo()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getBurstNum()I

    move-result p2

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p1

    sub-int/2addr p2, v1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ALGOUP|MMCAMERA]: Add last metadata, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-eq p2, v1, :cond_2

    const/16 v2, 0xa

    if-eq p2, v2, :cond_2

    const/16 v2, 0x11

    if-eq p2, v2, :cond_2

    invoke-static {p2}, Lcom/xiaomi/camera/base/Constants;->isInMTKRawSuperNightProcessor(I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "need find last meta"

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v2, "need find first meta"

    invoke-static {p2, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v2, LOooO0O0/OooO0o/OooO00o/OooO00o/OooOO0O;->OooO00o:LOooO0O0/OooO0o/OooO00o/OooO00o/OooOO0O;

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0oo;

    invoke-direct {v2, v1}, LOooO0O0/OooO0o/OooO00o/OooO00o/OooO0oo;-><init>(Z)V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    if-nez p2, :cond_5

    sget-object p2, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "could not find desired meta"

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    return-object p1
.end method

.method private closePoolImage(Landroid/media/Image;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_0
    return-void
.end method

.method private configCaptureSession2IfNeeded(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 7

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getRoleIdByActualId(I)I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCameraCombinationMode(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-ne v1, v3, :cond_0

    const v1, 0x8013

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sget-object v3, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "second op mode is 0x%x"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-direct {v2, v1, v4, v4, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    new-instance v0, Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/16 v4, 0x23

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getOriginalProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ImageProcessor;->getTaskSession2()Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getOriginalProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ImageProcessor;->getTaskSession2()Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;->getBufferFormat()Lcom/xiaomi/engine/BufferFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/engine/BufferFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getOriginalProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/core/ImageProcessor;->configOutputConfigurations2(Lcom/xiaomi/engine/BufferFormat;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSessionStatusCb:Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/engine/MiCameraAlgo;->createSessionByOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)Lcom/xiaomi/engine/TaskSession;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    invoke-direct {v2, v1, v0}, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;-><init>(Lcom/xiaomi/engine/TaskSession;Lcom/xiaomi/engine/BufferFormat;)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getOriginalProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/core/ImageProcessor;->setTaskSession2(Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;)V

    :cond_2
    return-void
.end method

.method private deInit()V
    .locals 4

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isNeedImageReader()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mHeifSaverCallback:Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private deleteProcessingRecord(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/camera/core/PostProcessor$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/camera/core/PostProcessor$2;-><init>(Lcom/xiaomi/camera/core/PostProcessor;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private discardFreeBuffers(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/ImageReader;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "discardFreeBuffers: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/ImageReader;

    if-nez v3, :cond_3

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_3
    sget-object v9, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "discardFreeBuffers: imageReader_%dx%d_f%d_m%d"

    new-array v12, v7, [Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/media/ImageReader;->getWidth()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v1

    invoke-virtual {v8}, Landroid/media/ImageReader;->getHeight()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v2

    invoke-virtual {v8}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-virtual {v8}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/media/ImageReader;->discardFreeBuffers()V

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_3
    iget-object v8, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_8

    iget-object v8, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    invoke-virtual {v8}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isNeedImageReader()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object v8

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_7

    if-nez v3, :cond_6

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    :cond_6
    sget-object v9, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "discardFreeBuffers: imageReader_%dx%d_f%d_m%d"

    new-array v12, v7, [Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/media/ImageReader;->getWidth()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v1

    invoke-virtual {v8}, Landroid/media/ImageReader;->getHeight()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v2

    invoke-virtual {v8}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-virtual {v8}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/media/ImageReader;->discardFreeBuffers()V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v0, "discardFreeBuffers: X"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private doEncodeJpeg(JLandroid/media/Image;)V
    .locals 4

    const-string v0, "doEncodeJpeg: X"

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v2, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v3, "doEncodeJpeg: E"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->reprocessData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v2, p3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setMainImage(Landroid/media/Image;)Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object p3

    iget-object v1, v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->reprocessData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-interface {p3, v1}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p3, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p3

    goto :goto_1

    :catch_0
    move-exception p3

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not reprocess image with timestamp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p3, v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p3

    :cond_0
    sget-object p1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string p2, "could not encode jpeg for null super night data"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static dumpFusionInputs(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private finish()V
    .locals 4

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "finish: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isIdle()Z

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ImageProcessor;->stopWork()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerHandler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v2, "finish: failed!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "finish: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private freeBuffers()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/core/PostProcessor;->discardFreeBuffers(Ljava/util/List;)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    return-void
.end method

.method private generateReprocessData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .locals 14

    move-object v0, p0

    move/from16 v1, p4

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v6

    sget-object v3, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateReprocessData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " image|tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " reprocessFunction = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isFrontCamera()Z

    move-result v8

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputFormat()I

    move-result v11

    iget-object v13, v0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-object v3, v12

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move-object v11, v13

    invoke-direct/range {v3 .. v11}, Lcom/xiaomi/camera/imagecodec/ReprocessData;-><init>(Landroid/media/Image;Ljava/lang/String;Lcom/xiaomi/protocol/ICustomCaptureResult;ZIIILcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;)V

    invoke-virtual {v12, v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setReprocessFunctionType(I)V

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegQuality()I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setJpegQuality(I)V

    move/from16 v1, p5

    invoke-virtual {v12, v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setImageFromPool(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isRequireTuningData()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTuningImage()Landroid/media/Image;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setTuningImage(Landroid/media/Image;)Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setKeepTuningImage(Z)V

    invoke-virtual {v12, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setTuningImageFromPool(Z)V

    :cond_0
    const v1, 0x48454946

    invoke-virtual {v12}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v4

    if-ne v1, v4, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getSupportZeroDegreeOrientationImage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v12, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setRotateOrientationToZero(Z)V

    :cond_1
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isSupportIspHeif()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setOrientation(I)V

    :cond_2
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getSiqeType()B

    move-result v1

    invoke-virtual {v12, v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setSiqeType(B)V

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v12, v1, v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setYuvInputSize(II)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputHeight()I

    move-result v2

    invoke-virtual {v12, v1, v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setRawInputSize(II)V

    iget-object v1, v0, Lcom/xiaomi/camera/core/PostProcessor;->mRawDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    invoke-virtual {v12, v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setDataStatusCallback(Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getImageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setImageName(Ljava/lang/String;)V

    return-object v12
.end method

.method private getMinHoldImageNum(Landroid/util/SparseArray;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getParam()Lcom/xiaomi/protocol/IImageReaderParameterSets;

    move-result-object v2

    if-eqz v1, :cond_1

    iget v3, v2, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    if-ge v3, v1, :cond_2

    :cond_1
    iget v1, v2, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    sget-object p1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "getMinHoldImageNum: empty param"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/ParallelTaskData;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private hasEV0(Lcom/xiaomi/camera/core/CaptureData;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private init()V
    .locals 1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->OoooOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHeicImageFormatSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/camera/core/PostProcessor$8;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/core/PostProcessor$8;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mHeifSaverCallback:Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

    :cond_0
    return-void
.end method

.method private isAnyFrontProcessing()Z
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-boolean v3, v2, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    if-eqz v3, :cond_0

    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAnyFrontProcessing: with task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isEVValid(ZLandroid/hardware/camera2/CaptureRequest;)Z
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method private isNeedCallBackFinished(Lcom/xiaomi/camera/core/ParallelTaskData;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v1

    const/4 v2, -0x7

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v1

    const/4 v2, -0x6

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result p1

    invoke-static {p1}, Lcom/xiaomi/camera/base/Constants;->isInMTKRawSuperNightProcessor(I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isParallelSupportedAlgo(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/16 v1, 0x11

    if-eq p1, v1, :cond_1

    const/16 v1, 0x12

    if-eq p1, v1, :cond_1

    invoke-static {p1}, Lcom/xiaomi/camera/base/Constants;->isInMTKRawSuperNightProcessor(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private needFreeBuffers(Lcom/xiaomi/camera/core/ParallelTaskData;I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getBurstNum()I

    move-result p1

    if-le p1, v0, :cond_0

    return v0

    :cond_0
    rem-int/lit8 p2, p2, 0x19

    if-nez p2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isIdle()Z

    move-result p1

    return p1
.end method

.method private onTaskSessionDied()V
    .locals 5

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "onTaskSessionDied: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    iget-object v3, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/camera/core/ImageProcessor;

    if-eqz v4, :cond_0

    if-eq v4, v2, :cond_0

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ImageProcessor;->onTaskSessionDied()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ImageProcessor;->onTaskSessionDied()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/core/PostProcessor;->deleteProcessingRecord(Ljava/util/List;)V

    :cond_3
    invoke-static {}, Lcom/android/camera/Util;->dumpBugReportLog()V

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "onTaskSessionDied: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private processRaw(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 16

    move-object/from16 v1, p0

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v2, "processRaw: E"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/camera/core/PostProcessor;->getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v5

    if-eqz v5, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTuningImage()Landroid/media/Image;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isFirstResult()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    :cond_3
    move-object v10, v0

    if-eqz v10, :cond_4

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    new-instance v3, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isFrontCamera()Z

    move-result v11

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v13

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputFormat()I

    move-result v14

    iget-object v15, v1, Lcom/xiaomi/camera/core/PostProcessor;->mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-object v7, v3

    move-object v9, v2

    invoke-direct/range {v7 .. v15}, Lcom/xiaomi/camera/imagecodec/ReprocessData;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/protocol/ICustomCaptureResult;ZIIILcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;)V

    sget v4, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_RAW_MFNR:I

    invoke-virtual {v3, v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setReprocessFunctionType(I)V

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isMirror()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setFrontMirror(Z)V

    invoke-virtual {v3, v6}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setTuningImage(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setYuvInputSize(II)V

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputWidth()I

    move-result v0

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputHeight()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setRawInputSize(II)V

    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor;->mRawDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    invoke-virtual {v3, v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setDataStatusCallback(Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;)V

    :try_start_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v3, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processRaw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor;->mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v2, "processRaw: X"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no raw CaptureResult with timestamp "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no raw parallelTaskData with timestamp "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v2, "processRaw: null data bean list"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private putParallelTaskData(JLcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putParallelTaskData : data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " already existed !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private receiveSuperNightYuvImage(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)V
    .locals 18

    move-object/from16 v7, p0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v3, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const/4 v15, 0x1

    if-eqz p5, :cond_0

    move-object/from16 v9, p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v15}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;I)Landroid/media/Image;

    move-result-object v0

    move-object v9, v0

    :goto_0
    invoke-virtual {v9, v13, v14}, Landroid/media/Image;->setTimestamp(J)V

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00O0O0o()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    :cond_2
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/camera/core/PostProcessor;->beginProcessYuv(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZZ)V

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTIKRawSuperNightEngine2ND(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/xiaomi/camera/core/CaptureData;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureId()Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getOriginalProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v17

    move-object v9, v0

    move-wide v5, v13

    move v4, v15

    move-object v15, v1

    invoke-direct/range {v9 .. v17}, Lcom/xiaomi/camera/core/CaptureData;-><init>(IIIJLjava/lang/String;ZLcom/xiaomi/camera/core/ImageProcessor;)V

    iget-object v1, v7, Lcom/xiaomi/camera/core/PostProcessor;->mZipperResultListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/CaptureData;->setDataListener(Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;)V

    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/core/ParallelDataZipper;->postStartTask(Lcom/xiaomi/camera/core/CaptureData;)V

    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/camera/core/PostProcessor;->configCaptureSession2IfNeeded(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getParcelRequest()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MULTIFRAME_INPUTNUM:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueSafely(Landroid/hardware/camera2/impl/CameraMetadataNative;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueSafely(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/xiaomi/camera/core/ParallelDataZipper;->join(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    iget-object v0, v7, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;

    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object v1

    iget-object v0, v0, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->reprocessData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    invoke-virtual {v1, v0, v8, v4, v4}, Lcom/xiaomi/camera/core/ParallelDataZipper;->join(Landroid/media/Image;IIZ)V

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "resend taskdata done"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    move-wide v5, v13

    move v4, v15

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v3, p3

    move v12, v4

    move/from16 v4, p4

    move-wide v13, v5

    move v5, v10

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/camera/core/PostProcessor;->beginProcessYuv(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZZ)V

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    if-nez p4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, v7, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;

    iget-object v0, v0, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->reprocessData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/media/Image;

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getOriginalProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "[z] onHidlImageAvailable: try to do filter for raw"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;

    invoke-direct {v0, v9, v8, v12}, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;-><init>(Landroid/media/Image;IZ)V

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getOriginalProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchFilterTask(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "[z] onHidlImageAvailable: could not do filter for image processor null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v7, v13, v14, v9}, Lcom/xiaomi/camera/core/PostProcessor;->doEncodeJpeg(JLandroid/media/Image;)V

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "[z] onHidlImageAvailable: waiting image"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;Lcom/xiaomi/camera/core/CaptureDataListener;)V
    .locals 4

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseCaptureDataBean: dataBean = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseCaptureDataBean: mainImage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    invoke-interface {p2, v0}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isMainImageFromPool()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    invoke-interface {p2, v0}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isSubImageFromPool()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTuningImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    invoke-interface {p2, v0}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isTuningImageFromPool()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getPendingImageInfoList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/PendingImageInfo;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PendingImageInfo;->getImage()Landroid/media/Image;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    invoke-interface {p2, v1}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PendingImageInfo;->isPoolImage()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private removeParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/ParallelTaskData;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private startBoost(I)V
    .locals 2

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->OoooOOO()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(II)Z

    :cond_1
    return-void
.end method

.method private stopBoost()V
    .locals 1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->OoooOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V

    :cond_0
    return-void
.end method

.method private tryToCloseSession()V
    .locals 5

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryToCloseSession: E. processor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v2, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryToCloseSession: X. ignored. taskNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isStopping()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryToCloseSession: X. ignored. state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/camera/core/PostProcessor;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mState:I

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v2, "tryToCloseSession: STATE_STOPPED"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mIsCaptureSessionCreated:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    invoke-virtual {v3}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getParam()Lcom/xiaomi/protocol/IImageReaderParameterSets;

    move-result-object v3

    iget-boolean v3, v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    if-eqz v3, :cond_2

    sget-object v2, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v3, "tryToCloseSession: closeParallelSession"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->closeCaptureSession(Landroid/util/SparseArray;)V

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mIsCaptureSessionCreated:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->finish()V

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->deInit()V

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    if-eqz v0, :cond_4

    invoke-interface {v0, p0}, Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;->onPostProcessorClosed(Lcom/xiaomi/camera/core/PostProcessor;)V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingCropRegions:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingCropRegions:Ljava/util/Map;

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingReprocessDatas:Ljava/util/Map;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingReprocessDatas:Ljava/util/Map;

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    :cond_7
    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->stopBoost()V

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "tryToCloseSession: X. closed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelDataZipper;->printDataForDebug()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private tryToStopBoost()V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "tryToStopBoost"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "stopBoost"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->stopBoost()V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkAndSetResue()Z
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    iget v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mState:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mState:I

    monitor-exit v0

    return v1

    :cond_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearFrontProcessingTask()V
    .locals 10

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-boolean v4, v3, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->isParallelVTCameraSnapshot()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearFrontProcessingTask: timestamp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object v4

    new-instance v5, Lcom/xiaomi/camera/core/ReleaseDataParameter;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v6

    iget-object v8, p0, Lcom/xiaomi/camera/core/PostProcessor;->mZipperResultListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/xiaomi/camera/core/ReleaseDataParameter;-><init>(JLcom/xiaomi/camera/core/ParallelDataZipper$DataListener;Z)V

    invoke-virtual {v4, v5}, Lcom/xiaomi/camera/core/ParallelDataZipper;->postReleaseData(Lcom/xiaomi/camera/core/ReleaseDataParameter;)V

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/camera/core/PostProcessor;->removeParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    goto :goto_1

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->tryToCloseSession()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public configCaptureSession(Lcom/xiaomi/engine/BufferFormat;)V
    .locals 4

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configCaptureSession: E. format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/ImageProcessor;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ImageProcessor;->isStopped()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ImageProcessor;->tryToReuse()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ImageProcessor;->stopWorkWhenIdle()V

    :cond_0
    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    :cond_1
    sget-object p1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configCaptureSession: X. reuse image processor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ImageProcessor;->stopWorkWhenIdle()V

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xiaomi/camera/core/PostProcessor;->discardFreeBuffers(Ljava/util/List;)V

    :cond_4
    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getGraphDescriptor()Lcom/xiaomi/engine/GraphDescriptorBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/engine/GraphDescriptorBean;->getStreamNumber()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    new-instance v1, Lcom/xiaomi/camera/core/DualCameraProcessor;

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorStatusCb:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    invoke-direct {v1, v2, p1}, Lcom/xiaomi/camera/core/DualCameraProcessor;-><init>(Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;Lcom/xiaomi/engine/BufferFormat;)V

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/xiaomi/camera/core/SingleCameraProcessor;

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorStatusCb:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    invoke-direct {v1, v2, p1}, Lcom/xiaomi/camera/core/SingleCameraProcessor;-><init>(Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;Lcom/xiaomi/engine/BufferFormat;)V

    :goto_0
    iget v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mMaxParallelRequestNumber:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ImageProcessor;->setMaxParallelRequestNumber(I)V

    iget v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mMaxParallelRequestNumber:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ImageProcessor;->setImageBufferQueueSize(I)V

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ImageProcessor;->startWork()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->configOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSessionStatusCb:Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;

    invoke-static {p1, v2, v3}, Lcom/xiaomi/engine/MiCameraAlgo;->createSessionByOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)Lcom/xiaomi/engine/TaskSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ImageProcessor;->setTaskSession(Lcom/xiaomi/engine/TaskSession;)V

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configCaptureSession: X. new image processor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public configHALOutputSurface(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "configHALOutputSurface: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v2, "configHALOutputSurface: save obsolete image readers"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->getValueFromSparseArray(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isNeedImageReader()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configHALOutputSurface: clear obsolete surfaces: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :cond_2
    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configHALOutputSurface: paramsNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->getMinHoldImageNum(Landroid/util/SparseArray;)I

    move-result v1

    new-instance v2, Lcom/xiaomi/camera/core/ImageMemoryManager;

    invoke-direct {v2, v1}, Lcom/xiaomi/camera/core/ImageMemoryManager;-><init>(I)V

    iput-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    sget-object v2, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configHALOutputSurface: holdNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    invoke-virtual {v3}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isNeedImageReader()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getParam()Lcom/xiaomi/protocol/IImageReaderParameterSets;

    move-result-object v4

    iget v5, v4, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    iget v6, v4, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    iget v7, v4, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    iget v8, v4, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    invoke-static {v5, v6, v7, v8}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->ORIGINAL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    invoke-static {v5, v6, v1}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->setImageReaderNameDepends(Landroid/media/ImageReader;Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;Z)V

    new-instance v6, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;

    iget v7, v4, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    iget v4, v4, Lcom/xiaomi/protocol/IImageReaderParameterSets;->cameraType:I

    iget-object v8, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    invoke-direct {v6, v7, v4, v8}, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;-><init>(IILcom/xiaomi/camera/core/ImageMemoryManager;)V

    iget-object v4, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    invoke-virtual {v3, v5}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->setImageReader(Landroid/media/ImageReader;)V

    invoke-virtual {v3}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getAliasIndex()I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    invoke-virtual {v3}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getAliasIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    invoke-virtual {v4, v5}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->setImageReader(Landroid/media/ImageReader;)V

    :cond_3
    iget-object v4, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "configHALOutputSurface: X"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public configParallelCaptureSession()Z
    .locals 6

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "configParallelCaptureSession: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParallelCaptureSession: surfaceList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    invoke-virtual {v4}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getParam()Lcom/xiaomi/protocol/IImageReaderParameterSets;

    move-result-object v4

    iget-boolean v4, v4, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    invoke-virtual {v4}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    invoke-virtual {v5}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getParam()Lcom/xiaomi/protocol/IImageReaderParameterSets;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->getPhysicCameraId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    sget-object v2, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configParallelCaptureSession: surfaceMap.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mIsCaptureSessionCreated:Z

    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->createCaptureSession(Ljava/util/Map;)V

    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v3, "configParallelCaptureSession: X. true"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "configParallelCaptureSession: X. false"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public destroyWhenTasksFinished(I)V
    .locals 7

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v0, "destroyWhenTasksFinished: STATE_STOPPED"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->getToken()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v6

    aput-object p0, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    const-string p1, "destroyWhenTasksFinished: owner(%d) cannot destroy %s whose owner is %d"

    invoke-static {v4, p1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mState:I

    if-ne v0, v3, :cond_3

    iput v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mState:I

    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->tryToCloseSession()V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCaptureStatusListener()Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureStatusListener:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    return-object v0
.end method

.method public getFrontProcessingCount()I
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-boolean v3, v3, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSpecList()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSpecList:Landroid/util/SparseArray;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getToken()I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mToken:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAnyRequestBlocked()Z
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/xiaomi/camera/core/PostProcessor;->isParallelSupportedAlgo(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    if-eqz v3, :cond_0

    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAnyRequestBlocked: taskData algoType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", timestamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAnyRequestIsHWMFNRProcessing()Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->isHWMFNRProcessing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isIdle()Z
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIdle: processor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", taskNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSRRequireReprocess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSRRequireReprocess:Z

    return v0
.end method

.method public isStopped()Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    iget v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mState:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isStopping()Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    iget v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mState:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public needWaitAlgorithmEngine()Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlgorithmEngineBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v2, "needWaitAlgorithmEngine: return true"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v2, "needWaitAlgorithmEngine: return false"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method public needWaitImageClose()Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ImageMemoryManager;->needWaitImageClose()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v2, "needWaitImageClose: return true"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v2, "needWaitImageClose: return false"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method public resetFrontProcessingTaskQueue()V
    .locals 10

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-boolean v4, v3, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->isParallelVTCameraSnapshot()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetFrontProcessingTaskQueue: timestamp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object v4

    new-instance v5, Lcom/xiaomi/camera/core/ReleaseDataParameter;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v6

    iget-object v8, p0, Lcom/xiaomi/camera/core/PostProcessor;->mZipperResultListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/xiaomi/camera/core/ReleaseDataParameter;-><init>(JLcom/xiaomi/camera/core/ParallelDataZipper$DataListener;Z)V

    invoke-virtual {v4, v5}, Lcom/xiaomi/camera/core/ParallelDataZipper;->postReleaseData(Lcom/xiaomi/camera/core/ReleaseDataParameter;)V

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/camera/core/PostProcessor;->removeParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    goto :goto_1

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->tryToCloseSession()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setImageSaver(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-void
.end method

.method public setMaxParallelRequestNumber(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mMaxParallelRequestNumber:I

    :cond_0
    return-void
.end method

.method public setOnSessionStatusCallBackListener(Lcom/xiaomi/protocol/ISessionStatusCallBackListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSessionStatusCbListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setResultDataCallbackListener(Lcom/xiaomi/camera/core/IResultDataCallbackListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mResultDataCallbackListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setSRRequireReprocess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSRRequireReprocess:Z

    return-void
.end method

.method public setToken(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mToken:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public tryToReuse()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mState:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
