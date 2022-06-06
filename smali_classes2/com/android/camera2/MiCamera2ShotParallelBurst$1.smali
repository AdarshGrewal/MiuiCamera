.class public Lcom/android/camera2/MiCamera2ShotParallelBurst$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2ShotParallelBurst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2ShotParallelBurst;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2ShotParallelBurst;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;Landroid/hardware/camera2/CaptureResult;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1008(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00ooOoo()Z

    move-result p1

    const-string v0, "/"

    const-string/jumbo v1, "onCaptureCompleted: "

    const-string v2, "ShotParallelBurst"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraResults()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureResult;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setMainPhysicalResult(Landroid/os/Parcelable;)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setSubPhysicalResult(Landroid/os/Parcelable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00ooOoo()Z

    move-result p1

    const-string/jumbo v0, "onCaptureCompleted: finished all frame"

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v3

    if-ne p1, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->onCaptureShutter()V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v3, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3, v1, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p1

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v3

    if-ne p1, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->onCaptureShutter()V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v3, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3, v1, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    invoke-static {p3}, Lcom/android/camera2/CaptureResultParser;->isSREnable(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_6

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-class v1, Ljava/lang/Boolean;

    const-string/jumbo v3, "xiaomi.superResolution.enabled"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCaptureCompleted: isSRRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onCaptureCompleted: isSREnabled = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_HDR_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p3, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onCaptureCompleted: hdrEnabled = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onCaptureCompleted: fusionType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$600(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onCaptureFailed: reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " firstFrameTimestamp="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-wide v0, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " failedFrameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const-string v0, "ShotParallelBurst"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->onCaptureShutter()V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-wide p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-wide v0, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureFailed(JI)V

    :cond_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onCaptureSequenceAborted: sequenceId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const-string v0, "ShotParallelBurst"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2ShotParallel;->processCaptureFail()V

    return-void
.end method

.method public onCaptureShutter()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o000o0o()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$400(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_1
    const-string v0, "ShotParallelBurst"

    const-string/jumbo v1, "not delay sound when multi frame end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v3, Lcom/android/camera2/QuickViewParam;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v4

    iget-object v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v5}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$400(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v6}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v7

    :goto_0
    invoke-direct {v3, v4, v5, v1, v7}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    invoke-interface {v0, v3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_4
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onCaptureStarted: timestamp="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " isFirst="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-boolean p2, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotParallelBurst"

    const/4 p5, 0x4

    invoke-static {p5, p2, p1}, LOooO0O0/OooO0O0/OooO0OO/OooO00o;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-boolean p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    if-eqz p1, :cond_0

    const/4 v2, -0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    move-wide v0, p3

    invoke-static/range {v0 .. v5}, LOooO0O0/OooO0O0/OooO0OO/OooO00o;->OooO00o(JIJLjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->enableSat()V

    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$208(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p5

    invoke-virtual {p5}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00ooOoo()Z

    move-result p5

    if-eqz p5, :cond_2

    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p5, p5, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p5}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p5

    if-eqz p5, :cond_2

    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p5}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p5

    iget-object p6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p6}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p6

    mul-int/lit8 p6, p6, 0x2

    if-ne p5, p6, :cond_3

    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {p5}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p5

    invoke-interface {p5}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onAllHalFrameReceived()V

    goto :goto_0

    :cond_2
    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p5}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p5

    iget-object p6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p6}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p6

    if-ne p5, p6, :cond_3

    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {p5}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p5

    invoke-interface {p5}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onAllHalFrameReceived()V

    :cond_3
    :goto_0
    iget-object p5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-boolean p6, p5, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    if-eqz p6, :cond_b

    const/4 p6, 0x0

    iput-boolean p6, p5, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    iput-wide p3, p5, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    if-eqz p1, :cond_a

    new-instance p5, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v5, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mSavePath:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getCaptureTime()J

    move-result-wide v6

    move-object v0, p5

    move-wide v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p3

    invoke-virtual {p5, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p3

    sget-object p4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->IMAGE_NAME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p4}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2ShotParallel;->getFileName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setImageName(Ljava/lang/String;)V

    :cond_4
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$400(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p3

    if-ne p3, p4, :cond_5

    move p3, p4

    goto :goto_1

    :cond_5
    move p3, p6

    :goto_1
    new-instance v0, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-direct {v0, v1}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    new-instance v1, Lcom/android/camera2/QuickViewParam;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$400(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result v3

    invoke-direct {v1, v2, v3, p3, p6}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    invoke-virtual {v0, v1}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p3

    iget-object p6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget p6, p6, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {p3, p6}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object p3

    invoke-interface {p1, p5, p3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureId(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$600(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setSatFusionType(I)V

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$700(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$800(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setHdrSR(Z)V

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setChangedBufferFormat(Lcom/xiaomi/engine/BufferFormat;)V

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$700(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p2

    invoke-static {p2}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    iget p2, p2, Lcom/android/camera/CameraSize;->width:I

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object p3

    iget p3, p3, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRawInputSize(II)V

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setActiveRegion(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setZoomRatio(F)V

    :cond_6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00ooOoo()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p2, p2, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    goto :goto_2

    :cond_7
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    :goto_2
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$700(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p2

    if-ne p2, p4, :cond_8

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2, p4}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrEnabled(Z)V

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$900(Lcom/android/camera2/MiCamera2ShotParallelBurst;)[I

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrEvValues([I)V

    :cond_8
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setParallelVTCameraSnapshot(Z)V

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_3

    :cond_9
    const-string/jumbo p1, "onCaptureStarted: null task data"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    const-string/jumbo p1, "onCaptureStarted: null picture callback"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    return-void
.end method
