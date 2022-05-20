.class public Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;
.super Lcom/xiaomi/camera/imagecodec/BaseReprocessor;
.source "IspInterfaceReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;,
        Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;
    }
.end annotation


# static fields
.field public static final MAX_IMAGE_BUFFER_SIZE:I = 0x2

.field public static final MAX_INPUT_STREAM_ID:I = 0x64

.field public static final MSG_DESTROY_ENCODER:I = 0x2

.field public static final MSG_EARLY_META:I = 0x66

.field public static final MSG_NATIVE_SERVICE_DIED:I = 0x65

.field public static final MSG_REPROCESS_IMAGE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "IspInterfaceReprocessor"

.field public static final sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton<",
            "Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

.field public final mCodecLock:Ljava/lang/Object;

.field public mCodecOperationHandler:Landroid/os/Handler;

.field public mCodecOperationThread:Landroid/os/HandlerThread;

.field public mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

.field public final mDataLock:Ljava/lang/Object;

.field public mInitialized:Z

.field public mIspInterfaceInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/xiaomi/camera/isp/IspInterfaceIO;",
            "Lcom/xiaomi/camera/isp/IspInterfaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mMaxJpegSize:I

.field public mNextStreamId:I

.field public mPicListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field public mRaw2YuvStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/xiaomi/camera/imagecodec/ReprocessData;",
            "Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mRawInputSize:Landroid/util/Size;

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

.field public mTuningListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mYuvListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field public mYuvTuningBufferSize:Landroid/util/Size;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    .line 6
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mYuvTuningBufferSize:Landroid/util/Size;

    .line 7
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$3;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTuningListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 8
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$4;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$4;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mYuvListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 9
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$5;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$5;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mPicListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRaw2YuvStatusMap:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;-><init>()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->sendReprocessRequest()V

    return-void
.end method

.method public static synthetic access$1100(Landroid/media/Image;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->checkConditionIsReady()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->reprocessImage()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->clearIspInterfaceList()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->releaseWakeLock()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->processNativeMessage(I)V

    return-void
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/isp/IspInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/isp/IspInterface;)Lcom/xiaomi/camera/isp/IspInterface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mReprocessStartTime:J

    return-wide v0
.end method

