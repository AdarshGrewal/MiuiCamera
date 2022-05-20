.class public Lcom/android/camera2/MiCamera2ShotParallelRawBurst;
.super Lcom/android/camera2/MiCamera2ShotParallel;
.source "MiCamera2ShotParallelRawBurst.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2ShotParallel<",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ShotParallelRawBurst"


# instance fields
.field public mAlgoType:I

.field public mAnchorFrame:Z

.field public mCompletedNum:I

.field public mFeatureSetting:Lcom/xiaomi/camera/imagecodec/FeatureSetting;

.field public mFeatureSettingInitialized:Z

.field public mIsAinr:Z

.field public mMainPhysicalCameraId:I

.field public mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

.field public mRawInputSize:Landroid/util/Size;

.field public mRawSurface:Landroid/view/Surface;

.field public mSequenceNum:I

.field public mSoundTime:I

.field public mStartedNum:I

.field public mYuvInputSize:Landroid/util/Size;

.field public mYuvSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;)V

    const/16 p1, 0xb

    .line 2
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mAlgoType:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mMainPhysicalCameraId:I

    .line 4
    iput-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mStartedNum:I

    return p0
.end method

.method public static synthetic access$008(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mStartedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mStartedNum:I

    return v0
.end method

.method public static synthetic access$100(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mSequenceNum:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mAnchorFrame:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mSoundTime:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mAlgoType:I

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Landroid/util/Size;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mRawInputSize:Landroid/util/Size;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;Lcom/xiaomi/camera/core/ParallelTaskData;)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mCompletedNum:I

    return p0
.end method

.method public static synthetic access$708(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mCompletedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mCompletedNum:I

    return v0
.end method

.method public static synthetic access$800(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mMainPhysicalCameraId:I

    return p0
.end method

.method private doAnchorFrameAsThumbnail()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->isModuleAnchorFrame()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ShotParallelRawBurst"

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

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 7
    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mIsAinr:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x9

    .line 8
    invoke-virtual {v0, v1, v3}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ainr anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    if-nez v1, :cond_4

    const/16 v3, 0x8

    goto :goto_0

    :cond_4
    const/16 v3, 0x67

    .line 10
    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mnfr anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private initFeatureSetting()V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "ShotParallelRawBurst"

    const-string v2, "initFeatureSetting: E"

    .line 1
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mRawSurface:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mRawSurface:Landroid/view/Surface;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 4
    iput-boolean v3, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mFeatureSettingInitialized:Z

    const-string v2, "initFeatureSetting: raw surface hasn\'t been initialized"

    .line 5
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 7
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v2

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    .line 8
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initFeatureSetting: activeCameraId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iput v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mMainPhysicalCameraId:I

    .line 10
    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5, v2}, Lcom/android/camera2/MiCamera2;->getActiveRawSize(I)Lcom/android/camera/CameraSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mRawInputSize:Landroid/util/Size;

    .line 11
    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5, v2}, Lcom/android/camera2/MiCamera2;->getMainCaptureSurface(I)Landroid/view/Surface;

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mYuvSurface:Landroid/view/Surface;

    .line 12
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mYuvInputSize:Landroid/util/Size;

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initFeatureSetting: rawInputSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", yuvInputSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigs;->getOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v5

    if-nez v5, :cond_4

    .line 15
    iget-object v6, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v6

    :goto_3
    if-nez v5, :cond_5

    .line 16
    iget-object v7, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v7

    .line 17
    :goto_4
    iget-object v8, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-ne v6, v8, :cond_6

    iget-object v8, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-eq v7, v8, :cond_7

    .line 18
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initFeatureSetting: outputSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_7
    new-instance v5, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 20
    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraConfigs;->getPhotoFormat()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    .line 21
    iget-object v6, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 22
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v7

    if-eqz v7, :cond_13

    if-eqz v6, :cond_13

    .line 23
    invoke-static {v6}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object v8

    .line 24
    invoke-static {v6}, Lcom/android/camera2/CaptureResultParser;->isAishutExistMotion(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_a

    .line 25
    iget-object v9, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v12, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MTK_AISHUT_ISO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v9, v12}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_8

    .line 26
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    .line 27
    :goto_5
    iget-object v13, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v14, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MTK_AISHUT_EXPOSURE_TIME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v13, v14}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    if-eqz v13, :cond_9

    .line 28
    invoke-virtual {v13}, Ljava/lang/Integer;->longValue()J

    move-result-wide v14

    goto :goto_6

    :cond_9
    move-wide v14, v10

    .line 29
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFeatureSetting: aiShutIso="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " aiShutExposureTime="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_a
    move-wide v14, v10

    const/4 v12, 0x0

    :goto_7
    if-eqz v12, :cond_b

    cmp-long v3, v14, v10

    if-nez v3, :cond_d

    .line 30
    :cond_b
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v6, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_c

    .line 31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 32
    :cond_c
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v6, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_d

    .line 33
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 34
    :cond_d
    invoke-static {v6}, Lcom/android/camera2/CaptureResultParser;->isSpecshotDetected(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object v3

    .line 35
    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_f

    .line 36
    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v4

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    :goto_9
    const/4 v6, 0x3

    const/4 v9, 0x2

    if-eq v6, v4, :cond_11

    if-eqz v3, :cond_11

    .line 37
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_10

    .line 38
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v9, :cond_11

    :cond_10
    const/4 v4, 0x1

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    :goto_a
    iput-boolean v4, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mIsAinr:Z

    .line 39
    new-instance v3, Lcom/xiaomi/camera/isp/IspInterfaceIO;

    iget-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mYuvInputSize:Landroid/util/Size;

    iget-object v6, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mRawInputSize:Landroid/util/Size;

    invoke-direct {v3, v4, v6, v5}, Lcom/xiaomi/camera/isp/IspInterfaceIO;-><init>(Landroid/util/Size;Landroid/util/Size;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V

    .line 40
    new-instance v4, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;

    invoke-direct {v4}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;-><init>()V

    .line 41
    invoke-virtual {v4, v2}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->setActiveCameraId(I)Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;

    move-result-object v2

    .line 42
    invoke-virtual {v2, v14, v15}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->setExposureTime(J)Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;

    move-result-object v2

    .line 43
    invoke-virtual {v2, v12}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->setISO(I)Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;

    move-result-object v2

    iget-boolean v4, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mIsAinr:Z

    if-eqz v4, :cond_12

    goto :goto_b

    :cond_12
    const/4 v9, 0x1

    .line 44
    :goto_b
    invoke-virtual {v2, v9}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->setFeatureType(I)Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->build()Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    move-result-object v2

    const/4 v4, 0x1

    .line 46
    invoke-virtual {v7, v3, v8, v2, v4}, Lcom/android/camera/LocalParallelService$LocalBinder;->queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mFeatureSetting:Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFeatureSetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mFeatureSetting:Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-boolean v4, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mFeatureSettingInitialized:Z

    :cond_13
    const-string v2, "initFeatureSetting: X"

    .line 49
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;-><init>(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)V

    return-object v0
.end method

.method public generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const-string v1, "ShotParallelRawBurst"

    if-nez v0, :cond_0

    const-string v0, "generateRequestBuilder: null pointer"

    .line 2
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 5
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 6
    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mRawSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const/16 v3, 0x201

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isInMultiSurfaceSatMode()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v4

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v7

    if-ne v4, v7, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    .line 9
    :cond_2
    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->isFacingFront()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v3, 0x11

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v4

    iput v4, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 11
    invoke-static {v0, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyNotificationTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 12
    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mYuvSurface:Landroid/view/Surface;

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v7

    if-ne v4, v7, :cond_4

    move v3, v5

    .line 13
    :cond_4
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "combinationMode: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mYuvInputSize:Landroid/util/Size;

    const/16 v7, 0x23

    invoke-virtual {p0, v4, v7, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    .line 15
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOo()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 16
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getRawSurfaceForTuningBuffer()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_5

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 17
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v8

    aput-object v8, v4, v7

    const-string v7, "add tuning surface to capture request, size is: %s"

    .line 18
    invoke-static {v1, v7, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 19
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 20
    :cond_5
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 21
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1, v0, v5}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 22
    invoke-static {v0, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspMetaType(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 23
    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mSequenceNum:I

    invoke-static {v0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 24
    invoke-static {v0, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspPackedRawSupport(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 25
    invoke-static {v0, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspPackedRawEnable(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 26
    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mIsAinr:Z

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v6

    :goto_2
    invoke-static {v0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 27
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 28
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->copyAiSceneFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 29
    :cond_7
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ShotParallelRawBurst"

    return-object v0
.end method

.method public prepare()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mFeatureSettingInitialized:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->initFeatureSetting()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mFeatureSetting:Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->getFrameCount()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mSequenceNum:I

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->doAnchorFrameAsThumbnail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mAnchorFrame:Z

    .line 6
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mAlgoType:I

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2ShotParallel;->getSoundTimeWhenAnchor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mSoundTime:I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anchorFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mAnchorFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,soundTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mSoundTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShotParallelRawBurst"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldApply()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mFeatureSettingInitialized:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->initFeatureSetting()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mFeatureSetting:Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->getFrameCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startSessionCapture()V
    .locals 9

    const-string v0, "ShotParallelRawBurst"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, "startSessionCapture: "

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mFeatureSetting:Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->getTuningIndexes()[J

    move-result-object v3

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 6
    :goto_0
    iget v7, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mSequenceNum:I

    if-ge v6, v7, :cond_3

    if-eqz v3, :cond_2

    .line 7
    array-length v7, v3

    if-le v7, v6, :cond_1

    .line 8
    aget-wide v7, v3, v6

    invoke-static {v2, v7, v8}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningIndex(Landroid/hardware/camera2/CaptureRequest$Builder;J)V

    goto :goto_1

    .line 9
    :cond_1
    array-length v7, v3

    if-lez v7, :cond_2

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startSessionCapture: apply tuningIndexes[0] for frame "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    aget-wide v7, v3, v5

    invoke-static {v2, v7, v8}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningIndex(Landroid/hardware/camera2/CaptureRequest$Builder;J)V

    .line 12
    :cond_2
    :goto_1
    invoke-static {v2, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 13
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 14
    :cond_3
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v3

    .line 15
    new-instance v5, Lcom/xiaomi/engine/BufferFormat;

    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    const/16 v8, 0x20

    invoke-direct {v5, v6, v7, v8}, Lcom/xiaomi/engine/BufferFormat;-><init>(III)V

    .line 16
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {p0, v2, v5, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->generatePreProcessData(Landroid/hardware/camera2/CaptureRequest;Lcom/xiaomi/engine/BufferFormat;I)Lcom/xiaomi/engine/PreProcessData;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 17
    invoke-virtual {p0, v2}, Lcom/android/camera2/MiCamera2ShotParallel;->preCapture(Lcom/xiaomi/engine/PreProcessData;)V

    :cond_4
    const/4 v2, 0x4

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSessionCapture request number: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v2

    const-string v3, "algo_prepare_capture"

    invoke-virtual {v2, v3}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 20
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v2

    const-string v3, "algo_device_capture"

    invoke-virtual {v2, v3}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v2

    const-string v3, "shot_prepare_capture"

    invoke-virtual {v2, v3}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 22
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v2

    const-string v3, "shot_device_capture"

    invoke-virtual {v2, v3}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v1, v3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->mSequenceNum:I

    invoke-static {v1, v2}, Lcom/android/camera/MemoryHelper;->addCapturedNumber(II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_2

    :catch_1
    move-exception v1

    .line 28
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_2
    return-void
.end method
