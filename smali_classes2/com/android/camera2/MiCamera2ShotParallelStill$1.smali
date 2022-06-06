.class public Lcom/android/camera2/MiCamera2ShotParallelStill$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2ShotParallelStill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2ShotParallelStill;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2ShotParallelStill;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onCaptureCompleted: frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotParallelStill"

    const/4 v0, 0x4

    invoke-static {v0, p2, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$000(Lcom/android/camera2/MiCamera2ShotParallelStill;Landroid/hardware/camera2/CaptureResult;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object v0, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_HDR_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p3, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "onCaptureCompleted: HDR error"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_SR_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p3, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "onCaptureCompleted: SR error"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$602(Lcom/android/camera2/MiCamera2ShotParallelStill;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraResults()Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$700(Lcom/android/camera2/MiCamera2ShotParallelStill;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$700(Lcom/android/camera2/MiCamera2ShotParallelStill;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setMainPhysicalResult(Landroid/os/Parcelable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$800(Lcom/android/camera2/MiCamera2ShotParallelStill;)I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$800(Lcom/android/camera2/MiCamera2ShotParallelStill;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/CaptureResult;

    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setSubPhysicalResult(Landroid/os/Parcelable;)V

    :cond_3
    :try_start_0
    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera2/CameraConfigs;->getDxoAsdScene()Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    move-result-object p3

    invoke-virtual {p1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->DXO_ASD_SCENE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2, p3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p3, "metadata set dxo_asd_scene fail!"

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

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

    const-string p2, " timestamp="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-wide v0, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const-string v0, "ShotParallelStill"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-wide p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-wide v0, p2, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureFailed(JI)V

    :cond_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    const-string p1, "ShotParallelStill"

    const-string/jumbo p2, "onCaptureProgressed"

    invoke-static {p1, p2}, LOooO0O0/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {p1, p3}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$000(Lcom/android/camera2/MiCamera2ShotParallelStill;Landroid/hardware/camera2/CaptureResult;)V

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

    const-string v0, "ShotParallelStill"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2ShotParallel;->processCaptureFail()V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onCaptureStarted: timestamp="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " frameNumber="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "ShotParallelStill"

    const/4 p6, 0x4

    invoke-static {p6, p5, p1}, LOooO0O0/OooO0O0/OooO0OO/OooO00o;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v2, -0x3

    const/4 v5, 0x0

    move-wide v0, p3

    invoke-static/range {v0 .. v5}, LOooO0O0/OooO0O0/OooO0OO/OooO00o;->OooO00o(JIJLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$100(Lcom/android/camera2/MiCamera2ShotParallelStill;)Z

    move-result p1

    const/4 p6, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {p1, v0, p6}, Lcom/android/camera2/CaptureRequestBuilder;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iput-wide p3, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onAllHalFrameReceived()V

    new-instance v8, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object v5, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mSavePath:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getCaptureTime()J

    move-result-wide v6

    move-object v0, v8

    move-wide v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p3

    sget-object p4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->IMAGE_NAME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p4}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2ShotParallel;->getFileName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v8, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setImageName(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBeautyLensOn()Z

    move-result p3

    invoke-virtual {v8, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBeautyLensOn(Z)V

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$200(Lcom/android/camera2/MiCamera2ShotParallelStill;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$300(Lcom/android/camera2/MiCamera2ShotParallelStill;)I

    move-result p3

    if-eq p3, p6, :cond_2

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$300(Lcom/android/camera2/MiCamera2ShotParallelStill;)I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    :cond_2
    move p3, p6

    goto :goto_0

    :cond_3
    move p3, p4

    :goto_0
    new-instance v0, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-direct {v0, v1}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    new-instance v1, Lcom/android/camera2/QuickViewParam;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {v3}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$200(Lcom/android/camera2/MiCamera2ShotParallelStill;)Z

    move-result v3

    invoke-direct {v1, v2, v3, p3, p4}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    invoke-virtual {v0, v1}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget v0, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {p3, v0}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object p3

    invoke-interface {p1, v8, p3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    sget-object p3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MFNR_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p2, p3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CaptureRequest;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_5

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureId(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$400(Lcom/android/camera2/MiCamera2ShotParallelStill;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setSatFusionType(I)V

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {p3}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$500(Lcom/android/camera2/MiCamera2ShotParallelStill;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isUltraPixel()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setUltraPixel(Z)V

    invoke-virtual {p1, p6}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    iget-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {p1, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setChangedBufferFormat(Lcom/xiaomi/engine/BufferFormat;)V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string/jumbo p2, "onCaptureStarted, set HWMFNRProcessing is true"

    invoke-static {p5, p2}, LOooO0O0/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Lcom/xiaomi/camera/core/ParallelTaskData;->setHWMFNRProcessing(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p4}, Lcom/xiaomi/camera/core/ParallelTaskData;->setHWMFNRProcessing(Z)V

    :goto_1
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelStill;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelStill;->access$100(Lcom/android/camera2/MiCamera2ShotParallelStill;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setParallelVTCameraSnapshot(Z)V

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_2

    :cond_5
    const-string/jumbo p1, "onCaptureStarted: null task data"

    invoke-static {p5, p1}, LOooO0O0/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string/jumbo p1, "onCaptureStarted: null picture callback"

    invoke-static {p5, p1}, LOooO0O0/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
