.class public Lcom/android/camera2/MiCamera2ShotParallelBurst;
.super Lcom/android/camera2/MiCamera2ShotParallel;
.source "MiCamera2ShotParallelBurst.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2ShotParallel<",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ShotParallelBurst"


# instance fields
.field public mAlgoType:I

.field public mAnchorFrame:Z

.field public mBaseEvValue:I

.field public mCompletedNum:I

.field public mHdrCaptureRequestSettings:[I

.field public mHdrCheckerAdrc:I

.field public mHdrCheckerEvValue:[I

.field public mHdrCheckerSceneType:I

.field public mHdrType:I

.field public mIsFakeSatEnabled:Z

.field public mIsHdrBokeh:Z

.field public mIsHdrSR:Z

.field public mMainPhysicalCameraId:I

.field public mMultiFrameNum:I

.field public mNbrOfNonBaseEVs:I

.field public volatile mNeedDoAnchorFrame:Z

.field public final mOperationMode:I

.field public mPreviewSize:Lcom/android/camera/CameraSize;

.field public mRawCallbackType:I

.field public mSatFusionType:I

.field public mSequenceNum:I

.field public mShouldDoMFNR:Z

.field public mShouldDoSR:Z

.field public mSingleCaptureForHDRplusMFNR:Z

.field public mSoundTime:I

.field public mStartedNum:I

.field public mSubPhysicalCameraId:I

.field public mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

.field public final mUseParallelVtCam:Z

.field public mZslHdrEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;ZII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNeedDoAnchorFrame:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMainPhysicalCameraId:I

    .line 5
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSubPhysicalCameraId:I

    .line 6
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    .line 7
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    .line 8
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    .line 9
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSoundTime:I

    .line 10
    iput-boolean p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    .line 11
    iput-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 12
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getOperatingMode()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mOperationMode:I

    .line 13
    iput p4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fusionType -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotParallelBurst"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iput p5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->processResult(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCompletedNum:I

    return p0
.end method

.method public static synthetic access$1008(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCompletedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCompletedNum:I

    return v0
.end method

.method public static synthetic access$1100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMainPhysicalCameraId:I

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSubPhysicalCameraId:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mStartedNum:I

    return p0
.end method

.method public static synthetic access$208(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mStartedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mStartedNum:I

    return v0
.end method

.method public static synthetic access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAnchorFrame:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSoundTime:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:I

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    return p0
.end method

.method public static synthetic access$800(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/android/camera2/MiCamera2ShotParallelBurst;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    return-object p0
.end method

.method private applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_7

    const/4 v0, 0x2

    if-eq p3, v0, :cond_6

    const/4 v0, 0x3

    if-eq p3, v0, :cond_5

    const/4 v0, 0x7

    if-eq p3, v0, :cond_4

    const/16 v0, 0xc

    if-eq p3, v0, :cond_3

    const/16 v0, 0xf

    if-eq p3, v0, :cond_3

    const/16 v0, 0x9

    if-eq p3, v0, :cond_2

    const/16 v0, 0xa

    if-eq p3, v0, :cond_3

    const/16 v0, 0x11

    if-eq p3, v0, :cond_1

    const/16 v0, 0x12

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyPureViewParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyFrontCupParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    .line 3
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyLowLightBokehParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 4
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applySuperNightParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    .line 5
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyHHTParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 6
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applySuperResolutionParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    .line 7
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyClearShotParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 8
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 9
    :goto_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 10
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {p2, p1}, Lcom/android/camera2/compat/MiCameraCompat;->copyAiSceneFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_1

    .line 11
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 12
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/camera2/CaptureRequestBuilder;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 13
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallback(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    :cond_9
    :goto_1
    return-void
.end method

.method private applyClearShotParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_1
    return-void
.end method

.method private applyFrontCupParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-gt p2, v0, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooOOo()[I

    move-result-object v0

    .line 3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aget v3, v0, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "applyFrontCupParameter: request[%d].ev = %d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShotParallelBurst"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1, v5}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 5
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aget p2, v0, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 7
    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 8
    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 9
    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong request index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private applyHHTParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    const-string v0, "ShotParallelBurst"

    const-string v1, "HHT algo in applyAlgoParameter"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 4
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 v0, 0x1

    .line 5
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHHT(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method private applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-gt p2, v0, :cond_21

    add-int/lit8 v0, p2, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget v0, v0, p2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 5
    :goto_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0000o()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 6
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-eqz v2, :cond_2

    if-gez v0, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    int-to-byte v2, v2

    .line 7
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {p1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 9
    :cond_3
    :goto_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0000o()Z

    move-result v2

    const/4 v4, 0x2

    const-string v5, "ShotParallelBurst"

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 10
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "[ALGOUP|MMCAMERA] Algo Up HDR!!!!"

    .line 11
    invoke-static {v5, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    mul-int/2addr v2, v4

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 13
    invoke-static {p1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_3

    .line 14
    :cond_4
    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 15
    :goto_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v2

    if-nez v2, :cond_5

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0:Z

    if-nez v2, :cond_5

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0O0:Z

    if-nez v2, :cond_5

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooO0:Z

    if-nez v2, :cond_5

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0OO:Z

    if-nez v2, :cond_5

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0o0:Z

    if-nez v2, :cond_5

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0oO:Z

    if-nez v2, :cond_5

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Ooo:Z

    if-nez v2, :cond_5

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Oo0:Z

    if-eqz v2, :cond_6

    .line 16
    :cond_5
    invoke-static {p1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 17
    :cond_6
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 18
    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v2, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 19
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 20
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyZslHdrEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 21
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    sget-object v6, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SNAPSHOT_REQ_INFO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v6}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 22
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v2, v6}, Lcom/android/camera2/CaptureResultParser;->getSnapshotReqInfo(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v2

    .line 23
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applySnapshotReqInfo(Landroid/hardware/camera2/CaptureRequest$Builder;[B)V

    .line 24
    :cond_7
    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0:Z

    if-eqz v2, :cond_9

    .line 25
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    if-nez v2, :cond_8

    if-ltz v0, :cond_d

    :goto_4
    move p2, v3

    goto :goto_5

    .line 26
    :cond_8
    aget p2, v2, p2

    if-ne p2, v3, :cond_d

    goto :goto_4

    .line 27
    :cond_9
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooOo()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 28
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    if-nez v2, :cond_a

    if-nez v0, :cond_d

    goto :goto_4

    .line 29
    :cond_a
    aget p2, v2, p2

    if-ne p2, v3, :cond_d

    goto :goto_4

    .line 30
    :cond_b
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00o0()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 31
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    if-nez v2, :cond_c

    if-nez v0, :cond_d

    goto :goto_4

    .line 32
    :cond_c
    aget p2, v2, p2

    if-ne p2, v3, :cond_d

    goto :goto_4

    :cond_d
    move p2, v1

    .line 33
    :goto_5
    iget v2, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    const/4 v6, 0x4

    if-ne v2, v3, :cond_e

    :goto_6
    move v2, v3

    goto :goto_7

    :cond_e
    if-ne v2, v4, :cond_f

    goto :goto_6

    :cond_f
    const/4 v4, 0x3

    if-ne v2, v4, :cond_10

    .line 34
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOoO0()Z

    move-result v2

    goto :goto_7

    :cond_10
    if-ne v2, v6, :cond_11

    .line 35
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOoOo()Z

    move-result v2

    goto :goto_7

    :cond_11
    const/4 v4, -0x1

    if-ne v2, v4, :cond_13

    .line 36
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 37
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v4

    if-eq v2, v4, :cond_12

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 38
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v4

    if-ne v2, v4, :cond_13

    .line 39
    :cond_12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00o0()Z

    move-result v2

    goto :goto_7

    :cond_13
    move v2, v1

    .line 40
    :goto_7
    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v4

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v7

    if-ne v4, v7, :cond_14

    .line 41
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/device/Common;->o000o0oo()Z

    move-result v4

    goto :goto_8

    :cond_14
    move v4, v1

    :goto_8
    if-eqz p2, :cond_15

    .line 42
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/Camera2Proxy;->isFixShotTime()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v7

    invoke-virtual {v7}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0O0oo()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 43
    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera2/CameraConfigs;->isMfHdrQuickShotEnabled()Z

    move-result v7

    if-eqz v7, :cond_15

    const-string p2, "Mfhdr quickshot enabled\uff0cdisable mfnr"

    .line 44
    invoke-static {v5, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    .line 45
    :cond_15
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v7, v8}, Lcom/android/camera2/CaptureResultParser;->isDisableMfnrForMfnrHDR(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Z

    move-result v7

    if-nez v7, :cond_1a

    if-eqz p2, :cond_16

    if-eqz v2, :cond_16

    .line 46
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v7

    if-eqz v7, :cond_16

    iget v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-ge v7, v6, :cond_16

    goto :goto_9

    :cond_16
    if-eqz p2, :cond_17

    if-eqz v4, :cond_17

    .line 47
    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-ge v4, v6, :cond_17

    goto :goto_9

    .line 48
    :cond_17
    iget-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    if-eqz v4, :cond_18

    :goto_9
    move p2, v3

    goto :goto_a

    :cond_18
    if-eqz p2, :cond_19

    if-eqz v2, :cond_19

    .line 49
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00o0()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_9

    :cond_19
    if-eqz p2, :cond_1a

    .line 50
    iget-boolean p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-eqz p2, :cond_1a

    goto :goto_9

    :cond_1a
    move p2, v1

    :goto_a
    if-eqz p2, :cond_1b

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyHdrParameter enable mfnr EV = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {p1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_b

    .line 53
    :cond_1b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyHdrParameter disable mfnr EV = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 55
    :goto_b
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    if-eqz p2, :cond_1c

    .line 56
    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->isSupportHdrBokeh()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 57
    iget-boolean p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 58
    :cond_1c
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOo()Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 59
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrType:I

    if-nez p2, :cond_1d

    const-string p2, "enable isp tuning capture hint for HDR"

    .line 60
    invoke-static {v5, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x138d

    .line 61
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_c

    :cond_1d
    if-ne p2, v3, :cond_1e

    const-string p2, "enable isp tuning capture hint for LLHDR"

    .line 62
    invoke-static {v5, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x138f

    .line 63
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 64
    :cond_1e
    :goto_c
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result p2

    if-eqz p2, :cond_1f

    goto :goto_d

    :cond_1f
    move v3, v1

    .line 65
    :goto_d
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOO0O()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 66
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOO0()Z

    move-result p2

    if-eqz p2, :cond_20

    if-eqz v3, :cond_20

    const-string p2, "applyHdrParameter:applyHDR is false since ev changed!"

    .line 67
    invoke-static {v5, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_20
    return-void

    .line 69
    :cond_21
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong request index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private applyLowLightBokehParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 3
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method private applyPureViewParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getMotionCaptureType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 2
    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->ANCHOR_FRAME_TIMESTAMP:Lcom/android/camera2/vendortag/VendorTag;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueSafely(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyPureViewParameter mSequenceNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " capture type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShotParallelBurst"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    add-int/2addr p2, v1

    .line 4
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 5
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 6
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 7
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyPureViewEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 p2, 0x0

    .line 8
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 9
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 10
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 11
    sget-object p2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->XIAOMI_MOTION_CAPTURE_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueQuietly(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    return-void
.end method

.method private applySuperNightParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-gt p2, v0, :cond_6

    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getValue()[I

    move-result-object v3

    aget v3, v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "applySuperNightParameter: request[%d].ev = %d"

    .line 4
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShotParallelBurst"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Oo0:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Ooo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo:Z

    if-nez v0, :cond_2

    .line 7
    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    invoke-static {p1, v5}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 9
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "apply raw super night params"

    .line 10
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getValue()[I

    move-result-object v1

    aget p2, v1, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/16 p2, 0x1390

    .line 12
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 13
    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperNightRawEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 14
    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyMtkProcessRaw(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 15
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/16 v0, 0xf

    if-ne p2, v0, :cond_5

    const-string p2, "disable zsl for supernight se"

    .line 16
    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {p1, v4}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_2

    .line 18
    :cond_3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getValue()[I

    move-result-object v3

    aget p2, v3, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/16 p2, 0x10

    .line 19
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne p2, v0, :cond_5

    .line 20
    sget-object p2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MIVI_SUPER_NIGHT_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_5

    .line 21
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xa

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 22
    :cond_4
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    .line 23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    const-string p2, "force set mivi super night mode from %d to %d"

    .line 24
    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiviSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 26
    :cond_5
    :goto_2
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 27
    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 28
    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void

    .line 29
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong request index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private applySuperResolutionParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6

    add-int/lit8 v0, p2, 0x1

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 5
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 v1, 0x1

    .line 6
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 7
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 8
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oo0Oo()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    :cond_0
    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 10
    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 11
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v2

    const-string v3, "ShotParallelBurst"

    if-eqz v2, :cond_2

    .line 12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOo()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "enable isp tuning capture hint for MFSR"

    .line 13
    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x138e

    .line 14
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 15
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyNoiseReduction(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 16
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHighQualityReprocess(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 17
    :cond_2
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    if-eqz v2, :cond_6

    .line 18
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 19
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 20
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v2, v2, p2

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    if-ne v2, v4, :cond_4

    .line 21
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0O0o()Z

    move-result v2

    if-nez v2, :cond_3

    .line 22
    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 23
    :cond_3
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_0

    .line 24
    :cond_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0O0o()Z

    move-result v2

    if-nez v2, :cond_5

    .line 25
    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 26
    :cond_5
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 27
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 28
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v0, v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "HdrSrEv[%d]=%d"

    invoke-static {v2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget p2, v2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 30
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_1

    .line 31
    :cond_6
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :goto_1
    return-void
.end method

.method private doAnchorFrameAsThumbnail()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->isModuleAnchorFrame()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ShotParallelBurst"

    if-nez v0, :cond_0

    const-string v0, "anchor frame do not enable"

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

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v5

    xor-int/2addr v5, v4

    .line 8
    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v3, v1}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SR anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    if-ne v6, v4, :cond_5

    if-nez v3, :cond_4

    const/4 v1, 0x5

    .line 11
    invoke-virtual {v0, v3, v1}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result v0

    goto :goto_0

    :cond_4
    const/16 v1, 0x66

    .line 12
    invoke-virtual {v0, v3, v1}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result v0

    .line 13
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HDR anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    const/16 v4, 0xa

    if-eq v6, v4, :cond_a

    const/16 v7, 0xc

    if-ne v6, v7, :cond_6

    goto :goto_1

    :cond_6
    const/16 v7, 0x11

    if-ne v6, v7, :cond_7

    const/16 v1, 0x64

    .line 14
    invoke-virtual {v0, v3, v1}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cup capture anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    const/16 v7, 0xf

    if-ne v6, v7, :cond_8

    return v1

    .line 16
    :cond_8
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:I

    if-eqz v1, :cond_9

    .line 17
    invoke-virtual {v0, v3, v4}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "back fusion anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_9
    const-string v0, "default anchor frame true"

    .line 19
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_a
    :goto_1
    const/4 v1, 0x6

    .line 20
    invoke-virtual {v0, v3, v1}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "super night anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getGroupShotMaxImage()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 2
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    array-length v0, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 4
    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    return v0
.end method

.method private getGroupShotNum()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isMemoryRich(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->getGroupShotMaxImage()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "ShotParallelBurst"

    const-string v1, "getGroupShotNum: low memory"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0
.end method

.method private getHDSRStates()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->isInSRZoomRatioTheInterval(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera2/CameraCapabilities;F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 2
    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 3
    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrSrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private initFeatureSetting()V
    .locals 9

    const-string v0, "ShotParallelBurst"

    const-string v1, "initFeatureSetting: E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFeatureSetting: rawInputSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", yuvInputSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v4

    :goto_0
    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v5

    .line 8
    :goto_1
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v6

    if-ne v4, v6, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 9
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initFeatureSetting: outputSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_3
    new-instance v3, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 11
    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getPhotoFormat()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    .line 12
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v4

    .line 13
    iget-object v5, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 14
    new-instance v6, Lcom/xiaomi/camera/isp/IspInterfaceIO;

    new-instance v7, Landroid/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v2

    invoke-direct {v7, v8, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/util/Size;

    .line 15
    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v1

    invoke-direct {v2, v8, v1}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v6, v7, v2, v3}, Lcom/xiaomi/camera/isp/IspInterfaceIO;-><init>(Landroid/util/Size;Landroid/util/Size;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V

    .line 16
    invoke-static {v5}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 17
    invoke-virtual {v4, v6, v1, v2, v3}, Lcom/android/camera/LocalParallelService$LocalBinder;->queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    :cond_4
    const-string v1, "initFeatureSetting: X"

    .line 18
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isUpdateHDRCheckerValues()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getMagneticDetectedCallback()Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getMagneticDetectedCallback()Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;

    move-result-object v0

    const-string v1, "ShotParallelBurst"

    invoke-interface {v0, v1}, Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;->isLockHDRChecker(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private prepareClearShot(I)V
    .locals 0

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    .line 2
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 3
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    :goto_0
    return-void
.end method

.method private prepareHHT()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    const-string v1, "ShotParallelBurst"

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAiASDEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isSmoothLevelOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    const-string v0, "switch to quick shot hht(3 -> 1)"

    .line 7
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureResultParser;->getHHTFrameNumber(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    if-lez v0, :cond_1

    .line 9
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHHTFrameNumber hht("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> 1)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    .line 11
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    const-string v0, "default hht(5 -> 1)"

    .line 12
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private prepareHdr()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHDRStatus()Lcom/android/camera2/Camera2Proxy$HDRStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isFlashHDR()Z

    move-result v0

    const-string v1, "ShotParallelBurst"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareHDR: night hdr ev_value:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2, v0}, Lcom/android/camera2/MiCamera2;->useSingleCaptureForHdrPlusMfnr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 6
    :goto_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOO0()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_3

    .line 7
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00o0o()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->isHdrDegradeMFNREnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string v4, "prepareHDR: user mfnr capture since ev changed or support HdrDegradeMFNR! "

    .line 8
    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iput-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    .line 10
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareHDR: singleFrameHDR = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v4}, Lcom/android/camera2/CaptureResultParser;->isZslHdrEnabled(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareHDR: isZslHdrEnable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v4}, Lcom/android/camera2/CaptureResultParser;->getHdrCaptureRequestSettings(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v4

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareHDR: requestSettings = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-boolean v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    const-string v6, "prepareHDR: illegal hdr settings"

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    .line 16
    iput-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    .line 17
    iput v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    .line 18
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v5

    invoke-virtual {v5}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOO0()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    new-array v0, v3, [I

    .line 19
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result v3

    aput v3, v0, v2

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    goto :goto_2

    :cond_5
    new-array v0, v3, [I

    aput v2, v0, v2

    .line 20
    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    goto :goto_2

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerValues(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v0

    .line 22
    new-instance v2, Lcom/android/camera2/vendortag/struct/HdrEvValue;

    invoke-direct {v2, v0}, Lcom/android/camera2/vendortag/struct/HdrEvValue;-><init>([B)V

    .line 23
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getHdrType()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrType:I

    .line 24
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getSequenceNum()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    .line 25
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getHdrCheckerEvValue()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v4, :cond_8

    .line 26
    array-length v2, v4

    array-length v0, v0

    if-ge v2, v0, :cond_7

    goto :goto_1

    .line 27
    :cond_7
    iput-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    goto :goto_2

    .line 28
    :cond_8
    :goto_1
    invoke-static {v1, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iput-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    .line 30
    :goto_2
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->isUpdateHDRCheckerValues()Z

    move-result v0

    const-string v2, ",EvValue = "

    const-string v3, ",adrc = "

    const-string v5, "prepareHdr: scene = "

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHdrCheckerEvValue()[I

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "prepareHDR: hdr checker values not updated"

    .line 31
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHdrCheckerEvValue()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v4, :cond_a

    .line 33
    array-length v8, v4

    array-length v0, v0

    if-ge v8, v0, :cond_9

    goto :goto_3

    .line 34
    :cond_9
    iput-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    goto :goto_4

    .line 35
    :cond_a
    :goto_3
    invoke-static {v1, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iput-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    .line 37
    :goto_4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHdrCheckerSceneType()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    .line 38
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHdrCheckerAdrc()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v2, :cond_b

    .line 40
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    :cond_b
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 42
    :cond_c
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerSceneType(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    .line 43
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerAdrc(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v2, :cond_d

    .line 45
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    :cond_d
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setHdrCheckerEvValue([I)V

    .line 48
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setHdrCheckerSceneType(I)V

    .line 49
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setHdrCheckerAdrc(I)V

    return-void
.end method

.method private prepareLowLightBokeh()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    return-void
.end method

.method private preparePurePreview()V
    .locals 1

    const/4 v0, 0x5

    .line 1
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    return-void
.end method

.method private prepareSR(Z)V
    .locals 6

    const-string v0, "ShotParallelBurst"

    if-eqz p1, :cond_3

    .line 1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v1}, Lcom/android/camera2/CaptureResultParser;->getHdrCaptureRequestSettings(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareSR: hdr settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v2}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerValues(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v3}, Lcom/android/camera2/CaptureResultParser;->getHdrSrRequestExpandRules(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareSR: evExpandRules ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v4, "prepareSR: no evExpandRules"

    .line 6
    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    new-instance v4, Lcom/android/camera2/vendortag/struct/HdrEvValue;

    invoke-direct {v4, v2, p1, v3}, Lcom/android/camera2/vendortag/struct/HdrEvValue;-><init>([BZ[B)V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareSR: hdr ev values = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v4}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getSequenceNum()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    .line 10
    invoke-virtual {v4}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getHdrCheckerEvValue()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v1, :cond_2

    .line 11
    array-length v2, v1

    array-length p1, p1

    if-ge v2, p1, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "prepareSR: illegal hdr settings"

    .line 13
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    .line 15
    :goto_2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    .line 16
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooOO0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO0O0/OooOO0;-><init>(Lcom/android/camera2/MiCamera2ShotParallelBurst;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    add-int/lit8 p1, p1, 0x1

    .line 17
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    goto :goto_3

    .line 18
    :cond_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00000O()I

    move-result p1

    const-string v1, "camera.sr.framecount"

    .line 19
    invoke-static {v1, p1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareSR: captureNum="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private prepareSuperNight()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getSuperNightEvValue()Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getSuperNightCheckerEv(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v0

    const-string v1, "camera.debug.superlowlight"

    .line 4
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->parseSuperNightEvValue([BLjava/lang/String;Z)Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    .line 6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareSuperNight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShotParallelBurst"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getSequenceNum()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    .line 8
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->initFeatureSetting()V

    :cond_1
    return-void
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

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNeedDoAnchorFrame:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAnchorFrame:Z

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

    const-string v1, "ShotParallelBurst"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSoundTime:I

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
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNeedDoAnchorFrame:Z

    .line 12
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCacheImageDecoder()Lcom/android/zxing/CacheImageDecoder;

    move-result-object v2

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mPreviewSize:Lcom/android/camera/CameraSize;

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
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNeedDoAnchorFrame:Z

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

.method private removeRtStreamTargetForSrIfNeed(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    if-eqz p1, :cond_5

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oo0Oo()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isZsl(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->disableRtStreamForSrRequired()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    const-string v1, "ShotParallelBurst"

    if-eqz v0, :cond_4

    const-string v2, "removeRtStreamTargetForSrIfNeed \uff1aremove preview surface for SR capture !"

    .line 6
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "removeRtStreamTargetForSrIfNeed \uff1aremove qr code surface for SR capture !"

    .line 9
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;-><init>(Lcom/android/camera2/MiCamera2ShotParallelBurst;)V

    return-object v0
.end method

.method public generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    const/4 v2, 0x2

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 2
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 4
    :goto_0
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->isQcfaEnable()Z

    move-result v3

    const v4, 0x8014

    const/16 v6, 0x10

    const/16 v7, 0x23

    const/16 v8, 0x11

    const/16 v9, 0xf

    const/4 v10, 0x3

    const/4 v11, 0x0

    const-string v12, "ShotParallelBurst"

    const/4 v13, 0x1

    if-eqz v3, :cond_6

    .line 5
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getQcfaRemoteSurface()Landroid/view/Surface;

    move-result-object v3

    .line 6
    iget v14, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v8, v14, :cond_1

    .line 7
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v3

    .line 8
    iget-object v14, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v14}, Lcom/android/camera2/MiCamera2;->getBinningPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v14

    iput-object v14, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    .line 9
    :cond_1
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v14

    .line 10
    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v11

    aput-object v14, v2, v13

    const-string v5, "[QCFA]add surface %s to capture request, size is: %s"

    invoke-static {v15, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo()Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo:Z

    if-eqz v2, :cond_3

    .line 13
    :cond_2
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 14
    :cond_3
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mLockedAlgoSize:Landroid/util/Size;

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {v0, v2, v7}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    goto :goto_1

    .line 16
    :cond_4
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v8, v2, :cond_5

    .line 17
    invoke-virtual {v0, v14, v7}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    :cond_5
    :goto_1
    move v3, v11

    goto/16 :goto_10

    .line 18
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v3

    const/16 v5, 0xa

    if-nez v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isInMultiSurfaceSatMode()Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_5

    .line 19
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "algoType = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getParallelSpecList()Landroid/util/SparseArray;

    move-result-object v3

    .line 21
    invoke-static {v3}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->getSurfaceFromSparseArray(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v3

    .line 22
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/Surface;

    const/16 v15, 0xc

    .line 23
    iget v7, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v15, v7, :cond_9

    .line 24
    iget-object v7, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v7

    if-eq v14, v7, :cond_e

    iget-object v7, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 25
    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getRawSurfaceForTuningBuffer()Landroid/view/Surface;

    move-result-object v7

    if-eq v14, v7, :cond_e

    :cond_8
    :goto_3
    const/16 v7, 0x23

    goto :goto_2

    :cond_9
    if-ne v9, v7, :cond_a

    goto/16 :goto_4

    :cond_a
    if-ne v5, v7, :cond_b

    .line 26
    iget v7, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v6, v7, :cond_b

    .line 27
    iget-object v7, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v7

    if-eq v14, v7, :cond_e

    goto :goto_3

    .line 28
    :cond_b
    iget v7, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v8, v7, :cond_c

    iget v7, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v6, v7, :cond_c

    .line 29
    iget-object v7, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v7

    if-eq v14, v7, :cond_e

    goto :goto_3

    .line 30
    :cond_c
    iget-object v7, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v7

    if-eq v7, v14, :cond_8

    iget-object v7, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 31
    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getRawSurfaceForTuningBuffer()Landroid/view/Surface;

    move-result-object v7

    if-eq v7, v14, :cond_8

    iget-object v7, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 32
    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getTuningRemoteSurface()Landroid/view/Surface;

    move-result-object v7

    if-ne v7, v14, :cond_d

    goto :goto_3

    .line 33
    :cond_d
    iget v7, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v13, v7, :cond_e

    iget-boolean v7, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-eqz v7, :cond_e

    iget-object v7, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 34
    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getBokehMainRawSurface()Landroid/view/Surface;

    move-result-object v7

    if-eq v14, v7, :cond_8

    iget-object v7, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 35
    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getBokehSubRawSurface()Landroid/view/Surface;

    move-result-object v7

    if-ne v14, v7, :cond_e

    goto :goto_3

    .line 36
    :cond_e
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v15, v2, [Ljava/lang/Object;

    aput-object v14, v15, v11

    .line 37
    invoke-static {v14}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v16

    aput-object v16, v15, v13

    const-string v8, "add surface %s to capture request, size is: %s"

    .line 38
    invoke-static {v7, v8, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {v1, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const/16 v7, 0x23

    const/16 v8, 0x11

    goto/16 :goto_2

    .line 40
    :cond_f
    :goto_4
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    move v3, v11

    goto/16 :goto_f

    .line 41
    :cond_10
    :goto_5
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v3

    iput v3, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 42
    iget v7, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v9, v7, :cond_11

    const/16 v7, 0x20

    goto :goto_6

    :cond_11
    const/16 v7, 0x23

    :goto_6
    const/4 v8, 0x0

    .line 43
    iget v14, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v5, v14, :cond_15

    iget v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v6, v5, :cond_15

    .line 44
    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget v8, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v5, v8}, Lcom/android/camera2/MiCamera2;->getSatRawSurface(I)Landroid/view/Surface;

    move-result-object v5

    .line 45
    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 46
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v8

    .line 47
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v15, v2, [Ljava/lang/Object;

    aput-object v5, v15, v11

    aput-object v8, v15, v13

    const-string v5, "[SAT]add raw surface %s to capture request, size is: %s"

    invoke-static {v14, v5, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget v14, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v5, v14}, Lcom/android/camera2/MiCamera2;->getMainCaptureSurface(I)Landroid/view/Surface;

    move-result-object v5

    .line 49
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 50
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v15

    if-ne v14, v15, :cond_12

    .line 51
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v14

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v15

    if-eq v14, v15, :cond_13

    .line 52
    :cond_12
    new-instance v8, Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-direct {v8, v14, v15}, Landroid/util/Size;-><init>(II)V

    .line 53
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[SAT]override output size to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_13
    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getSatPhysicalCameraId()I

    move-result v5

    iput v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMainPhysicalCameraId:I

    .line 55
    iget v5, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    if-ne v13, v5, :cond_14

    move v3, v10

    goto/16 :goto_d

    :cond_14
    const/16 v3, 0x201

    goto/16 :goto_d

    .line 56
    :cond_15
    iget-boolean v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-nez v5, :cond_1c

    .line 57
    iget-boolean v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    if-eqz v5, :cond_16

    .line 58
    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget v8, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v5, v8}, Lcom/android/camera2/MiCamera2;->getFakeSatMainCaptureSurface(I)Landroid/view/Surface;

    move-result-object v5

    .line 59
    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getFakeSatOutputSize()Landroid/util/Size;

    move-result-object v8

    .line 60
    iget v14, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {v1, v14}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto/16 :goto_8

    .line 61
    :cond_16
    iget v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v5, v13, :cond_17

    iget-boolean v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    if-nez v5, :cond_17

    .line 62
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 63
    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 64
    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->getSupportedHdrType()I

    move-result v5

    if-ne v10, v5, :cond_17

    .line 65
    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget v8, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v5, v8}, Lcom/android/camera2/MiCamera2;->getTiledMainCaptureSurface(I)Landroid/view/Surface;

    move-result-object v8

    move v5, v13

    goto :goto_7

    :cond_17
    move v5, v11

    .line 66
    :goto_7
    iget-object v14, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v14}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera2/CameraConfigs;->getBinningSrData()Lcom/android/camera2/vendortag/struct/BinningSrData;

    move-result-object v14

    if-eqz v14, :cond_18

    .line 67
    invoke-virtual {v14}, Lcom/android/camera2/vendortag/struct/BinningSrData;->isBinningSrEnabled()Z

    move-result v14

    if-eqz v14, :cond_18

    iget v14, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v14, v10, :cond_18

    iget v14, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    if-ne v2, v14, :cond_18

    iget-object v14, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 68
    invoke-virtual {v14}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_18

    const-string v8, "[SAT] add binning sr surface "

    .line 69
    invoke-static {v12, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSatBinningSRSurface()Landroid/view/Surface;

    move-result-object v8

    :cond_18
    if-nez v8, :cond_19

    .line 71
    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget v14, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v8, v14}, Lcom/android/camera2/MiCamera2;->getMainCaptureSurface(I)Landroid/view/Surface;

    move-result-object v8

    .line 72
    :cond_19
    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v14

    if-eqz v5, :cond_1a

    .line 73
    new-instance v5, Landroid/util/Size;

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x4

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v14

    invoke-direct {v5, v15, v14}, Landroid/util/Size;-><init>(II)V

    .line 74
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v5, v15, v11

    const-string v3, "[SAT]hdr fusion mode, size is: %s"

    invoke-static {v14, v3, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v8

    move-object v8, v5

    move-object/from16 v5, v17

    goto :goto_8

    :cond_1a
    move-object v5, v8

    move-object v8, v14

    .line 75
    :goto_8
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraCapabilities;->isFakeSatV2Supported()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 76
    iget-boolean v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    invoke-static {v1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyRemosaicEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 77
    :cond_1b
    iget v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v3, v9, :cond_1d

    .line 78
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v5

    .line 79
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v3

    goto :goto_9

    .line 80
    :cond_1c
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v3

    iget v5, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v3, v5}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCaptureSurface(I)Landroid/view/Surface;

    move-result-object v5

    .line 81
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v3

    :goto_9
    move-object v8, v3

    .line 82
    :cond_1d
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v14, v2, [Ljava/lang/Object;

    aput-object v5, v14, v11

    aput-object v8, v14, v13

    const-string v15, "[SAT]add main surface %s to capture request, size is: %s"

    invoke-static {v3, v15, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSatPhysicalCameraId()I

    move-result v3

    iput v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMainPhysicalCameraId:I

    .line 84
    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 85
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v3

    if-eq v5, v3, :cond_20

    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 86
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getTiledUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getTiledUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v3

    if-eq v5, v3, :cond_20

    :cond_1e
    iget-boolean v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-eqz v3, :cond_1f

    .line 87
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCaptureSurface(I)Landroid/view/Surface;

    move-result-object v3

    if-ne v5, v3, :cond_1f

    goto :goto_a

    :cond_1f
    const/16 v3, 0x201

    goto :goto_b

    :cond_20
    :goto_a
    move v3, v10

    .line 88
    :goto_b
    iget v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:I

    if-eq v5, v13, :cond_22

    if-ne v5, v2, :cond_21

    goto :goto_c

    .line 89
    :cond_21
    sget-object v5, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_SAT_FUSION_SHOT:Lcom/android/camera2/vendortag/VendorTag;

    .line 90
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    .line 91
    invoke-static {v1, v5, v14}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueQuietly(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    goto :goto_d

    .line 92
    :cond_22
    :goto_c
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v3

    .line 93
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v5

    .line 94
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v15, v2, [Ljava/lang/Object;

    aput-object v3, v15, v11

    aput-object v5, v15, v13

    const-string v5, "[SAT]add ultra tele surface %s to capture request, size is: %s"

    invoke-static {v14, v5, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v5

    iput v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSubPhysicalCameraId:I

    .line 96
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 97
    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_SAT_FUSION_SHOT:Lcom/android/camera2/vendortag/VendorTag;

    .line 98
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 99
    invoke-static {v1, v3, v5}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueQuietly(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    const/16 v3, 0x204

    .line 100
    :goto_d
    iget v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v9, v5, :cond_23

    .line 101
    invoke-virtual {v0, v4, v8, v7, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    .line 102
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    goto :goto_e

    .line 103
    :cond_23
    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    if-eqz v5, :cond_25

    .line 104
    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->isHighPerformanceSessionKeySupported()Z

    move-result v14

    if-eqz v14, :cond_25

    .line 105
    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->isSupportHighQualityPreferred()Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 106
    invoke-virtual {v5}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v5

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v14

    if-ne v5, v14, :cond_25

    .line 107
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v5

    if-nez v5, :cond_25

    iget v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v13, v5, :cond_24

    iget-boolean v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    if-eqz v5, :cond_25

    :cond_24
    const v5, 0xef06

    .line 108
    invoke-virtual {v0, v5, v8, v7, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    goto :goto_e

    .line 109
    :cond_25
    invoke-virtual {v0, v8, v7, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    :goto_e
    move v3, v13

    .line 110
    :goto_f
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v5

    if-nez v5, :cond_27

    iget v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mOperationMode:I

    const v7, 0x9001

    if-eq v5, v7, :cond_27

    .line 111
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo()Z

    move-result v5

    if-nez v5, :cond_26

    sget-boolean v5, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo:Z

    if-nez v5, :cond_26

    iget v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mOperationMode:I

    const v7, 0x9003

    if-eq v5, v7, :cond_27

    .line 112
    :cond_26
    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v5

    .line 113
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v11

    .line 114
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v8

    aput-object v8, v2, v13

    const-string v8, "add preview surface %s to capture request, size is: %s"

    .line 115
    invoke-static {v7, v8, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-nez v2, :cond_27

    .line 117
    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 118
    :cond_27
    :goto_10
    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-nez v2, :cond_29

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->isHighQualityQuickShotEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 119
    invoke-static {v1, v13}, Lcom/android/camera2/compat/MiCameraCompat;->applyHighQualityQuickShot(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 120
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isLimitMfnrNumFramesEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 121
    invoke-static {v1, v13}, Lcom/android/camera2/compat/MiCameraCompat;->applyLimitMfnrNumFrames(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_11

    .line 122
    :cond_28
    invoke-static {v1, v11}, Lcom/android/camera2/compat/MiCameraCompat;->applyLimitMfnrNumFrames(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 123
    :cond_29
    :goto_11
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOo()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 124
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v9, v2, :cond_2b

    if-nez v3, :cond_2b

    .line 125
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v2

    if-nez v2, :cond_2a

    const-string v3, "could not find raw surface for supernight se"

    .line 126
    invoke-static {v12, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_2a
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v3

    const/16 v5, 0x20

    .line 128
    invoke-virtual {v0, v4, v3, v5, v13}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v4

    iput-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    .line 129
    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v4

    iput-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    .line 130
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add raw surface for supernight se, size is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_2b
    if-nez v3, :cond_2c

    .line 132
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000oo0()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 133
    new-instance v2, Landroid/util/Size;

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v4, v3, Lcom/android/camera/CameraSize;->width:I

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v2, v4, v3}, Landroid/util/Size;-><init>(II)V

    const/16 v3, 0x23

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    .line 134
    :cond_2c
    :goto_12
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v9, v2, :cond_2d

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 135
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getRawSurfaceForTuningBuffer()Landroid/view/Surface;

    move-result-object v2

    goto :goto_13

    :cond_2d
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getTuningRemoteSurface()Landroid/view/Surface;

    move-result-object v2

    :goto_13
    if-eqz v2, :cond_2e

    new-array v3, v13, [Ljava/lang/Object;

    .line 136
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v4

    aput-object v4, v3, v11

    const-string v4, "add tuning surface to capture request, size is: %s"

    .line 137
    invoke-static {v12, v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 139
    :cond_2e
    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAnchorFrame:Z

    const/16 v3, 0x12

    if-eqz v2, :cond_31

    .line 140
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v2, v10, :cond_30

    .line 141
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v2, v13, :cond_30

    :cond_2f
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/16 v4, 0x11

    if-eq v2, v4, :cond_30

    if-ne v2, v3, :cond_31

    .line 142
    :cond_30
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v2

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add preview callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackEnabled()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackEnabled()I

    move-result v4

    and-int/2addr v4, v6

    if-eqz v4, :cond_31

    if-eqz v2, :cond_31

    const-string v4, "add preview target"

    .line 145
    invoke-static {v12, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 147
    :cond_31
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 148
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 149
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2, v1, v10}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 150
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v2, v13, :cond_33

    .line 151
    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-eqz v2, :cond_32

    const-string v2, "enable ZSL for HDR"

    .line 152
    invoke-static {v12, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {v1, v13}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto/16 :goto_17

    :cond_32
    const-string v2, "disable ZSL for HDR"

    .line 154
    invoke-static {v12, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {v1, v11}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto/16 :goto_17

    .line 156
    :cond_33
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperMoonMode()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 157
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v2, v10, :cond_35

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oo0Oo()Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_14

    :cond_34
    move v2, v11

    goto :goto_15

    :cond_35
    :goto_14
    move v2, v13

    .line 158
    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_36

    const-string v4, "enable"

    goto :goto_16

    :cond_36
    const-string v4, "disable"

    :goto_16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ZSL for SuperMoonMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {v1, v2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto/16 :goto_17

    .line 160
    :cond_37
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 161
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v4, 0x7

    const-string v5, "enable ZSL for algo "

    if-ne v2, v4, :cond_38

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOOO0()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {v1, v13}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_17

    .line 164
    :cond_38
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v3, v2, :cond_39

    const-string v2, "enable ZSL for pureview algo "

    .line 165
    invoke-static {v12, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {v1, v13}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_17

    :cond_39
    if-ne v2, v10, :cond_3a

    .line 167
    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    if-nez v2, :cond_3a

    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:I

    if-nez v2, :cond_3a

    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    if-nez v2, :cond_3a

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 168
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 169
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoModule()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 170
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oo0Oo()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {v1, v13}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_17

    .line 173
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable ZSL for algo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {v1, v11}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 175
    :cond_3b
    :goto_17
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isFlawDetectEnable()Z

    move-result v2

    .line 176
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlawDetectEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 177
    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-eqz v2, :cond_3e

    .line 178
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->PARALLEL_MASTER_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 179
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MCC_MASTER_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 180
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getParallelMasterCameraId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 181
    invoke-static {v1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyParallelMasterCameraId(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 182
    :cond_3c
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isLLSEnabled()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 183
    invoke-static {v1, v13}, Lcom/android/camera2/compat/MiCameraCompat;->applyLLS(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_18

    .line 184
    :cond_3d
    invoke-static {v1, v11}, Lcom/android/camera2/compat/MiCameraCompat;->applyLLS(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 185
    :cond_3e
    :goto_18
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getShotPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mSavePath:Ljava/lang/String;

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2ShotParallel;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 187
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyParallelImageName(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)V

    .line 188
    :cond_3f
    invoke-direct {v0, v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->removeRtStreamTargetForSrIfNeed(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-object v1
.end method

.method public getShutterTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ShotParallelBurst"

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

    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAnchorFrame:Z

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 13

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    .line 2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare: configs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShotParallelBurst"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare: rawCallbackType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isSuperResolutionEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoSR:Z

    .line 6
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isFakeSatEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    .line 8
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->getHDSRStates()I

    move-result v2

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare: hdrSrStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    const/4 v5, 0x7

    const/16 v6, 0x10

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v6, v4, :cond_0

    const/16 v1, 0x11

    .line 11
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooOOo()[I

    move-result-object v1

    .line 13
    array-length v1, v1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    goto/16 :goto_6

    :cond_0
    const v4, 0x800a

    .line 14
    iget v10, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mOperationMode:I

    const/16 v11, 0x20

    const/16 v12, 0x8

    if-eq v4, v10, :cond_11

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-eq v12, v4, :cond_11

    if-eq v11, v4, :cond_11

    if-ne v6, v4, :cond_1

    goto/16 :goto_4

    .line 15
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isDualBokehEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    .line 17
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getHDRStatus()Lcom/android/camera2/Camera2Proxy$HDRStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isSuperResolutionHDR()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v2, v0, :cond_2

    const-string v1, "prepare: HdrSR"

    .line 18
    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iput v8, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 20
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    .line 21
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareSR(Z)V

    goto/16 :goto_6

    .line 22
    :cond_2
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 23
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareHdr()V

    goto/16 :goto_6

    .line 24
    :cond_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0O0o0()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 25
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isDualBokehEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v1, 0x9

    .line 26
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 27
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareLowLightBokeh()V

    goto/16 :goto_6

    .line 28
    :cond_4
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isDedicatedMotionAlgoEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x12

    .line 29
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 30
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->preparePurePreview()V

    goto/16 :goto_6

    .line 31
    :cond_5
    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoSR:Z

    if-eqz v1, :cond_6

    .line 32
    iput v8, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 33
    invoke-direct {p0, v9}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareSR(Z)V

    goto/16 :goto_6

    .line 34
    :cond_6
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    .line 35
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 36
    :goto_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isMfnrEnabled()Z

    move-result v2

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepare: iso = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isHwMFNREnabled = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOO()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00o00()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x320

    if-lt v4, v6, :cond_9

    move v4, v0

    goto :goto_1

    :cond_9
    move v4, v9

    :goto_1
    iput-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    goto :goto_3

    .line 40
    :cond_a
    :goto_2
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    .line 41
    :goto_3
    iget-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    if-eqz v4, :cond_10

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperMoonMode()Z

    move-result v4

    if-eqz v4, :cond_b

    if-nez v2, :cond_10

    .line 42
    :cond_b
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOo()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 43
    iput v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareClearShot(I)V

    goto :goto_6

    .line 45
    :cond_c
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOO()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_e

    .line 46
    :cond_d
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00o00()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 47
    :cond_e
    iput v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 48
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareHHT()V

    goto :goto_6

    .line 49
    :cond_f
    iput v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 50
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareClearShot(I)V

    goto :goto_6

    .line 51
    :cond_10
    iput v9, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 52
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    .line 53
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    goto :goto_6

    .line 54
    :cond_11
    :goto_4
    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v12, v1, :cond_12

    const/16 v1, 0xc

    .line 55
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    goto :goto_5

    :cond_12
    if-ne v11, v1, :cond_13

    const/16 v1, 0xf

    .line 56
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    goto :goto_5

    :cond_13
    const/16 v1, 0xa

    .line 57
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 58
    :goto_5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareSuperNight()V

    .line 59
    :goto_6
    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v1, v8, :cond_14

    .line 60
    iput v9, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:I

    .line 61
    :cond_14
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->doAnchorFrameAsThumbnail()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAnchorFrame:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNeedDoAnchorFrame:Z

    .line 63
    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {p0, v1}, Lcom/android/camera2/MiCamera2ShotParallel;->getSoundTimeWhenAnchor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSoundTime:I

    .line 64
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v9

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v7

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoSR:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v8

    const/4 v0, 0x4

    iget-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAnchorFrame:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x5

    iget-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x6

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSoundTime:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v0, "prepare: algo=%d captureNum=%d doMFNR=%b doSR=%b anchor=%b mUseParallelVtCam=%b soundTime=%d"

    .line 66
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startSessionCapture()V
    .locals 11

    const-string v0, "ShotParallelBurst"

    const/16 v1, 0x100

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startSessionCapture mSequenceNum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 5
    :goto_0
    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-ge v5, v6, :cond_d

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_a

    .line 7
    iget-boolean v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    if-eqz v6, :cond_0

    .line 8
    invoke-static {v3, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 9
    :cond_0
    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v6

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v8

    if-ne v6, v8, :cond_1

    .line 10
    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v6, v3}, Lcom/android/camera2/compat/MiCameraCompat;->copyFpcDataFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isInMultiSurfaceSatMode()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_2

    .line 12
    :cond_2
    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v6

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v8

    if-eq v6, v8, :cond_3

    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_a

    .line 13
    :cond_3
    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result v6

    iget-object v8, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-static {v6, v8}, Lcom/android/camera/HybridZoomingSystem;->toCropRegion(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 14
    iget-object v8, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraCapabilities;->isZoomRatioSupported()Z

    move-result v8

    if-eqz v8, :cond_5

    const/high16 v8, 0x3f800000    # 1.0f

    .line 15
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v9

    invoke-virtual {v9}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOOo()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 16
    invoke-virtual {v9}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v9

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v10

    if-ne v9, v10, :cond_4

    .line 17
    iget-object v8, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result v8

    .line 18
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isZoomRatioSupported, uw/sr set zoomRatio = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {v3, v8}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;F)V

    goto :goto_1

    .line 20
    :cond_5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v8

    invoke-virtual {v8}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOOo()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 21
    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v8

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v9

    if-ne v8, v9, :cond_6

    .line 22
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "supportMtkCropRegion: uw/sr set crop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v8, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 24
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uw/sr set crop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v9, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v3, v8, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 26
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uw/sr set mtkCrop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {v3, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyPostProcessCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    goto :goto_4

    .line 28
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v8, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MI_STATISTICS_FACE_RECTANGLES:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v6, v8}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/graphics/Rect;

    if-eqz v6, :cond_8

    const-string v8, "set mtk face"

    .line 29
    invoke-static {v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {v3, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyFaceRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_8
    const-string v6, "get mtk face = null"

    .line 31
    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :goto_3
    invoke-static {v3, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyNotificationTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 33
    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v8, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->POST_PROCESS_CROP_REGION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v6, v8}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    if-eqz v6, :cond_9

    .line 34
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sat set mtkCrop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {v3, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyPostProcessCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_9
    const-string v6, "sat get mtkCrop = null"

    .line 36
    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_a
    :goto_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v6

    invoke-virtual {v6}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0000o()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 38
    invoke-static {v3, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyAlgoUpEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 39
    :cond_b
    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0, v3, v5, v6}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    .line 40
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v6

    invoke-virtual {v6}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0000o()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 42
    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 43
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v6

    .line 44
    invoke-static {v6, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyAlgoUpEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 45
    iget v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0, v6, v5, v7}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    .line 46
    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 47
    :cond_d
    iget-object v5, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v5

    .line 48
    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    if-nez v6, :cond_e

    .line 49
    new-instance v6, Lcom/xiaomi/engine/BufferFormat;

    iget-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v7, v7, Lcom/android/camera/CameraSize;->width:I

    iget-object v8, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v8, v8, Lcom/android/camera/CameraSize;->height:I

    const/16 v9, 0x23

    invoke-direct {v6, v7, v8, v9}, Lcom/xiaomi/engine/BufferFormat;-><init>(III)V

    .line 50
    :cond_e
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v5}, Lcom/android/camera2/MiCamera2ShotParallel;->generatePreProcessData(Landroid/hardware/camera2/CaptureRequest;Lcom/xiaomi/engine/BufferFormat;I)Lcom/xiaomi/engine/PreProcessData;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 51
    invoke-virtual {p0, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->preCapture(Lcom/xiaomi/engine/PreProcessData;)V

    :cond_f
    const/4 v3, 0x4

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startSessionCapture request number:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v0, v5}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    const-string v5, "algo_prepare_capture"

    invoke-virtual {v3, v5}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 54
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    const-string v5, "algo_device_capture"

    invoke-virtual {v3, v5}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    const-string v5, "shot_prepare_capture"

    invoke-virtual {v3, v5}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 56
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    const-string v5, "shot_device_capture"

    invoke-virtual {v3, v5}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 57
    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "_"

    if-eqz v3, :cond_10

    .line 58
    :try_start_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v6}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v2

    .line 59
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

    goto :goto_5

    .line 60
    :cond_10
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v6}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v2

    .line 61
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

    .line 62
    :goto_5
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {v2, v3}, Lcom/android/camera/MemoryHelper;->addCapturedNumber(II)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    const-string v3, "Failed to captureBurst, IllegalArgument"

    .line 63
    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_6

    :catch_1
    move-exception v2

    const-string v3, "Failed to captureBurst, IllegalState"

    .line 65
    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_6

    :catch_2
    move-exception v1

    const-string v2, "Failed to captureBurst, CameraAccessException"

    .line 67
    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_6
    return-void
.end method