.method public static synthetic access$800(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRaw2YuvStatusMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->releaseReprocessData(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private align(II)I
    .locals 0

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, -0x1

    not-int p2, p2

    and-int/2addr p1, p2

    return p1
.end method

.method private cacheIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;Lcom/xiaomi/camera/isp/IspInterfaceInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private checkConditionIsReady()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v3, "checkConditionIsReady: processor is busy!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return v2

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 7
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "checkConditionIsReady: ignore null request!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 8
    :cond_1
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputWidth()I

    move-result v3

    .line 9
    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputHeight()I

    move-result v4

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    .line 10
    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image;

    const/16 v4, 0x20

    .line 11
    invoke-virtual {v3}, Landroid/media/Image;->getFormat()I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    move v2, v6

    :cond_2
    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getYuvInputWidth()I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v4

    :goto_0
    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getYuvInputHeight()I

    move-result v3

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 14
    :goto_1
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v4, v3}, Landroid/util/Size;-><init>(II)V

    .line 15
    sget-object v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "yuvInputSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->isMFNRSupported()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_6

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v8

    goto :goto_4

    .line 17
    :cond_6
    :goto_2
    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getRawInputWidth()I

    move-result v2

    .line 18
    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getRawInputHeight()I

    move-result v7

    if-lez v2, :cond_7

    if-lez v7, :cond_7

    .line 19
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v2, v7}, Landroid/util/Size;-><init>(II)V

    .line 20
    sget-object v2, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rawInputSize = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 21
    :cond_7
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v4, v3}, Landroid/util/Size;-><init>(II)V

    .line 22
    sget-object v3, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "override rawInputSize = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 23
    :goto_3
    iput-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRawInputSize:Landroid/util/Size;

    .line 24
    :goto_4
    new-instance v2, Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-direct {v2, v5, v3, v0}, Lcom/xiaomi/camera/isp/IspInterfaceIO;-><init>(Landroid/util/Size;Landroid/util/Size;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V

    .line 25
    invoke-direct {p0, v2}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getCachedIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v0

    if-nez v0, :cond_9

    .line 26
    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 27
    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v8

    .line 28
    :cond_8
    invoke-direct {p0, v2, v8}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->createIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v0

    .line 29
    :cond_9
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_1
    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    .line 31
    monitor-exit v1

    return v6

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 32
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private clearIspInterfaceList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/isp/IspInterfaceInfo;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->release()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;)Lcom/xiaomi/camera/isp/IspInterface;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getYuvInputSize()Landroid/util/Size;

    move-result-object v1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getRawInputSize()Landroid/util/Size;

    move-result-object v2

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getPicOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    move-result-object v3

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "createIspInterface>>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const-string v8, "yuvInput[%dx%d]"

    .line 7
    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    .line 8
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v7, v6, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const-string v8, " rawInput[%dx%d]"

    .line 10
    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_0
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getFormat()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v6, " output[%dx%d@%d]"

    .line 13
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    sget-object v5, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    const/16 v7, 0x23

    invoke-direct {v0, v4, v5, v7}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getRowStride(III)[I

    move-result-object v13

    .line 17
    new-instance v4, Lcom/xiaomi/camera/isp/IspStream;

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getNextStreamId()I

    move-result v5

    int-to-long v9, v5

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v11

    .line 18
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v12

    const/16 v14, 0x23

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/xiaomi/camera/isp/IspStream;-><init>(JII[II)V

    .line 19
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v4

    .line 21
    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getFormat()I

    move-result v3

    iget-object v5, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mPicListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 22
    invoke-direct {v0, v1, v4, v3, v5}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->initImageReader(IIILandroid/media/ImageReader$OnImageAvailableListener;)Landroid/media/ImageReader;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    const/16 v8, 0x20

    invoke-direct {v0, v4, v5, v8}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getRowStride(III)[I

    move-result-object v14

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getYuvOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    move-result-object v4

    .line 25
    new-instance v5, Lcom/xiaomi/camera/isp/IspStream;

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getNextStreamId()I

    move-result v8

    int-to-long v10, v8

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v12

    .line 26
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v13

    const/16 v15, 0x20

    move-object v9, v5

    invoke-direct/range {v9 .. v15}, Lcom/xiaomi/camera/isp/IspStream;-><init>(JII[II)V

    .line 27
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v4

    iget-object v8, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mYuvListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-direct {v0, v5, v4, v7, v8}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->initImageReader(IIILandroid/media/ImageReader$OnImageAvailableListener;)Landroid/media/ImageReader;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_2

    .line 29
    iget-object v2, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mYuvTuningBufferSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 30
    iget-object v5, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mYuvTuningBufferSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    const v7, 0x32315659

    .line 31
    iget-object v8, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTuningListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-direct {v0, v2, v5, v7, v8}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->initImageReader(IIILandroid/media/ImageReader$OnImageAvailableListener;)Landroid/media/ImageReader;

    move-result-object v2

    move-object v13, v2

    goto :goto_1

    :cond_2
    move-object v13, v3

    .line 32
    :goto_1
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    if-nez v4, :cond_3

    move-object v8, v3

    goto :goto_2

    .line 33
    :cond_3
    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    move-object v8, v2

    :goto_2
    if-nez v13, :cond_4

    move-object v9, v3

    goto :goto_3

    .line 34
    :cond_4
    invoke-virtual {v13}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    move-object v9, v2

    :goto_3
    iget v10, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mMaxJpegSize:I

    iget-object v12, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    move-object/from16 v11, p2

    .line 35
    invoke-static/range {v6 .. v12}, Lcom/xiaomi/camera/isp/IspInterface;->create(Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;Landroid/os/Handler;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v2

    .line 36
    new-instance v3, Lcom/xiaomi/camera/isp/IspInterfaceInfo;

    move-object v8, v3

    move-object v9, v2

    move-object/from16 v10, p1

    move-object v11, v1

    move-object v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/xiaomi/camera/isp/IspInterfaceInfo;-><init>(Lcom/xiaomi/camera/isp/IspInterface;Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/media/ImageReader;Landroid/media/ImageReader;Landroid/media/ImageReader;)V

    move-object/from16 v1, p1

    .line 37
    invoke-direct {v0, v1, v3}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->cacheIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;Lcom/xiaomi/camera/isp/IspInterfaceInfo;)V

    .line 38
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v3, "createIspInterface<<"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private getCachedIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;)Lcom/xiaomi/camera/isp/IspInterface;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/isp/IspInterfaceInfo;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->getIspInterface()Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 5
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getJpegData(Landroid/media/Image;)[B
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

.method private getNextStreamId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mNextStreamId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mNextStreamId:I

    rem-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private getRowStride(III)[I
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;-><init>(III)V

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getAnEmptyImage(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/media/Image;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p2

    .line 4
    array-length p3, p2

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 5
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 6
    aget-object v1, p2, v0

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-object p3
.end method

.method private initImageReader(IIILandroid/media/ImageReader$OnImageAvailableListener;)Landroid/media/ImageReader;
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initImageReader>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 2
    invoke-static {p1, p2, p3, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationHandler:Landroid/os/Handler;

    invoke-virtual {p1, p4, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 4
    sget-object p2, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string p3, "initImageReader<<"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private onServiceDied()V
    .locals 7

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "onServiceDied>>"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "isp hidl service died"

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v1, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setKeepTuningImage(Z)V

    .line 5
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-direct {p0, v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->releaseReprocessData(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    .line 6
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v1

    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 7
    invoke-virtual {v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-interface {v1, v4, v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 11
    invoke-virtual {v5, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setKeepTuningImage(Z)V

    .line 12
    invoke-direct {p0, v5}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->releaseReprocessData(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    .line 13
    invoke-virtual {v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v6

    invoke-virtual {v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 15
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_2
    iput-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    .line 18
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->clearIspInterfaceList()V

    .line 20
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 21
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "onServiceDied<<"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 22
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 23
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private processNativeMessage(I)V
    .locals 3

    const/16 v0, 0x65

    if-ne v0, p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->onServiceDied()V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported native msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private releaseReprocessData(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    .line 3
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isKeepTuningImage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTuningImage()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    .line 8
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private reprocessImage()V
    .locals 23

    move-object/from16 v7, p0

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "reprocessImage>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 4
    iput-object v0, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 5
    sget-object v2, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reprocessImage: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 7
    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v1

    if-nez v1, :cond_0

    .line 8
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "reprocessImage<<null metadata!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 11
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "reprocessImage<<null input buffer!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v4, 0x0

    .line 12
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/Image;

    .line 13
    invoke-virtual {v5}, Landroid/media/Image;->getFormat()I

    move-result v6

    const/16 v8, 0x20

    if-ne v8, v6, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    move v9, v4

    :goto_0
    const/4 v10, 0x0

    if-eqz v9, :cond_4

    .line 14
    iget-object v11, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v11

    .line 15
    :try_start_1
    iget-object v12, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRaw2YuvStatusMap:Ljava/util/HashMap;

    new-instance v13, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;

    invoke-direct {v13, v7, v10}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;)V

    invoke-virtual {v12, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    iget-object v12, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v12

    .line 18
    :try_start_2
    iget-object v11, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    if-nez v11, :cond_3

    .line 19
    sget-object v11, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "reprocessImage: skip raw task "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_3
    iget-object v11, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    iget-object v13, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRawInputSize:Landroid/util/Size;

    .line 21
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v13

    iget-object v14, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRawInputSize:Landroid/util/Size;

    .line 22
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v14

    .line 23
    invoke-virtual {v5}, Landroid/media/Image;->getFormat()I

    move-result v15

    .line 24
    invoke-virtual {v11, v13, v14, v15}, Lcom/xiaomi/camera/isp/IspInterface;->getInputStreamId(III)J

    move-result-wide v13

    .line 25
    monitor-exit v12

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 26
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 27
    :cond_4
    iget-object v11, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v11

    .line 28
    :try_start_4
    iget-object v12, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    if-nez v12, :cond_5

    .line 29
    sget-object v12, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "reprocessImage: skip task "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_5
    iget-object v12, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    .line 31
    invoke-virtual {v5}, Landroid/media/Image;->getWidth()I

    move-result v13

    .line 32
    invoke-virtual {v5}, Landroid/media/Image;->getHeight()I

    move-result v14

    .line 33
    invoke-virtual {v5}, Landroid/media/Image;->getFormat()I

    move-result v15

    .line 34
    invoke-virtual {v12, v13, v14, v15}, Lcom/xiaomi/camera/isp/IspInterface;->getInputStreamId(III)J

    move-result-wide v13

    .line 35
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 36
    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTuningImage()Ljava/util/ArrayList;

    move-result-object v12

    :goto_2
    if-ge v4, v3, :cond_7

    .line 38
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/Image;

    .line 39
    new-instance v10, Lcom/xiaomi/camera/isp/IspBuffer;

    if-nez v12, :cond_6

    const/4 v8, 0x0

    goto :goto_3

    .line 40
    :cond_6
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/media/Image;

    move-object/from16 v8, v17

    :goto_3
    invoke-direct {v10, v13, v14, v15, v8}, Lcom/xiaomi/camera/isp/IspBuffer;-><init>(JLandroid/media/Image;Landroid/media/Image;)V

    .line 41
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0x20

    const/4 v10, 0x0

    goto :goto_2

    .line 42
    :cond_7
    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getReprocessFunctionType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v3, v6, :cond_9

    .line 43
    sget v3, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_RAW_MFNR:I

    if-eq v3, v2, :cond_8

    sget v3, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_RAW_SUPERNIGHT:I

    if-ne v3, v2, :cond_9

    :cond_8
    const/16 v3, 0x23

    goto :goto_4

    .line 44
    :cond_9
    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v3

    :goto_4
    move v6, v3

    .line 45
    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getCropRegion()[I

    move-result-object v20

    .line 46
    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOrientation()I

    move-result v22

    .line 47
    new-instance v8, Lcom/xiaomi/camera/isp/IspRequest;

    invoke-virtual {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v3

    long-to-int v3, v3

    .line 48
    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isFrontMirror()Z

    move-result v17

    .line 49
    invoke-virtual {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v18

    move-object v15, v8

    move/from16 v16, v3

    move-object/from16 v19, v11

    move/from16 v21, v2

    invoke-direct/range {v15 .. v22}, Lcom/xiaomi/camera/isp/IspRequest;-><init>(IILandroid/os/Parcelable;Ljava/util/ArrayList;[III)V

    .line 50
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reprocessImage: requestFrameNo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mReprocessStartTime:J

    .line 52
    iget-object v0, v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 53
    new-instance v10, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v5

    move v4, v9

    move v5, v6

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Landroid/media/Image;ZILcom/xiaomi/camera/isp/IspRequest;)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    :cond_a
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "reprocessImage<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_2
    move-exception v0

    .line 55
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 56
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method private sendReprocessRequest()V
    .locals 5

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "============================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "sendReprocessRequest: NOT initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 6
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v3, "sendReprocessRequest: idle. Try to close device 30s later."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "sendReprocessRequest: BUSY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 14
    :cond_3
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "sendReprocessRequest: send MSG_REPROCESS_IMAGE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

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


# virtual methods
.method public customize(Ljava/util/HashMap;)V
    .locals 4

    const/16 v0, 0x65

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->mIsMFNRSupported:Z

    :cond_0
    const/16 v0, 0x66

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mMaxJpegSize:I

    :cond_1
    const/16 v1, 0x67

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    if-eqz p1, :cond_2

    .line 7
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mYuvTuningBufferSize:Landroid/util/Size;

    .line 8
    :cond_2
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customize: maxJpegSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", yuvTuningBufferSize="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mfnrOn="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->mIsMFNRSupported:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deInit()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->clearIspInterfaceList()V

    .line 9
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 12
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    .line 13
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationHandler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 15
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 17
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 18
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    .line 19
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 21
    :cond_2
    :goto_1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 22
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getVersionCode()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/isp/IspInterface;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "init>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    if-nez v1, :cond_0

    const-string v1, "power"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 5
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 7
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "IspHandlerThread"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    .line 8
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 9
    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationHandler:Landroid/os/Handler;

    .line 10
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "RequestDispatcher"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    .line 11
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance p1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    .line 13
    iput-boolean v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    .line 14
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    sget-object p1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "init<<"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method public onEarlyMetadataCallback(Lcom/xiaomi/camera/isp/ISPResult;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onEarlyMetaAvailable(Lcom/xiaomi/camera/isp/ISPResult;)V

    .line 4
    sget-object p1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "early meta return for %s. cost=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 5
    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mReprocessStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 7
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "receive yuv image: null processing data error"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
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

.method public queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getCachedIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->createIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v0

    :cond_0
    if-eqz p4, :cond_1

    .line 3
    invoke-virtual {v0, p3}, Lcom/xiaomi/camera/isp/IspInterface;->queryFeatureSetting(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;)Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setOutputPictureSpec(III)V
    .locals 0

    return-void
.end method

.method public submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

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
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    if-eqz v0, :cond_b

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->releaseReprocessData(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    .line 5
    sget-object p1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "submit: drop this request due to no callback was provided!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-nez v2, :cond_2

    .line 8
    sget-object p1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "submit: empty data list"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->acquireWakeLock()V

    .line 10
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isImageFromPool()Z

    move-result v3

    if-nez v3, :cond_6

    add-int/lit8 v3, v2, 0x1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image;

    .line 12
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    invoke-static {v4}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v4

    .line 13
    :goto_1
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 14
    sget-object v5, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v6, "submit: wait main image pool>>"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V

    .line 16
    sget-object v5, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v6, "submit: wait main image pool<<"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 17
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_4

    .line 18
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/Image;

    .line 19
    invoke-virtual {p0, v5}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->queueImageToPool(Landroid/media/Image;)Landroid/media/Image;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 20
    :cond_4
    invoke-virtual {p1, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setMainImage(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image;

    .line 22
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    goto :goto_3

    .line 23
    :cond_5
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getDataStatusCallback()Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    move-result-object v3

    .line 24
    invoke-interface {v3, v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;->onImageClosed(Ljava/util/List;)V

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isTuningImageFromPool()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isKeepTuningImage()Z

    move-result v0

    if-nez v0, :cond_a

    add-int/lit8 v0, v2, 0x1

    .line 26
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTuningImage()Ljava/util/ArrayList;

    move-result-object v3

    .line 27
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image;

    .line 28
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    invoke-static {v4}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v4

    .line 29
    :goto_4
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 30
    sget-object v5, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v6, "submit: wait tuning image pool>>"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, v4, v0, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V

    .line 32
    sget-object v5, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v6, "submit: wait tuning image pool<<"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 33
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_5
    if-ge v1, v2, :cond_8

    .line 34
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image;

    .line 35
    invoke-virtual {p0, v4}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->queueImageToPool(Landroid/media/Image;)Landroid/media/Image;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 36
    :cond_8
    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setTuningImage(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    .line 38
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    goto :goto_6

    .line 39
    :cond_9
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getDataStatusCallback()Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    move-result-object v0

    .line 40
    invoke-interface {v0, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;->onImageClosed(Ljava/util/List;)V

    .line 41
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->sendReprocessRequest()V

    return-void

    :catchall_0
    move-exception p1

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 46
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "NOT initialized. Call init() first!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
