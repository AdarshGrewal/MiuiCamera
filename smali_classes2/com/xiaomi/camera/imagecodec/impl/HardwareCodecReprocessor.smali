.class public Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;
.super Lcom/xiaomi/camera/imagecodec/BaseReprocessor;
.source "HardwareCodecReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$ReprocessHandler;
    }
.end annotation


# static fields
.field public static final MAX_IMAGE_BUFFER_SIZE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "HardwareCodecReprocessor"

.field public static final sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton<",
            "Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mCodecLock:Ljava/lang/Object;

.field public mCodecOperationHandler:Landroid/os/Handler;

.field public mCodecOperationThread:Landroid/os/HandlerThread;

.field public mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

.field public final mDataLock:Ljava/lang/Object;

.field public mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

.field public mInitialized:Z

.field public mJpegImageReader:Landroid/media/ImageReader;

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
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1000(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->reprocessImage()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->releaseWakeLock()V

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Lcom/xiaomi/media/imagecodec/ImageCodec;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;Lcom/xiaomi/media/imagecodec/ImageCodec;)Lcom/xiaomi/media/imagecodec/ImageCodec;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->sendReprocessRequest()V

    return-void
.end method

.method public static synthetic access$700(Landroid/media/Image;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mReprocessStartTime:J

    return-wide v0
.end method

.method public static synthetic access$900(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->checkConditionIsReady()Z

    move-result p0

    return p0
.end method

.method private acquireWakeLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private checkConditionIsReady()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v3, "checkConditionIsReady: processor is busy!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return v2

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 7
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "checkConditionIsReady: ignore null request!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 8
    :cond_1
    invoke-direct {p0, v1}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->createImageCodecIfNeed(Lcom/xiaomi/camera/imagecodec/ReprocessData;)Z

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private createImageCodecIfNeed(Lcom/xiaomi/camera/imagecodec/ReprocessData;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    .line 2
    new-instance v2, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v3

    .line 3
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v0

    invoke-direct {v2, v3, v4, v0}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 4
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputWidth()I

    move-result v3

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputHeight()I

    move-result v4

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result p1

    invoke-direct {v0, v3, v4, p1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    .line 8
    sget-object p1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " YUV  INPUT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget-object p1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " YUV OUTPUT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter p1

    const/16 v3, 0x100

    .line 11
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getFormat()I

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v1, v5

    :cond_0
    if-eqz v1, :cond_1

    .line 12
    invoke-direct {p0, v2, v0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->initImageReaderAndImageCodec(Landroid/hardware/camera2/params/InputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V

    .line 13
    :cond_1
    monitor-exit p1

    return v5

    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

.method private initImageReaderAndImageCodec(Landroid/hardware/camera2/params/InputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "initImageReaderAndImageCodec: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegImageReader:Landroid/media/ImageReader;

    .line 4
    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "initImageReader: closing obsolete image codec"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    invoke-virtual {v0}, Lcom/xiaomi/media/imagecodec/ImageCodec;->release()V

    .line 8
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    .line 9
    :cond_1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "initImageReader: closing obsolete reprocess reader"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 11
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegImageReader:Landroid/media/ImageReader;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegImageReader:Landroid/media/ImageReader;

    if-nez v0, :cond_3

    .line 13
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "initImageReader: create new one"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p2}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v0

    .line 15
    invoke-virtual {p2}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result p2

    const/16 v2, 0x100

    const/4 v3, 0x2

    .line 16
    invoke-static {v0, p2, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegImageReader:Landroid/media/ImageReader;

    .line 17
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$3;-><init>(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;)V

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 18
    :cond_3
    sget-object p2, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "initImageReader: reuse old one"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :goto_0
    iget-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    if-eqz p2, :cond_5

    .line 20
    invoke-virtual {p2}, Lcom/xiaomi/media/imagecodec/ImageCodec;->getInputSpec()Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    move-result-object p2

    iget p2, p2, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->width:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v0

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    .line 21
    invoke-virtual {p2}, Lcom/xiaomi/media/imagecodec/ImageCodec;->getInputSpec()Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    move-result-object p2

    iget p2, p2, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->height:I

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_5

    .line 22
    :cond_4
    sget-object p2, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "initImageCodec: closing obsolete image codec"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    invoke-virtual {p2}, Lcom/xiaomi/media/imagecodec/ImageCodec;->release()V

    .line 24
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    .line 25
    :cond_5
    iget-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    if-nez p2, :cond_6

    .line 26
    sget-object p2, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "initImageCodec: create new one"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result p2

    .line 28
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result p1

    const/16 v0, 0x23

    .line 29
    invoke-static {p2, p1, v0}, Lcom/xiaomi/media/imagecodec/ImageCodec;->create(III)Lcom/xiaomi/media/imagecodec/ImageCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    .line 30
    iget-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegImageReader:Landroid/media/ImageReader;

    invoke-virtual {p2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/media/imagecodec/ImageCodec;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 31
    :cond_6
    sget-object p1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string p2, "initImageCodec: reuse old one"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :goto_1
    sget-object p1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string p2, "initImageReaderAndImageCodec: X"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private reprocessImage()V
    .locals 9

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "reprocessImage: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 4
    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "reprocessImage: null metadata!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reprocessImage: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 8
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getJpegQuality()I

    move-result v1

    int-to-byte v8, v1

    .line 9
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v6

    .line 10
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/media/Image;

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mReprocessStartTime:J

    .line 13
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 14
    new-instance v1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$2;-><init>(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;Landroid/media/Image;IZB)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    :cond_1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "reprocessImage: X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method private sendReprocessRequest()V
    .locals 5

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "============================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mInitialized:Z

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "sendReprocessRequest: NOT initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 6
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v3, "sendReprocessRequest: idle. Try to close device 30s later."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "sendReprocessRequest: BUSY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 14
    :cond_3
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "sendReprocessRequest: send MSG_REPROCESS_IMAGE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

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
.method public deInit()V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mInitialized:Z

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mInitialized:Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v2

    .line 9
    :try_start_1
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegImageReader:Landroid/media/ImageReader;

    .line 10
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    invoke-virtual {v0}, Lcom/xiaomi/media/imagecodec/ImageCodec;->release()V

    .line 12
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mHardwareImageEncoder:Lcom/xiaomi/media/imagecodec/ImageCodec;

    .line 13
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 16
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 17
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    .line 18
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationHandler:Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 20
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 22
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 23
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    .line 24
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 26
    :cond_3
    :goto_1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit: X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 27
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 28
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public getVersionCode()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/media/imagecodec/ImageCodec;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "init: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mInitialized:Z

    if-nez v1, :cond_0

    const-string v1, "power"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 5
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 7
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "ImageCodecThread"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    .line 8
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 9
    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mCodecOperationHandler:Landroid/os/Handler;

    .line 10
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "RequestDispatcher"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    .line 11
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance p1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$ReprocessHandler;

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor$ReprocessHandler;-><init>(Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    .line 13
    iput-boolean v2, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mInitialized:Z

    .line 14
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    sget-object p1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "init: X"

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

.method public setOutputPictureSpec(III)V
    .locals 3

    const/16 v0, 0x100

    if-ne p3, v0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mJpegOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

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
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

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
    sget-object p1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "submit: drop this request due to no callback was provided!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mInitialized:Z

    if-eqz v0, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->acquireWakeLock()V

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
    sget-object v3, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v5, "submit: wait image pool>>"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V

    .line 12
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

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
    sget-object v3, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

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
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "close original image"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;->onImageClosed(Ljava/util/List;)V

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/HardwareCodecReprocessor;->sendReprocessRequest()V

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
