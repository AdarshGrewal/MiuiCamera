.class public Lcom/android/camera2/MiCamera2ShotDualRawBokeh;
.super Lcom/android/camera2/MiCamera2ShotParallel;
.source "MiCamera2ShotDualRawBokeh.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2ShotParallel<",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ShotDualRawBokeh"


# instance fields
.field public mAlgoType:I

.field public mAnchorFrame:Z

.field public mCompletedNum:I

.field public mMainPhysicalCameraId:I

.field public mMultiFrameNum:I

.field public volatile mNeedDoAnchorFrame:Z

.field public mPreviewSize:Lcom/android/camera/CameraSize;

.field public mSequenceNum:I

.field public mSoundTime:I

.field public mStartedNum:I

.field public mSubPhysicalCameraId:I

.field public mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;)V

    const/16 p1, 0x13

    .line 2
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mAlgoType:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mNeedDoAnchorFrame:Z

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mMainPhysicalCameraId:I

    .line 5
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSubPhysicalCameraId:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSoundTime:I

    .line 7
    iput-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->processResult(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mStartedNum:I

    return p0
.end method

.method public static synthetic access$108(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mStartedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mStartedNum:I

    return v0
.end method

.method public static synthetic access$200(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSequenceNum:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mAnchorFrame:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSoundTime:I

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mAlgoType:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mCompletedNum:I

    return p0
.end method

.method public static synthetic access$608(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mCompletedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mCompletedNum:I

    return v0
.end method

.method public static synthetic access$700(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mMainPhysicalCameraId:I

    return p0
.end method

.method public static synthetic access$800(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSubPhysicalCameraId:I

    return p0
.end method

.method private applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    .line 2
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getValue()[I

    move-result-object v1

    aget v1, v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 4
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 5
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSequenceNum:I

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 6
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mMultiFrameNum:I

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 p2, 0x0

    .line 7
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 8
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 9
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 10
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySuperNightBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    return-void
.end method

.method private doAnchorFrameAsThumbnail()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getRawSurfaceForCamera(I)Landroid/view/Surface;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getRawUltraWideSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getRawWideSurface()Landroid/view/Surface;

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getRawTeleSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 8
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getRawUltraTeleSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 10
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getRawMacroSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private processResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackEnabled()I

    move-result v0

    if-lez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackEnabled()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mNeedDoAnchorFrame:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mAnchorFrame:Z

    if-eqz v0, :cond_4

    .line 3
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ANCHOR_FRAME_TIMESTAMP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "partial begin to choose anchor frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShotDualRawBokeh"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSoundTime:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Lcom/android/camera2/QuickViewParam;

    .line 9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v6

    invoke-direct {v0, v6, v2, v2, v1}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    .line 10
    invoke-interface {v5, v0, p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureProgress(Lcom/android/camera2/QuickViewParam;Landroid/hardware/camera2/CaptureResult;)V

    .line 11
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mNeedDoAnchorFrame:Z

    .line 12
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCacheImageDecoder()Lcom/android/zxing/CacheImageDecoder;

    move-result-object v2

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v5, p1, Lcom/android/camera/CameraSize;->width:I

    iget v6, p1, Lcom/android/camera/CameraSize;->height:I

    const/4 v7, 0x0

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual/range {v2 .. v8}, Lcom/android/zxing/CacheImageDecoder;->saveAnchorFrameThumbnail(JII[ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    .line 15
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 16
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mNeedDoAnchorFrame:Z

    .line 17
    new-instance v1, Lcom/android/camera2/QuickViewParam;

    .line 18
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v4

    invoke-direct {v1, v4, v2, v0, v2}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    .line 19
    invoke-interface {v3, v1, p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureProgress(Lcom/android/camera2/QuickViewParam;Landroid/hardware/camera2/CaptureResult;)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh$1;-><init>(Lcom/android/camera2/MiCamera2ShotDualRawBokeh;)V

    return-object v0
.end method

.method public generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
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

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getBokehMainRawSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 7
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getBokehSubRawSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 9
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 10
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 11
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 12
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isFlawDetectEnable()Z

    move-result v2

    .line 13
    invoke-static {v1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlawDetectEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 14
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSavePath:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 16
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyParallelImageName(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)V

    :cond_1
    return-object v0

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "sub raw surface is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "main raw surface is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ShotDualRawBokeh"

    return-object v0
.end method

.method public isShutterReturned()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCaptureShutter()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/android/camera2/QuickViewParam;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mAnchorFrame:Z

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v1

    const-string v2, "prepare: "

    const-string v3, "ShotDualRawBokeh"

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getSuperNightEvValue()Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v1}, Lcom/android/camera2/CaptureResultParser;->getSuperNightCheckerEv(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v1

    const-string v4, "camera.debug.superlowlight"

    .line 6
    invoke-static {v4}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->parseSuperNightEvValue([BLjava/lang/String;Z)Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", debugEv = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getSequenceNum()I

    move-result v1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSequenceNum:I

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mMultiFrameNum:I

    .line 10
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPhysicalBokehMainId()I

    move-result v1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mMainPhysicalCameraId:I

    .line 11
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPhysicalBokehSubId()I

    move-result v1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSubPhysicalCameraId:I

    .line 12
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 14
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->doAnchorFrameAsThumbnail()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mAnchorFrame:Z

    .line 15
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mNeedDoAnchorFrame:Z

    .line 16
    iget v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mAlgoType:I

    invoke-virtual {p0, v1}, Lcom/android/camera2/MiCamera2ShotParallel;->getSoundTimeWhenAnchor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSoundTime:I

    .line 17
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSequenceNum:I

    .line 18
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mAnchorFrame:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x2

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSoundTime:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v0, "prepare: captureNum=%d anchor=%b soundTime=%d"

    .line 19
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startSessionCapture()V
    .locals 7

    const-string v0, "ShotDualRawBokeh"

    const/16 v1, 0x100

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startSessionCapture: sequenceNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSequenceNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 5
    :goto_0
    iget v6, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSequenceNum:I

    if-ge v5, v6, :cond_0

    .line 6
    invoke-direct {p0, v3, v5}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 7
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSessionCapture: requestNum = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v5}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    .line 11
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;->mSequenceNum:I

    invoke-static {v2, v3}, Lcom/android/camera/MemoryHelper;->addCapturedNumber(II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Failed to captureBurst, IllegalArgument"

    .line 12
    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Failed to captureBurst, IllegalState"

    .line 14
    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "Failed to captureBurst, CameraAccessException"

    .line 16
    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_1
    return-void
.end method
