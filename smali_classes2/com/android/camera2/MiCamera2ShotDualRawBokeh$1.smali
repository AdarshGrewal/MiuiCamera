.class public Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2ShotDualRawBokeh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$000(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$608(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureCompleted: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$600(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$200(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotDualRawBokeh"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraResults()Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$700(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$700(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_0

    .line 8
    invoke-static {v0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setMainPhysicalResult(Landroid/os/Parcelable;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$800(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$800(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/CaptureResult;

    if-eqz p3, :cond_1

    .line 12
    invoke-static {p3}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object p3

    .line 13
    invoke-virtual {p1, p3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setSubPhysicalResult(Landroid/os/Parcelable;)V

    .line 14
    :cond_1
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$600(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    move p3, v0

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 15
    :goto_0
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    .line 16
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$200(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p1

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$600(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p3

    if-ne p1, p3, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->onCaptureShutter()V

    .line 18
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object p3, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    const-string p1, "onCaptureCompleted: finished all frame"

    .line 19
    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_3
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    .line 21
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureFailed: reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " firstFrameTimestamp="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-wide v0, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " failedFrameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const-string v0, "ShotDualRawBokeh"

    .line 3
    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->onCaptureShutter()V

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-wide p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-wide v0, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureFailed(JI)V

    :cond_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$000(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureSequenceAborted: sequenceId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const-string v0, "ShotDualRawBokeh"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2ShotParallel;->processCaptureFail()V

    return-void
.end method

.method public onCaptureShutter()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$200(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000ooO()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    .line 4
    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$300(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$400(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_1
    const-string v0, "ShotDualRawBokeh"

    const-string v1, "not delay sound when multi frame end"

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7
    new-instance v3, Lcom/android/camera2/QuickViewParam;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    .line 8
    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v4

    iget-object v5, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {v5}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$300(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {v6}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$400(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v7

    :goto_0
    invoke-direct {v3, v4, v5, v1, v7}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    .line 9
    invoke-interface {v0, v3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_4
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 8

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureStarted: timestamp="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " isFirst="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-boolean p2, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotDualRawBokeh"

    const/4 p5, 0x4

    invoke-static {p5, p2, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$108(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p5}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$100(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p5

    iget-object p6, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p6}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$200(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p6

    if-ne p5, p6, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onAllHalFrameReceived()V

    .line 6
    :cond_0
    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-boolean p6, p5, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    if-eqz p6, :cond_5

    const/4 p6, 0x0

    .line 7
    iput-boolean p6, p5, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    .line 8
    iput-wide p3, p5, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    if-eqz p1, :cond_4

    .line 9
    new-instance p5, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 10
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object v5, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mSavePath:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 11
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getCaptureTime()J

    move-result-wide v6

    move-object v0, p5

    move-wide v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    .line 12
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$200(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p3

    invoke-virtual {p5, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    .line 13
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p3

    sget-object p4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->IMAGE_NAME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p4}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 14
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2ShotParallel;->getFileName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setImageName(Ljava/lang/String;)V

    .line 15
    :cond_1
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$300(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$400(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p3

    if-ne p3, p4, :cond_2

    goto :goto_0

    :cond_2
    move p4, p6

    .line 16
    :goto_0
    new-instance p3, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-direct {p3, v0}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    .line 17
    new-instance v0, Lcom/android/camera2/QuickViewParam;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    .line 18
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$300(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)Z

    move-result v2

    invoke-direct {v0, v1, v2, p4, p6}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    invoke-virtual {p3, v0}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p3

    iget-object p4, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget p4, p4, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 19
    invoke-virtual {p3, p4}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p3

    .line 20
    invoke-virtual {p3}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object p3

    .line 21
    invoke-interface {p1, p5, p3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 22
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureId(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$500(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    .line 24
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;->this$0:Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->access$200(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    .line 25
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_1

    :cond_3
    const-string p1, "onCaptureStarted: null task data"

    .line 26
    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p1, "onCaptureStarted: null picture callback"

    .line 27
    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method
