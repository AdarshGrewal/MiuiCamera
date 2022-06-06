.class public Lcom/android/camera/module/video/CameraDeviceController;
.super Ljava/lang/Object;
.source "CameraDeviceController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraDeviceController"


# instance fields
.field public mBogusId:I

.field public mCameraDevice:Lcom/android/camera2/Camera2Proxy;

.field public mLock:Ljava/lang/Object;

.field public mMaxZoom:F

.field public mMinZoom:F

.field public mModeIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mMinZoom:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mMaxZoom:F

    return-void
.end method

.method private final isFrontCamera()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mBogusId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isInVideoSAT()Z
    .locals 3

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private isSingleCamera(I)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private setHistogramTagDefault()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/video/CameraDeviceController;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getSessionConfigs()Lcom/android/camera2/CaptureSessionConfigurations;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isSupportHistogramTag()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getHistogramValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00o000()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_HISTOGRAM_FUNCTION_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setMaxZoomRatio(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mMaxZoom:F

    return-void
.end method

.method private setMinZoomRatio(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mMinZoom:F

    return-void
.end method

.method private shouldApplyUltraWideLDC()Z
    .locals 3

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->shouldUltraWideVideoLDCBeVisibleInMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraWideVideoLDCEnabled()Z

    move-result v0

    return v0
.end method

.method private updateVideoFpsRangeNeedForHDR()Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getVideoHdrSupportSetFreqValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVideoFpsRangeNeedForHDR: setFreqValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraDeviceController"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x3

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mBogusId:I

    if-nez v0, :cond_4

    :goto_0
    move v1, v2

    goto :goto_3

    :cond_2
    :goto_1
    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/module/video/CameraDeviceController;->isFrontCamera()Z

    move-result v1

    :cond_4
    :goto_3
    return v1
.end method


# virtual methods
.method public applyVideoHdrMode()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->applyVideoHdrMode(Z)V

    :cond_1
    return-void
.end method

.method public captureVideoSnapshot(Lcom/android/camera/module/video/JpegPictureCallback;)V
    .locals 2

    const-string v0, "CameraDeviceController"

    const-string v1, "capture: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->captureVideoSnapshot(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    invoke-direct {p0}, Lcom/android/camera/module/video/CameraDeviceController;->isFrontCamera()Z

    move-result p1

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoSnapshot(Z)V

    return-void
.end method

.method public getCameraDevice()Lcom/android/camera2/Camera2Proxy;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    return-object v0
.end method

.method public getZoomRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/Range;

    iget v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mMinZoom:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mMaxZoom:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public init(Lcom/android/camera2/Camera2Proxy;IILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    iput p2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    iput p3, p0, Lcom/android/camera/module/video/CameraDeviceController;->mBogusId:I

    iput-object p4, p0, Lcom/android/camera/module/video/CameraDeviceController;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public isSessionReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needDisableEISAndOIS()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "CameraDeviceController"

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/video/CameraDeviceController;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "videoStabilization: disabled EIS and OIS when VIDEO_BOKEH is opened"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isVideoHdrEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "videoStabilization: disabled EIS and OIS when HDR10+ and HDR are opened at the same time."

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public notifyVideoStreamEnd(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isEISPreviewSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->notifyVideoStreamEnd()V

    :cond_1
    return-void
.end method

.method public onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V

    :cond_0
    return-void
.end method

.method public pausePreview()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->pausePreview()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    return-void
.end method

.method public resetZoomForRecording(Lcom/android/camera/module/BaseModule;)V
    .locals 4

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    const/16 v1, 0xac

    if-eq v0, v1, :cond_8

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_8

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4K120FpsOn(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/camera/module/video/CameraDeviceController;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isStandaloneMacroCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMinimumMacroOpticalZoomRatio()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMaximumMacroOpticalZoomRatio()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMinimumMacroOpticalZoomRatio()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMaximumMacroOpticalZoomRatio()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    goto/16 :goto_0

    :cond_1
    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    invoke-direct {p0, v1}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isAuxCamera(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->setVideoMaxZoomRatioByTele()V

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getMaxZoomRatio()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraTeleCamera(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->setVideoMaxZoomRatioByTele()V

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getMaxZoomRatio()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    goto :goto_0

    :cond_4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0o0()Z

    move-result v0

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/camera/module/video/CameraDeviceController;->isInVideoSAT()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooooo0()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isStandaloneMacroCamera(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v3}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v3}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    goto :goto_0

    :cond_7
    invoke-direct {p0, v3}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    :goto_0
    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mMaxZoom:F

    invoke-virtual {p1, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mMinZoom:F

    invoke-virtual {p1, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    :cond_8
    return-void
.end method

.method public restoreZoomAfterRecording(Lcom/android/camera/module/BaseModule;)V
    .locals 4

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    const/16 v1, 0xac

    if-eq v0, v1, :cond_9

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_9

    const/16 v1, 0xd6

    if-eq v0, v1, :cond_9

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4K120FpsOn(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/camera/module/video/CameraDeviceController;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMinimumMacroOpticalZoomRatio()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMaximumMacroOpticalZoomRatio()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    goto/16 :goto_1

    :cond_0
    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    goto/16 :goto_1

    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0o0()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/camera/module/video/CameraDeviceController;->isInVideoSAT()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooooo0()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isStandaloneMacroCamera(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    const/high16 v0, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->is8KSupportedByUltraWideCamera()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, v2}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    goto :goto_0

    :cond_5
    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v3

    if-ne v0, v3, :cond_7

    invoke-direct {p0, v2}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    goto :goto_1

    :cond_7
    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMinZoomRatio(F)V

    invoke-direct {p0}, Lcom/android/camera/module/video/CameraDeviceController;->isInVideoSAT()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->setVideoMaxZoomRatioByTele()V

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getMaxZoomRatio()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setMaxZoomRatio(F)V

    :goto_1
    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mMaxZoom:F

    invoke-virtual {p1, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mMinZoom:F

    invoke-virtual {p1, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    :cond_9
    return-void
.end method

.method public resumePreview()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    :cond_0
    return-void
.end method

.method public setGpsLocation()V
    .locals 2

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setGpsLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setJpegQuality()V
    .locals 3

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mBogusId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpegQuality="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraDeviceController"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setJpegQuality(I)V

    return-void
.end method

.method public setJpegRotation(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mBogusId:I

    invoke-static {v0, p1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->setJpegRotation(I)V

    return-void
.end method

.method public setVideoBokehEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehAdjust()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/camera2/CameraConfigs;->setVideoBokehEnabled(Z)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVideoSnapshotSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->setVideoSnapshotSize(Lcom/android/camera/CameraSize;)V

    :cond_0
    return-void
.end method

.method public startHighSpeedRecordSession(ILandroid/view/Surface;Landroid/view/Surface;ILcom/android/camera/CameraSize;Landroid/util/Range;Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;Lcom/android/camera2/Camera2Proxy$FocusCallback;Z)V
    .locals 9

    move-object v0, p0

    const/4 v1, 0x4

    const-string v2, "CameraDeviceController"

    const-string/jumbo v3, "startHighSpeedRecordSession"

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/android/camera/Util;->showSurfaceInfo(Landroid/view/Surface;)V

    iget-object v1, v0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    iget-object v1, v0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    move-object v2, p5

    invoke-virtual {v1, p5}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    if-eqz p10, :cond_0

    iget-object v1, v0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    move-object/from16 v2, p9

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    :cond_0
    iget-object v2, v0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    move-object v3, p2

    move-object v4, p3

    move v5, p1

    move v6, p4

    move-object v7, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera2/Camera2Proxy;->startHighSpeedRecordSession(Landroid/view/Surface;Landroid/view/Surface;IILandroid/util/Range;Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method public startPreviewAfterRecord(Z)V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->startHighSpeedRecordPreview()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->startHighSpeedRecordPreview()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->startRecordPreview()V

    :goto_0
    return-void
.end method

.method public startRecordSession(Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;Lcom/android/camera2/Camera2Proxy$FocusCallback;Lcom/android/camera/CameraSize;Lcom/android/camera/CameraSize;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 8

    move-object v0, p0

    iget-object v1, v0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    move-object v2, p3

    invoke-virtual {v1, p3}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    iget-object v1, v0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    move-object v2, p5

    invoke-virtual {v1, p5}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    iget-object v1, v0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    move-object v2, p6

    invoke-virtual {v1, p6}, Lcom/android/camera2/Camera2Proxy;->setVideoSnapshotSize(Lcom/android/camera/CameraSize;)V

    if-eqz p9, :cond_0

    iget-object v1, v0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    move-object v2, p4

    invoke-virtual {v1, p4}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    :cond_0
    iget-object v2, v0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p8

    move v6, p7

    move-object/from16 v7, p10

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera2/Camera2Proxy;->startRecordSession(Landroid/view/Surface;Landroid/view/Surface;ZILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method public startTrackFocus(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    iget v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/android/camera2/Camera2Proxy;->startTrackFocus(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public startVideoPreviewSession(Landroid/view/Surface;Lcom/android/camera2/Camera2Proxy$FocusCallback;Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;Lcom/android/camera/CameraSize;I)V
    .locals 8

    const-string v0, "CameraDeviceController"

    const-string/jumbo v1, "startPreviewSession"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p2}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    iget-object p2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p2, p3}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    iget-object p2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p2, p5}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move v5, p6

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera2/Camera2Proxy;->startVideoPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method public stopRecording()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->stopRecording()V

    :cond_0
    return-void
.end method

.method public takePreviewShot(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/CameraScreenNail;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, -0x8

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setShotType(I)V

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera2/Camera2Proxy;->takeSimplePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/CameraScreenNail;)V

    return-void
.end method

.method public updateASD(Z)V
    .locals 3

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    const/16 v1, 0xa2

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    const/16 v1, 0x8

    const/16 v2, 0x3c

    invoke-virtual {p1, v1, v2}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video ASD = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraDeviceController"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setASDEnable(Z)V

    :cond_2
    return-void
.end method

.method public updateAiEnhancedVideo()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->supportAiEnhancedVideo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setAiASDEnable(Z)V

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setAIIEPreviewEnable(Z)V

    :cond_1
    return-void
.end method

.method public updateAutoZoomMode()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomMode(I)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomScaleOffset(F)V

    :cond_0
    return-void
.end method

.method public updateBeauty(Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    :cond_0
    return-void
.end method

.method public updateBokeh()V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setSingleBokeh(Z)V

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setDualBokehEnable(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/CameraDeviceController;->isSingleCamera(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setSingleBokeh(Z)V

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setDualBokehEnable(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setSingleBokeh(Z)V

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setDualBokehEnable(Z)V

    :goto_0
    return-void
.end method

.method public updateCinematicVideo()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setCinematicVideoEnabled(Z)V

    return-void
.end method

.method public updateExposureTime(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "pref_qc_camera_pro_video_exposuretime_key"

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/Camera2Proxy;->setExposureTime(J)V

    return-void
.end method

.method public updateFpsRange(ZLandroid/util/Range;)V
    .locals 3

    const-string v0, "CameraDeviceController"

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHfrFPSLower = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mHfrFPSUpper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    iget-object p1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setVideoFpsRange(Landroid/util/Range;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget p2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isSupportQcomVideoHdr()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/video/CameraDeviceController;->updateVideoFpsRangeNeedForHDR()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x18

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFpsRange: vhdrRang = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p2, p1}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    iget-object p2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p2, p1}, Lcom/android/camera2/Camera2Proxy;->setVideoFpsRange(Landroid/util/Range;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/video/CameraDeviceController;->updateFpsRangeDefault()V

    :goto_0
    return-void
.end method

.method public updateFpsRangeDefault()V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedFpsRange()[Landroid/util/Range;

    move-result-object v0

    const-string v1, "CameraDeviceController"

    if-eqz v0, :cond_c

    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v2, 0x0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v4

    const/16 v5, 0x3c

    const/16 v6, 0x1e

    if-ne v4, v5, :cond_2

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    iget-object v2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->isVideoDynamicFpsOn(II)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/Range;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto/16 :goto_2

    :cond_1
    new-instance v0, Landroid/util/Range;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto/16 :goto_2

    :cond_2
    const/16 v7, 0x18

    if-nez v4, :cond_3

    iget v8, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    iget-object v9, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v9}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/camera/CameraSettings;->isVideoDynamicFpsOn(II)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v0, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_2

    :cond_3
    if-ne v4, v7, :cond_4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    goto :goto_2

    :cond_4
    array-length v4, v0

    :goto_0
    if-ge v2, v4, :cond_7

    aget-object v7, v0, v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateFpsRange: available fps:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v8, v9, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    if-ne v8, v9, :cond_6

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v8, v9, :cond_6

    :goto_1
    move-object v3, v7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    move-object v0, v3

    :goto_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->OoooOOO()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    iget v2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_8

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_b

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00OOO0O()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_9

    const-wide/32 v7, 0xfe5d30

    cmp-long v5, v2, v7

    if-gtz v5, :cond_a

    :cond_9
    if-ne v4, v6, :cond_b

    const-wide/32 v5, 0x1fc1e20

    cmp-long v2, v2, v5

    if-lez v2, :cond_b

    :cond_a
    new-instance v0, Landroid/util/Range;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bestRange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFpsRange(Landroid/util/Range;)V

    return-void

    :cond_c
    :goto_3
    const-string/jumbo v0, "updateFpsRange: no fps range is available"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateFrontMirror()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/video/CameraDeviceController;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->OooOooo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00oO0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setFrontMirror(Z)V

    :cond_1
    return-void
.end method

.method public updateHFRDeflicker()V
    .locals 2

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00OO00O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setHFRDeflickerEnable(Z)V

    :cond_0
    return-void
.end method

.method public updateHdr10VideoMode()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupportedHdr10()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupportedHdr10Plus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setHdr10VideoMode(Z)V

    :cond_3
    return-void
.end method

.method public updateHistogramStats()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setHistogramStatsEnabled(Z)V

    return-void
.end method

.method public updateISO(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "pref_qc_fastmotion_pro_camera_iso_key"

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "pref_qc_pro_video_camera_iso_key"

    invoke-static {v0, p1}, Lcom/android/camera/module/video/VideoUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getMaxIso()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setISO(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1, v1}, Lcom/android/camera2/Camera2Proxy;->setISO(I)V

    :goto_1
    return-void
.end method

.method public updateMacroMode()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setMacroMode(Z)V

    return-void
.end method

.method public updateSATZooming(Z)V
    .locals 1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00O0OO0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0o0()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->setSatIsZooming(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/video/CameraDeviceController;->resumePreview()V

    return-void
.end method

.method public updateSessionParams()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getSessionConfigs()Lcom/android/camera2/CaptureSessionConfigurations;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    const/16 v3, 0xa2

    if-eq v2, v3, :cond_2

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/video/CameraDeviceController;->setHistogramTagDefault()V

    :cond_2
    const-string/jumbo v2, "updateSessionParams: DYNAMIC_FPS_CONFIG: "

    const-string v3, "CameraDeviceController"

    const/4 v4, 0x5

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->is60fpsDynamicSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isDynamicFpsConfigSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    iget-object v6, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v6}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/CameraSettings;->isVideoDynamicFpsOn(II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->getHSRIntegerValue()I

    move-result v5

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_3

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->DYNAMIC_FPS_CONFIG:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0, v4, v1}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->is30fpsDynamicSupported()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isDynamicFpsConfigSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    iget-object v5, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v5}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/camera/CameraSettings;->isVideoDynamicFpsOn(II)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->getHSRIntegerValue()I

    move-result v1

    if-nez v1, :cond_4

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->DYNAMIC_FPS_CONFIG:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0, v4, v1}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x42040000    # 33.0f
        0x42700000    # 60.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x40000000    # 2.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x0
        0x0
    .end array-data
.end method

.method public updateTargetZoom()V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->readTargetZoom()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setTargetZoom(F)V

    :cond_0
    return-void
.end method

.method public updateUltraWideLDC()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-direct {p0}, Lcom/android/camera/module/video/CameraDeviceController;->shouldApplyUltraWideLDC()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setUltraWideLDC(Z)V

    return-void
.end method

.method public updateVideoBokeh(Z)V
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehRatio()F

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/module/video/CameraDeviceController;->isFrontCamera()Z

    move-result v1

    const-string v2, "CameraDeviceController"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frontVideoBokeh: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoBokehLevelFront(F)V

    goto :goto_0

    :cond_0
    float-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backVideoBokeh: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoBokehLevelBack(I)V

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehColorRetentionMode()I

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/module/video/CameraDeviceController;->isFrontCamera()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterColorRetentionMode(IZ)V

    :cond_1
    return-void
.end method

.method public updateVideoColorRetention()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportMasterFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoMasterFilter()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/video/CameraDeviceController;->isFrontCamera()Z

    move-result v1

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterColorRetentionFront(Z)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterColorRetentionBack(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterColorRetentionFront(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterColorRetentionBack(Z)V

    :goto_1
    return-void
.end method

.method public updateVideoFilter()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportMasterFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoMasterFilter()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    :goto_0
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    :cond_1
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterId(I)V

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    if-lez v0, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00O000()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterRecordControlEnabled(Z)V

    return-void
.end method

.method public updateVideoLog()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/video/CameraDeviceController;->mModeIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoLogEnabled(Z)V

    return-void
.end method

.method public updateVideoStabilization(Lcom/android/camera/CameraScreenNail;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/video/CameraDeviceController;->needDisableEISAndOIS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p2, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableEIS(Z)V

    iget-object p2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p2, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    invoke-virtual {p1, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    return-void

    :cond_0
    const-string v0, "CameraDeviceController"

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    const-string/jumbo p2, "videoStabilization: EIS"

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p2, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    iget-object p2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p2, v2}, Lcom/android/camera2/Camera2Proxy;->setEnableEIS(Z)V

    iget-object p2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p2}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->isEISPreviewSupported()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "videoStabilization: OIS"

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p2, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableEIS(Z)V

    iget-object p2, p0, Lcom/android/camera/module/video/CameraDeviceController;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p2, v2}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    invoke-virtual {p1, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    :cond_2
    :goto_0
    return-void
.end method
