.class public Lcom/android/camera2/vendortag/struct/MiviSuperNightData;
.super Ljava/lang/Object;
.source "MiviSuperNightData.java"


# static fields
.field public static final SUPER_NIGHT_TRIGGER_MODE_OWL:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MiviSuperNightData"


# instance fields
.field public mCaptureDurationForNightMode:I

.field public mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

.field public mCurMasterCameraId:I

.field public mCurMode:I

.field public mFeatureMask:I

.field public mIsFront:Z

.field public mLlsNeeded:Z

.field public mNightCaptureInProgress:Z

.field public mSuperNightEvValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

.field public mTriggerMode:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureResult;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mIsFront:Z

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->isLLSNeeded(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mLlsNeeded:Z

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getSatMasterCameraId(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCurMasterCameraId:I

    iput p2, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mFeatureMask:I

    iput p3, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCurMode:I

    const-string p2, "MiviSuperNightData"

    const/16 v0, 0xad

    if-ne p3, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightModeSupported()Z

    move-result p3

    if-nez p3, :cond_2

    sget-object p3, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_ELLC_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mTriggerMode:I

    :cond_0
    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->parseCaptureExpTimes(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isSuperNightOwlDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getSuperNightProCaptureTime()I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getSuperNightSECaptureTime()I

    move-result p3

    :goto_0
    const/16 v0, 0x3e8

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureDurationForNightMode:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCaptureDurationForNightMode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureDurationForNightMode:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->parseCaptureExpTimes(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getNightTriggerMode()I

    move-result p3

    iput p3, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mTriggerMode:I

    :cond_3
    :goto_1
    iget-object p3, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-nez p3, :cond_4

    const-string p3, "MiviSuperNightData : Capture Exp Times is null !"

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getSuperNightCheckerEv(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object p1

    const-string p3, "camera.debug.superlowlight"

    invoke-static {p3}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p1, :cond_5

    const-string v0, "MiviSuperNightData : halSuperNightValues is null !"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-boolean p2, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mIsFront:Z

    invoke-static {p1, p3, p2}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->parseSuperNightEvValue([BLjava/lang/String;Z)Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mSuperNightEvValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    return-void
.end method

.method public static parseResult(Landroid/hardware/camera2/CaptureResult;II)Lcom/android/camera2/vendortag/struct/MiviSuperNightData;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;-><init>(Landroid/hardware/camera2/CaptureResult;II)V

    return-object v0
.end method


# virtual methods
.method public getCaptureDurationForNightMode()I
    .locals 1

    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureDurationForNightMode:I

    return v0
.end method

.method public getCaptureExpTime()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v0

    return v0
.end method

.method public getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    return-object v0
.end method

.method public getNightCaptureAnimDuration()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSuperNightEvValue()Lcom/android/camera2/vendortag/struct/SuperNightEvValue;
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mSuperNightEvValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    return-object v0
.end method

.method public isCaptureDurationAvailableForNightMode()Z
    .locals 2

    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureDurationForNightMode:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMiviBokehSuperNightSupported()Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mFeatureMask:I

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilities;->isMiviBokehSuperNightSupported(I)Z

    move-result v0

    return v0
.end method

.method public isMiviNightCaptureInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mNightCaptureInProgress:Z

    return v0
.end method

.method public isMiviNightModeSupported()Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mFeatureMask:I

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilities;->isMiviNightModeSupported(I)Z

    move-result v0

    return v0
.end method

.method public isMiviNightSeSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMiviSatSuperNightSupported()Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mFeatureMask:I

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilities;->isMiviSatSuperNightSupported(I)Z

    move-result v0

    return v0
.end method

.method public isNightCaptureAnimEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviSatSuperNightSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x3e8

    goto :goto_0

    :cond_0
    const/16 v2, 0x190

    :goto_0
    if-le v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isNightPreviewAnimEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviSatSuperNightSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviSatSuperNightSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3e8

    goto :goto_0

    :cond_1
    const/16 v2, 0x190

    :goto_0
    if-le v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isSuperNightOwlDetected()Z
    .locals 2

    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mTriggerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setNightCaptureInProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mNightCaptureInProgress:Z

    return-void
.end method
