.class public Lcom/android/camera2/MiCamera2ShotStill$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2ShotStill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2ShotStill;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2ShotStill;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2ShotStill;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotStill;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureCompleted: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getSuperNight()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1, p2}, Lcom/android/camera2/MiCamera2;->setAWBLock(Z)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    const/16 v0, 0xad

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 6
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    iget-object v0, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotStill;->access$302(Lcom/android/camera2/MiCamera2ShotStill;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    const/16 v0, 0xbb

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    .line 10
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotStill;->access$300(Lcom/android/camera2/MiCamera2ShotStill;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotStill;->access$400(Lcom/android/camera2/MiCamera2ShotStill;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 13
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 14
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotStill;->access$100(Lcom/android/camera2/MiCamera2ShotStill;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotStill;->access$100(Lcom/android/camera2/MiCamera2ShotStill;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->isJpegDataReady()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotStill;->access$300(Lcom/android/camera2/MiCamera2ShotStill;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    if-eqz v0, :cond_5

    move p2, v1

    :cond_5
    if-eqz p2, :cond_8

    .line 16
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotStill;->access$500(Lcom/android/camera2/MiCamera2ShotStill;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 17
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotStill;->access$100(Lcom/android/camera2/MiCamera2ShotStill;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/camera2/MiCamera2ShotStill;->notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 18
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotStill;->access$100(Lcom/android/camera2/MiCamera2ShotStill;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v3

    invoke-interface {p1, v1, v3, v4}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(ZJ)V

    goto :goto_1

    .line 19
    :cond_6
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotStill;->access$100(Lcom/android/camera2/MiCamera2ShotStill;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v3

    invoke-interface {p1, v1, v3, v4}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(ZJ)V

    .line 20
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotStill;->access$100(Lcom/android/camera2/MiCamera2ShotStill;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    .line 21
    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotStill;->access$300(Lcom/android/camera2/MiCamera2ShotStill;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    iget-object v3, v3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 22
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraCapabilities;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 23
    invoke-static {p1, p2, v0, v3}, Lcom/android/camera2/MiCamera2ShotStill;->access$600(Lcom/android/camera2/MiCamera2ShotStill;Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_1

    .line 24
    :cond_7
    :goto_0
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotStill;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureCompleted: something wrong: callback = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mCurrentParallelTaskData = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    .line 25
    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotStill;->access$100(Lcom/android/camera2/MiCamera2ShotStill;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 27
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result p1

    const/16 p2, 0xe

    if-ne p1, p2, :cond_9

    .line 28
    invoke-static {p3, v2}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    .line 29
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    :cond_9
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotStill;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureFailed: reason="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " frameNumber="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getSuperNight()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1, p2}, Lcom/android/camera2/MiCamera2;->setAWBLock(Z)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    iget-object p3, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3, p2, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    const/16 p2, 0xbb

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p2, Lcom/android/camera2/QuickViewParam;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, v0, v0}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    .line 5
    invoke-interface {p1, p2, p3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureProgress(Lcom/android/camera2/QuickViewParam;Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedZslShutter()Z

    move-result p2

    const/4 p5, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPlayToneOnCaptureStart()Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    .line 5
    new-instance p2, Lcom/android/camera2/QuickViewParam;

    invoke-direct {p2, p5, p5, p5, p5}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    .line 6
    invoke-interface {p1, p2}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotStill;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p6, "onCaptureStarted: null picture callback"

    invoke-static {p2, p6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onAllHalFrameReceived()V

    :cond_3
    const-wide/16 p1, 0x0

    .line 9
    iget-object p6, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {p6}, Lcom/android/camera2/MiCamera2ShotStill;->access$100(Lcom/android/camera2/MiCamera2ShotStill;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p6

    invoke-virtual {p6}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotStill;->access$100(Lcom/android/camera2/MiCamera2ShotStill;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTimestamp(J)V

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotStill;->access$200(Lcom/android/camera2/MiCamera2ShotStill;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotStill;->access$100(Lcom/android/camera2/MiCamera2ShotStill;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setDateTakenTime(J)V

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotStill;->access$100(Lcom/android/camera2/MiCamera2ShotStill;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result p1

    const/16 p2, 0xe

    if-ne p1, p2, :cond_6

    .line 14
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotStill;->access$100(Lcom/android/camera2/MiCamera2ShotStill;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotStill;->access$100(Lcom/android/camera2/MiCamera2ShotStill;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    .line 16
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotStill;->access$100(Lcom/android/camera2/MiCamera2ShotStill;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 17
    :cond_6
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotStill;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCaptureStarted: mCurrentParallelTaskData: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotStill;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotStill;->access$100(Lcom/android/camera2/MiCamera2ShotStill;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
