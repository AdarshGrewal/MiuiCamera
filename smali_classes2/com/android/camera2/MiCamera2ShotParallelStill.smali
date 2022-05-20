.class public Lcom/android/camera2/MiCamera2ShotParallelStill;
.super Lcom/android/camera2/MiCamera2ShotParallel;
.source "MiCamera2ShotParallelStill.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2ShotParallel<",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        ">;"
    }
.end annotation


# static fields
.field public static final SAT_REMOSAIC_RATIO:F = 1.5f

.field public static final TAG:Ljava/lang/String; = "ShotParallelStill"


# instance fields
.field public mAlgoType:I

.field public mAnchorFrame:Z

.field public mIsFakeSatEnabled:Z

.field public mMainPhysicalId:I

.field public volatile mNeedDoAnchorFrame:Z

.field public final mOperationMode:I

.field public mPreviewSize:Lcom/android/camera/CameraSize;

.field public mSatFusionType:I

.field public mShouldDoQcfaCapture:Z

.field public mSoundTime:I

.field public mSubPhysicalId:I

.field public mUseParallelVtCam:Z


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;ZZI)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mNeedDoAnchorFrame:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMainPhysicalId:I

    .line 4
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mSubPhysicalId:I

    .line 5
    iput-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 6
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getOperatingMode()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mOperationMode:I

    .line 7
    iput-boolean p3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mUseParallelVtCam:Z

    .line 8
    iput-boolean p4, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mShouldDoQcfaCapture:Z

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fusionType -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotParallelStill"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iput p5, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mSatFusionType:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera2/MiCamera2ShotParallelStill;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelStill;->processResult(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera2/MiCamera2ShotParallelStill;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mUseParallelVtCam:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera2/MiCamera2ShotParallelStill;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mAnchorFrame:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera2/MiCamera2ShotParallelStill;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mSoundTime:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera2/MiCamera2ShotParallelStill;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mSatFusionType:I

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera2/MiCamera2ShotParallelStill;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mAlgoType:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera2/MiCamera2ShotParallelStill;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMainPhysicalId:I

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera2/MiCamera2ShotParallelStill;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mSubPhysicalId:I

    return p0
.end method

