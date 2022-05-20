.class public Lcom/android/camera2/MiCamera2ShotRawBurst;
.super Lcom/android/camera2/MiCamera2Shot;
.source "MiCamera2ShotRawBurst.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2Shot<",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        ">;"
    }
.end annotation


# static fields
.field public static final BASE_EV_INDEX:I = 0x3

.field public static final EV_LIST:[I

.field public static final TAG:Ljava/lang/String; = "MiCamera2ShotRawBurst"


# instance fields
.field public mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

.field public final mReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

.field public mStartedNum:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera2/MiCamera2ShotRawBurst;->EV_LIST:[I

    return-void

    :array_0
    .array-data 4
        -0x18
        -0xc
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera2/SuperNightReprocessHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2Shot;-><init>(Lcom/android/camera2/MiCamera2;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 3
    iput-object p2, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera2/MiCamera2ShotRawBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mStartedNum:I

    return p0
.end method

.method public static synthetic access$008(Lcom/android/camera2/MiCamera2ShotRawBurst;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mStartedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mStartedNum:I

    return v0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2ShotRawBurst;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/android/camera2/MiCamera2ShotRawBurst;)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera2/MiCamera2ShotRawBurst;)Lcom/android/camera2/SuperNightReprocessHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    return-object p0
.end method


# virtual methods
.method public generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/MiCamera2ShotRawBurst$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotRawBurst$1;-><init>(Lcom/android/camera2/MiCamera2ShotRawBurst;)V

    return-object v0
.end method

.method public generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getRawSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 4
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 5
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2ShotRawBurst;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getParallelCallback()Lcom/xiaomi/camera/core/ParallelCallback;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera2/MiCamera2ShotRawBurst;->TAG:Ljava/lang/String;

    const-string v0, "notifyResultData: null parallel callback"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iget v3, p0, Lcom/android/camera2/MiCamera2Shot;->mPreviewThumbnailHash:I

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setPreviewThumbnailHash(I)V

    .line 6
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v3, v3}, Lcom/xiaomi/camera/core/ParallelCallback;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 8
    sget-object p1, Lcom/android/camera2/MiCamera2ShotRawBurst;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mJpegCallbackFinishTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic notifyResultData(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotRawBurst;->notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    return-void
.end method

.method public onImageReceived(Landroid/media/Image;I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2Shot;->mDeparted:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 3
    sget-object p2, Lcom/android/camera2/MiCamera2ShotRawBurst;->TAG:Ljava/lang/String;

    const-string v0, "onImageReceived:<RAW>"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-virtual {p2, p1}, Lcom/android/camera2/SuperNightReprocessHandler;->queueImage(Landroid/media/Image;)V

    goto/16 :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown image result type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    sget-object v1, Lcom/android/camera2/MiCamera2ShotRawBurst;->TAG:Ljava/lang/String;

    const-string v2, "onImageReceived:<JPEG>"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 7
    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 8
    sget-object v1, Lcom/android/camera2/MiCamera2ShotRawBurst;->TAG:Ljava/lang/String;

    const-string v2, "onImageReceived<JPEG>: image arrived first"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTimestamp(J)V

    .line 10
    :cond_3
    invoke-static {p1}, Lcom/android/camera/Util;->getFirstPlane(Landroid/media/Image;)[B

    move-result-object v1

    .line 11
    sget-object v2, Lcom/android/camera2/MiCamera2ShotRawBurst;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImageReceived:<JPEG>: size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_4

    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    array-length v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", timeStamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 15
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p1, v1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    .line 16
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isJpegDataReady()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    .line 17
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(ZJ)V

    .line 18
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotRawBurst;->notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    :cond_5
    :goto_1
    return-void

    .line 19
    :cond_6
    :goto_2
    sget-object p2, Lcom/android/camera2/MiCamera2ShotRawBurst;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "something wrong happened when image received: callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mCurrentParallelTaskData = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method

.method public prepare()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-virtual {v0, p0}, Lcom/android/camera2/SuperNightReprocessHandler;->prepare(Lcom/android/camera2/MiCamera2ShotRawBurst;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getSuperNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2;->setAWBLock(Z)V

    :cond_0
    return-void
.end method

.method public startSessionCapture()V
    .locals 7

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/camera2/MiCamera2Shot;->generateParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera2/MiCamera2ShotRawBurst;->TAG:Ljava/lang/String;

    const-string v1, "startSessionCapture: null task data"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isShot2Gallery()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setShot2Gallery(Z)Z

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotRawBurst;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->isInTimerBurstShotting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setInTimerBurstShotting(Z)Z

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotRawBurst;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotRawBurst;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 8
    :goto_0
    sget-object v5, Lcom/android/camera2/MiCamera2ShotRawBurst;->EV_LIST:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v3

    .line 9
    :goto_1
    invoke-static {v1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyRawReprocessHint(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 10
    invoke-static {v1, v6}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 11
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v6, Lcom/android/camera2/MiCamera2ShotRawBurst;->EV_LIST:[I

    aget v6, v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v3}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackPictureCapture(I)V

    .line 14
    sget-object v1, Lcom/android/camera2/MiCamera2ShotRawBurst;->TAG:Ljava/lang/String;

    const-string v3, "start capture burst"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 16
    sget-object v1, Lcom/android/camera2/MiCamera2ShotRawBurst;->TAG:Ljava/lang/String;

    const-string v2, "Failed to capture a still picture, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 18
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 19
    sget-object v1, Lcom/android/camera2/MiCamera2ShotRawBurst;->TAG:Ljava/lang/String;

    const-string v2, "Cannot capture a still picture"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_2
    return-void
.end method
