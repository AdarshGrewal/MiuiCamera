.class public Lcom/android/camera2/MiCamera2ShotRawBurst$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2ShotRawBurst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2ShotRawBurst;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2ShotRawBurst;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2ShotRawBurst;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotRawBurst;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    .line 2
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotRawBurst;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCaptureBufferLost:<RAW>: frameNumber = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotRawBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotRawBurst;->access$300(Lcom/android/camera2/MiCamera2ShotRawBurst;)Lcom/android/camera2/SuperNightReprocessHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/SuperNightReprocessHandler;->cancel()V

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotRawBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getSuperNight()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotRawBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1, p2}, Lcom/android/camera2/MiCamera2;->setAWBLock(Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotRawBurst;

    iget-object p3, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3, p2, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotRawBurst;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureCompleted:<RAW>: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotRawBurst;

    iget-boolean p2, p1, Lcom/android/camera2/MiCamera2Shot;->mDeparted:Z

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotRawBurst;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCaptureCompleted:<RAW>: ignored as has departed"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotRawBurst;->access$300(Lcom/android/camera2/MiCamera2ShotRawBurst;)Lcom/android/camera2/SuperNightReprocessHandler;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/camera2/SuperNightReprocessHandler;->queueCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotRawBurst;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureFailed:<RAW>: reason = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " frameNumber = "

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
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotRawBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotRawBurst;->access$300(Lcom/android/camera2/MiCamera2ShotRawBurst;)Lcom/android/camera2/SuperNightReprocessHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/SuperNightReprocessHandler;->cancel()V

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotRawBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getSuperNight()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotRawBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1, p2}, Lcom/android/camera2/MiCamera2;->setAWBLock(Z)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotRawBurst;

    iget-object p3, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3, p2, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotRawBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotRawBurst;->access$008(Lcom/android/camera2/MiCamera2ShotRawBurst;)I

    .line 2
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotRawBurst;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted:<RAW>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedZslShutter()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getPlayToneOnCaptureStart()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotRawBurst;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    new-instance p2, Lcom/android/camera2/QuickViewParam;

    const/4 p5, 0x0

    invoke-direct {p2, p5, p5, p5, p5}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    .line 7
    invoke-interface {p1, p2}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    .line 8
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotRawBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotRawBurst;->access$000(Lcom/android/camera2/MiCamera2ShotRawBurst;)I

    move-result p2

    sget-object p5, Lcom/android/camera2/MiCamera2ShotRawBurst;->EV_LIST:[I

    array-length p5, p5

    if-ne p2, p5, :cond_1

    .line 9
    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onAllHalFrameReceived()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/android/camera2/MiCamera2ShotRawBurst;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCaptureStarted:<RAW>: null picture callback"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-wide/16 p1, 0x0

    .line 11
    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotRawBurst;

    invoke-static {p5}, Lcom/android/camera2/MiCamera2ShotRawBurst;->access$200(Lcom/android/camera2/MiCamera2ShotRawBurst;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p5

    invoke-virtual {p5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide p5

    cmp-long p1, p1, p5

    if-nez p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotRawBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotRawBurst;->access$200(Lcom/android/camera2/MiCamera2ShotRawBurst;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTimestamp(J)V

    :cond_2
    return-void
.end method