.method private addPreviewImageReader(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add preview callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackEnabled()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShotParallelStill"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackEnabled()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "add preview target"

    .line 4
    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 3
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 v1, 0x1

    .line 4
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v0

    const-string v2, "ShotParallelStill"

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isInMultiSurfaceSatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->copyFpcDataFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 9
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 10
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isZoomRatioSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/android/camera/HybridZoomingSystem;->toCropRegion(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isZoomRatioSupported: uw set crop = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOOo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supportMtkCropRegion: uw set crop = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uw set crop = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 18
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uw set mtkCrop = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyPostProcessCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    goto :goto_4

    .line 20
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MI_STATISTICS_FACE_RECTANGLES:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    const-string v3, "set mtk face"

    .line 21
    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyFaceRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    const-string v0, "get mtk face = null"

    .line 23
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->POST_PROCESS_CROP_REGION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sat set mtkCrop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyPostProcessCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_5
    const-string v0, "sat get mtkCrop = null"

    .line 27
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :goto_3
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyNotificationTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const-string v0, "sat applyNotificationTrigger true"

    .line 29
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->copyAiSceneFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_5

    .line 31
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 32
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    :cond_8
    :goto_5
    return-void
.end method

.method private doAnchorFrameAsThumbnail()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->isModuleAnchorFrame()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ShotParallelStill"

    if-nez v0, :cond_0

    const-string v0, "anchor frame not enabled"

    .line 2
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->isNeedFlashOn()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "flash disable anchor"

    .line 5
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 8
    iget v5, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mAlgoType:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    const-string v0, "LLS disable anchor frame"

    .line 9
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 10
    :cond_3
    iget-object v5, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getSuperNight()Z

    move-result v5

    if-eqz v5, :cond_4

    return v1

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->isQcfaEnable()Z

    move-result v1

    const/16 v5, 0x65

    const/16 v6, 0x64

    if-eqz v1, :cond_8

    if-nez v3, :cond_6

    .line 12
    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mShouldDoQcfaCapture:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v3, v1}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qcfa anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    const/4 v1, 0x3

    .line 15
    invoke-virtual {v0, v3, v1}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upscale anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 17
    :cond_6
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->isSingleBokehEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    invoke-virtual {v0, v3, v5}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "front qcfa portrait anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 20
    :cond_7
    invoke-virtual {v0, v3, v6}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "front qcfa normal anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 22
    :cond_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 23
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->isSingleBokehEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 24
    invoke-virtual {v0, v3, v5}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "front portrait anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 26
    :cond_9
    invoke-virtual {v0, v3, v6}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "front normal  anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 28
    :cond_a
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 29
    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mOperationMode:I

    const v5, 0x9000

    if-ne v1, v5, :cond_b

    const/4 v1, 0x7

    .line 30
    invoke-virtual {v0, v3, v1}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "back portrait anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 32
    :cond_b
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mSatFusionType:I

    if-eqz v1, :cond_c

    const/16 v1, 0xa

    .line 33
    invoke-virtual {v0, v3, v1}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "back fusion anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 35
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default anchor frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
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

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mAnchorFrame:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mNeedDoAnchorFrame:Z

    if-eqz v0, :cond_4

    .line 3
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ANCHOR_FRAME_TIMESTAMP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

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

    const-string v1, "begin to choose anchor frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShotParallelStill"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mSoundTime:I

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

    .line 8
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mNeedDoAnchorFrame:Z

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Lcom/android/camera2/QuickViewParam;

    .line 10
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v6

    invoke-direct {v0, v6, v2, v2, v1}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    .line 11
    invoke-interface {v5, v0, p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureProgress(Lcom/android/camera2/QuickViewParam;Landroid/hardware/camera2/CaptureResult;)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCacheImageDecoder()Lcom/android/zxing/CacheImageDecoder;

    move-result-object v2

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mPreviewSize:Lcom/android/camera/CameraSize;

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
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mNeedDoAnchorFrame:Z

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
    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotParallelStill$1;-><init>(Lcom/android/camera2/MiCamera2ShotParallelStill;)V

    return-object v0
.end method

.method public generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mUseParallelVtCam:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    :goto_0
    const-string v1, "ShotParallelStill"

    if-eqz v0, :cond_22

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 5
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->isQcfaEnable()Z

    move-result v3

    const/4 v4, 0x3

    const/16 v5, 0x23

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_4

    .line 6
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->alwaysUseRemosaicSize()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mShouldDoQcfaCapture:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getQcfaRemoteSurface()Landroid/view/Surface;

    move-result-object v3

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 9
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object v3

    .line 10
    :goto_2
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v8

    .line 11
    iget-object v9, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mLockedAlgoSize:Landroid/util/Size;

    if-eqz v9, :cond_3

    .line 12
    invoke-virtual {p0, v9, v5}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p0, v8, v5}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    .line 14
    :goto_3
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v6

    aput-object v8, v2, v7

    const-string v8, "[QCFA]add surface %s to capture request, size is: %s"

    invoke-static {v5, v8, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto/16 :goto_a

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v3

    const v8, 0x9003

    if-nez v3, :cond_a

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isInMultiSurfaceSatMode()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_5

    .line 17
    :cond_5
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getParallelSpecList()Landroid/util/SparseArray;

    move-result-object v3

    .line 18
    invoke-static {v3}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->getSurfaceFromSparseArray(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v3

    .line 19
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/Surface;

    .line 20
    iget-object v10, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v10}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v10

    if-eq v9, v10, :cond_6

    iget-object v10, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 21
    invoke-virtual {v10}, Lcom/android/camera2/MiCamera2;->getRawSurfaceForTuningBuffer()Landroid/view/Surface;

    move-result-object v10

    if-eq v9, v10, :cond_6

    iget-object v10, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 22
    invoke-virtual {v10}, Lcom/android/camera2/MiCamera2;->getTuningRemoteSurface()Landroid/view/Surface;

    move-result-object v10

    if-eq v9, v10, :cond_6

    iget-object v10, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 23
    invoke-virtual {v10}, Lcom/android/camera2/MiCamera2;->getBokehMainRawSurface()Landroid/view/Surface;

    move-result-object v10

    if-eq v9, v10, :cond_6

    iget-object v10, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 24
    invoke-virtual {v10}, Lcom/android/camera2/MiCamera2;->getBokehSubRawSurface()Landroid/view/Surface;

    move-result-object v10

    if-ne v9, v10, :cond_7

    goto :goto_4

    .line 25
    :cond_7
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v11, v2, [Ljava/lang/Object;

    aput-object v9, v11, v6

    .line 26
    invoke-static {v9}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v12

    aput-object v12, v11, v7

    const-string v12, "add surface %s to capture request, size is: %s"

    .line 27
    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {v0, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_4

    .line 29
    :cond_8
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    .line 30
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Oo0o()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mOperationMode:I

    if-ne v3, v8, :cond_9

    .line 31
    new-instance v3, Landroid/util/Size;

    iget-object v9, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v10, v9, Lcom/android/camera/CameraSize;->width:I

    iget v9, v9, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v3, v10, v9}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v3, v5}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    goto/16 :goto_9

    .line 32
    :cond_9
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000oo0()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 33
    new-instance v3, Landroid/util/Size;

    iget-object v9, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v10, v9, Lcom/android/camera/CameraSize;->width:I

    iget v9, v9, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v3, v10, v9}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v3, v5}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    goto/16 :goto_9

    .line 34
    :cond_a
    :goto_5
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v3

    iput v3, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 35
    iget-boolean v9, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mUseParallelVtCam:Z

    if-eqz v9, :cond_b

    .line 36
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v3

    iget v9, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v3, v9}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCaptureSurface(I)Landroid/view/Surface;

    move-result-object v3

    .line 37
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v9

    goto :goto_6

    .line 38
    :cond_b
    iget-boolean v9, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mIsFakeSatEnabled:Z

    if-eqz v9, :cond_c

    .line 39
    iget-object v9, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v9, v3}, Lcom/android/camera2/MiCamera2;->getFakeSatMainCaptureSurface(I)Landroid/view/Surface;

    move-result-object v3

    .line 40
    iget-object v9, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v9}, Lcom/android/camera2/MiCamera2;->getFakeSatOutputSize()Landroid/util/Size;

    move-result-object v9

    goto :goto_6

    .line 41
    :cond_c
    iget-object v9, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v9, v3}, Lcom/android/camera2/MiCamera2;->getMainCaptureSurface(I)Landroid/view/Surface;

    move-result-object v3

    .line 42
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v9

    .line 43
    :goto_6
    iget-object v10, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v10}, Lcom/android/camera2/MiCamera2;->getSatPhysicalCameraId()I

    move-result v10

    iput v10, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMainPhysicalId:I

    .line 44
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v11, v2, [Ljava/lang/Object;

    aput-object v3, v11, v6

    aput-object v9, v11, v7

    const-string v12, "[SAT]add master surface %s to capture request, size is: %s"

    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const/16 v10, 0x201

    .line 46
    iget-object v11, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v11}, Lcom/android/camera2/MiCamera2;->getUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v11

    if-eq v3, v11, :cond_d

    iget-boolean v11, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mUseParallelVtCam:Z

    if-eqz v11, :cond_e

    .line 47
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCaptureSurface(I)Landroid/view/Surface;

    move-result-object v11

    if-ne v3, v11, :cond_e

    :cond_d
    move v10, v4

    .line 48
    :cond_e
    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mSatFusionType:I

    if-ne v3, v4, :cond_10

    .line 49
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 50
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getMTKFusionWideRemoteSurface()Landroid/view/Surface;

    move-result-object v3

    goto :goto_7

    .line 51
    :cond_f
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object v3

    .line 52
    :goto_7
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v10

    .line 53
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v12, v2, [Ljava/lang/Object;

    aput-object v3, v12, v6

    aput-object v10, v12, v7

    const-string v10, "[SAT]add wide surface %s to capture request, size is: %s"

    invoke-static {v11, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v10

    iput v10, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mSubPhysicalId:I

    .line 55
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 56
    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_SAT_FUSION_SHOT:Lcom/android/camera2/vendortag/VendorTag;

    .line 57
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    .line 58
    invoke-static {v0, v3, v10}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueQuietly(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    const/16 v10, 0x202

    goto :goto_8

    .line 59
    :cond_10
    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_SAT_FUSION_SHOT:Lcom/android/camera2/vendortag/VendorTag;

    .line 60
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    .line 61
    invoke-static {v0, v3, v11}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueQuietly(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 62
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SAT]combinationMode: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0, v9, v5, v10}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    .line 64
    :cond_11
    :goto_9
    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mOperationMode:I

    const v5, 0x9000

    if-ne v3, v5, :cond_12

    .line 65
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getPhysicalBokehMainId()I

    move-result v3

    iput v3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMainPhysicalId:I

    .line 66
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getPhysicalBokehSubId()I

    move-result v3

    iput v3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mSubPhysicalId:I

    .line 67
    :cond_12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v3

    if-nez v3, :cond_14

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mOperationMode:I

    const v5, 0x9001

    if-eq v3, v5, :cond_14

    if-eq v3, v8, :cond_14

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 68
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->isFacingFront()Z

    move-result v3

    if-eqz v3, :cond_13

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mOperationMode:I

    const v5, 0x9005

    if-eq v3, v5, :cond_14

    .line 69
    :cond_13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightHalfAlgoUp()Z

    move-result v3

    if-nez v3, :cond_14

    .line 70
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v3

    .line 71
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v6

    .line 72
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v8

    aput-object v8, v2, v7

    const-string v8, "add preview surface %s to capture request, size is: %s"

    .line 73
    invoke-static {v5, v8, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mUseParallelVtCam:Z

    if-nez v2, :cond_14

    .line 75
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 76
    :cond_14
    :goto_a
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOo()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 77
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getTuningRemoteSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_15

    new-array v3, v7, [Ljava/lang/Object;

    .line 78
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    aput-object v5, v3, v6

    const-string v5, "add tuning surface to capture request, size is: %s"

    .line 79
    invoke-static {v1, v5, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 81
    :cond_15
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 82
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    .line 83
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 84
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2, v0, v4}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 85
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mShouldDoQcfaCapture:Z

    if-eqz v2, :cond_16

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 86
    invoke-static {v0, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 87
    :cond_16
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->isQcfaEnable()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 88
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "enable remosaic capture hint"

    .line 89
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {v0, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyRemosaicHint(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 91
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mAnchorFrame:Z

    if-eqz v2, :cond_17

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mShouldDoQcfaCapture:Z

    if-eqz v2, :cond_17

    .line 92
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2ShotParallelStill;->addPreviewImageReader(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 93
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apply remosaic capture request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mShouldDoQcfaCapture:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mShouldDoQcfaCapture:Z

    invoke-static {v0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyRemosaicEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 95
    :cond_18
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isSpecshotModeEnable()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 96
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v2}, Lcom/android/camera2/CaptureResultParser;->isSpecshotDetected(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object v2

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply specshot mode capture request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_19

    .line 98
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applySpecshotMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 99
    :cond_19
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 100
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isFlawDetectEnable()Z

    move-result v2

    .line 101
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlawDetectEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 102
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isAiShutterExistMotion()Z

    move-result v2

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateRequestBuilder.isAiShutterExistMotion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isHQQuickShot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->isHighQualityQuickShotEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1a

    .line 104
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 105
    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->isFixShotTime()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 106
    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->isHighQualityQuickShotEnabled()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 107
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000oo()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 108
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocalParallelService$LocalBinder;->isAnyRequestIsHWMFNRProcessing()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "Do not apply hwmfnr."

    .line 109
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {v0, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 111
    invoke-static {v0, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 112
    :cond_1a
    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mUseParallelVtCam:Z

    if-eqz v1, :cond_1d

    .line 113
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->PARALLEL_MASTER_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 114
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MCC_MASTER_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 115
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getParallelMasterCameraId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 116
    invoke-static {v0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyParallelMasterCameraId(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 117
    :cond_1b
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isLLSEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 118
    invoke-static {v0, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyLLS(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_b

    .line 119
    :cond_1c
    invoke-static {v0, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyLLS(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_b

    .line 120
    :cond_1d
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->isHighQualityQuickShotEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 121
    invoke-static {v0, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyHighQualityQuickShot(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 122
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isLimitMfnrNumFramesEnabled()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 123
    invoke-static {v0, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyLimitMfnrNumFrames(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_b

    .line 124
    :cond_1e
    invoke-static {v0, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyLimitMfnrNumFrames(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 125
    :cond_1f
    :goto_b
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSavePath:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 127
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyParallelImageName(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)V

    :cond_20
    return-object v0

    :cond_21
    const-string v0, "generateRequestBuilder: captureRequestBuilder is null"

    .line 128
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generateRequestBuilder: captureRequestBuilder is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const-string v0, "generateRequestBuilder: camera device is null"

    .line 130
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generateRequestBuilder: camera device is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShutterTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ShotParallelStill"

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

    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mAnchorFrame:Z

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mAlgoType:I

    .line 2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 3
    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mShouldDoQcfaCapture:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->isBeautyOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mShouldDoQcfaCapture:Z

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepare: qcfa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mShouldDoQcfaCapture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShotParallelStill"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mShouldDoQcfaCapture:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    .line 7
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mAlgoType:I

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isLLSEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    .line 9
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mAlgoType:I

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare: mUseParallelVtCam:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mUseParallelVtCam:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelStill;->doAnchorFrameAsThumbnail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mAnchorFrame:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mNeedDoAnchorFrame:Z

    .line 13
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mAlgoType:I

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2ShotParallel;->getSoundTimeWhenAnchor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mSoundTime:I

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare: use anchorframe="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mAnchorFrame:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,soundTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mSoundTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isFakeSatEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mIsFakeSatEnabled:Z

    return-void
.end method

.method public startSessionCapture()V
    .locals 9

    const-string v0, "ShotParallelStill"

    const/4 v1, 0x0

    .line 1
    invoke-static {v1}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackPictureCapture(I)V

    const/16 v1, 0x100

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelStill;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelStill;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 4
    invoke-direct {p0, v3}, Lcom/android/camera2/MiCamera2ShotParallelStill;->applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 5
    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v4

    .line 6
    iget v5, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMainPhysicalId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 7
    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMainPhysicalId:I

    .line 8
    :cond_0
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 9
    iget-object v5, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    if-nez v5, :cond_1

    .line 10
    new-instance v5, Lcom/xiaomi/engine/BufferFormat;

    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v6, v6, Lcom/android/camera/CameraSize;->width:I

    iget-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v7, v7, Lcom/android/camera/CameraSize;->height:I

    const/16 v8, 0x23

    invoke-direct {v5, v6, v7, v8}, Lcom/xiaomi/engine/BufferFormat;-><init>(III)V

    .line 11
    :cond_1
    invoke-virtual {p0, v3, v5, v4}, Lcom/android/camera2/MiCamera2ShotParallel;->generatePreProcessData(Landroid/hardware/camera2/CaptureRequest;Lcom/xiaomi/engine/BufferFormat;I)Lcom/xiaomi/engine/PreProcessData;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {p0, v4}, Lcom/android/camera2/MiCamera2ShotParallel;->preCapture(Lcom/xiaomi/engine/PreProcessData;)V

    .line 13
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parallel shotstill for camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->dumpRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    const/4 v4, 0x4

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startSessionCapture: mUseParallelVtCam = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mUseParallelVtCam:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v4

    const-string v5, "algo_prepare_capture"

    invoke-virtual {v4, v5}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 16
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v4

    const-string v5, "algo_device_capture"

    invoke-virtual {v4, v5}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v4

    const-string v5, "shot_prepare_capture"

    invoke-virtual {v4, v5}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 18
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v4

    const-string v5, "shot_device_capture"

    invoke-virtual {v4, v5}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 19
    iget-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mUseParallelVtCam:Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "_"

    if-eqz v4, :cond_3

    .line 20
    :try_start_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v4

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v2, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    goto :goto_0

    .line 22
    :cond_3
    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v4

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v2, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera/MemoryHelper;->addCapturedNumber(II)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Failed to capture a still picture, IllegalArgument"

    .line 25
    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Failed to capture a still picture, IllegalState"

    .line 27
    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_1

    :catch_2
    move-exception v1

    .line 29
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const-string v2, "Cannot capture a still picture"

    .line 30
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_1
    return-void
.end method
