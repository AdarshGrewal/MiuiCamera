.class public Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2ShotParallelRawBurst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureBufferLost: frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", firstTimestamp = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-wide p2, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotParallelRawBurst"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$708(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureCompleted: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$700(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$100(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotParallelRawBurst"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    .line 4
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraResults()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$800(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$800(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_0

    .line 7
    invoke-static {v0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setMainPhysicalResult(Landroid/os/Parcelable;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$700(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 10
    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v3}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$600(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v3, v3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 12
    sget-object v4, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_RAW_BUFFER_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v4}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    sget-object v3, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_RAW_BUFFER_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p3, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Size;

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureCompleted: rawSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    .line 15
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$600(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputWidth()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 16
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$600(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputHeight()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 17
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "onCaptureCompleted: override raw size: %dx%d"

    .line 19
    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$600(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p2

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p2, v1, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRawInputSize(II)V

    .line 21
    :cond_2
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    .line 22
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$100(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$700(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 23
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->onCaptureShutter()V

    .line 24
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2, v2, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    :cond_3
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

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

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

    const-string p2, "ShotParallelRawBurst"

    .line 3
    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-wide p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

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
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureProgressed: frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotParallelRawBurst"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string p2, "ShotParallelRawBurst"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2ShotParallel;->processCaptureFail()V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureSequenceCompleted: sequenceId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotParallelRawBurst"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureShutter()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$100(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    new-instance v3, Lcom/android/camera2/QuickViewParam;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    .line 6
    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v4

    iget-object v5, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v5}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v6}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v7

    :goto_0
    invoke-direct {v3, v4, v5, v1, v7}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    .line 7
    invoke-interface {v0, v3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_4
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 15

    move-object v0, p0

    move-wide/from16 v7, p3

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted: timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " frameNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, p5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " isFirst="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-boolean v4, v4, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "ShotParallelRawBurst"

    invoke-static {v9, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$008(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    .line 3
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 4
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v10

    .line 5
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$000(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result v1

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$100(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result v2

    if-ne v1, v2, :cond_0

    if-eqz v10, :cond_0

    .line 6
    invoke-interface {v10}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onAllHalFrameReceived()V

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-boolean v1, v1, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    if-eqz v1, :cond_4

    const/4 v3, -0x3

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move-wide/from16 v1, p3

    invoke-static/range {v1 .. v6}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(JIJLjava/lang/String;)V

    .line 9
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    .line 10
    iput-wide v7, v1, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    if-eqz v10, :cond_3

    .line 11
    new-instance v12, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 12
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v5

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v6, v1, Lcom/android/camera2/MiCamera2ShotParallel;->mSavePath:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 13
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getCaptureTime()J

    move-result-wide v13

    move-object v1, v12

    move-wide/from16 v3, p3

    move-wide v7, v13

    invoke-direct/range {v1 .. v8}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    .line 14
    new-instance v1, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-direct {v1, v2}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    .line 15
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result v2

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v11

    .line 16
    :goto_0
    new-instance v2, Lcom/android/camera2/QuickViewParam;

    iget-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    .line 17
    invoke-static {v4}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Z

    move-result v4

    invoke-direct {v2, v11, v4, v3, v11}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    invoke-virtual {v1, v2}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget v2, v2, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 18
    invoke-virtual {v1, v2}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object v1

    .line 20
    invoke-interface {v10, v12, v1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 21
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureId(Ljava/lang/String;)V

    .line 22
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$100(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    .line 23
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$400(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    .line 24
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v3}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRawInputSize(II)V

    .line 25
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setChangedBufferFormat(Lcom/xiaomi/engine/BufferFormat;)V

    .line 26
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 27
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v2, v1}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$602(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;Lcom/xiaomi/camera/core/ParallelTaskData;)Lcom/xiaomi/camera/core/ParallelTaskData;

    goto :goto_1

    :cond_2
    const-string v1, "onCaptureStarted: null task data"

    .line 28
    invoke-static {v9, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v1, "onCaptureStarted: null picture callback"

    .line 29
    invoke-static {v9, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method
