.class public Lcom/android/camera2/MiCamera2ShotBurst;
.super Lcom/android/camera2/MiCamera2Shot;
.source "MiCamera2ShotBurst.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2Shot<",
        "[B>;"
    }
.end annotation


# static fields
.field public static final INVALID_SEQUENCE_ID:I = -0x1

.field public static final TAG:Ljava/lang/String; = "MiCamera2ShotBurst"


# instance fields
.field public isFirstRequest:Z

.field public mCaptureRequestNum:I

.field public mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

.field public mCurrentSequenceId:I

.field public mLatestSequenceId:I

.field public mMaxCapturedNum:I

.field public mNeedPausePreview:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2Shot;-><init>(Lcom/android/camera2/MiCamera2;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mLatestSequenceId:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotBurst;->isFirstRequest:Z

    .line 4
    iput p2, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mMaxCapturedNum:I

    .line 5
    iput-boolean p3, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mNeedPausePreview:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera2/MiCamera2ShotBurst;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotBurst;->onRepeatingEnd(ZI)V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2ShotBurst;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/android/camera2/MiCamera2ShotBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mLatestSequenceId:I

    return p0
.end method

.method public static synthetic access$202(Lcom/android/camera2/MiCamera2ShotBurst;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mLatestSequenceId:I

    return p1
.end method

.method public static synthetic access$302(Lcom/android/camera2/MiCamera2ShotBurst;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/camera2/MiCamera2ShotBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mMaxCapturedNum:I

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera2/MiCamera2ShotBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mCurrentSequenceId:I

    return p0
.end method

.method private notifyResultData([BLandroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/android/camera2/MiCamera2ShotBurst;->TAG:Ljava/lang/String;

    const-string p2, "notifyResultData: null picture callback"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onRepeatingEnd(ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2;->setAWBLock(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    const/4 v0, -0x1

    if-eq v0, p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    .line 4
    invoke-interface {p2, p1, v0, v1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(ZJ)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p2, Lcom/android/camera2/MiCamera2ShotBurst;->TAG:Ljava/lang/String;

    const-string v0, "onRepeatingEnd: null picture callback"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2, p1, p0}, Lcom/android/camera2/MiCamera2;->onMultiSnapEnd(ZLcom/android/camera2/MiCamera2Shot;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/MiCamera2ShotBurst$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotBurst$1;-><init>(Lcom/android/camera2/MiCamera2ShotBurst;)V

    return-object v0
.end method

.method public generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4
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

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OooOO()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mMaxCapturedNum:I

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 5
    invoke-static {v0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyCShotFeatureCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 6
    invoke-static {v0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyNotificationTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 8
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 9
    sget-object v1, Lcom/android/camera2/MiCamera2ShotBurst;->TAG:Ljava/lang/String;

    const-string v3, "applyPanoramaP2SEnabled true"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {v0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyPanoramaP2SEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 12
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPhotoImageReader()Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 14
    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mNeedPausePreview:Z

    if-nez v1, :cond_3

    .line 15
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v3}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 17
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isSupportBurstHint()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    invoke-static {v0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyBurstHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_5
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2ShotBurst;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic notifyResultData(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotBurst;->notifyResultData([B)V

    return-void
.end method

.method public notifyResultData([B)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2ShotBurst;->notifyResultData([BLandroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onImageReceived(Landroid/media/Image;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-interface {p2, p1, v0}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenImageConsumed(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/android/camera/Util;->getFirstPlane(Landroid/media/Image;)[B

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {p0, p2, p1}, Lcom/android/camera2/MiCamera2ShotBurst;->notifyResultData([BLandroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public prepare()V
    .locals 0

    return-void
.end method

.method public startSessionCapture()V
    .locals 9

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OooOO()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mMaxCapturedNum:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mCaptureRequestNum:I

    if-lt v1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2ShotBurst;->TAG:Ljava/lang/String;

    const-string v1, "startSessionCapture"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->pausePreview()V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotBurst;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotBurst;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OooOO()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mMaxCapturedNum:I

    if-lez v2, :cond_4

    .line 7
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotBurst;->isFirstRequest:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    const/4 v4, 0x0

    .line 8
    iput-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotBurst;->isFirstRequest:Z

    :goto_1
    if-ge v4, v2, :cond_5

    .line 9
    iget-object v5, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v0, v7}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v5

    .line 10
    iget v6, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mCaptureRequestNum:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mCaptureRequestNum:I

    .line 11
    iput v5, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mCurrentSequenceId:I

    .line 12
    iget v7, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mMaxCapturedNum:I

    if-ne v6, v7, :cond_3

    .line 13
    iput v5, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mLatestSequenceId:I

    .line 14
    sget-object v6, Lcom/android/camera2/MiCamera2ShotBurst;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mtk cshot repeating latestSequenceId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mLatestSequenceId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_3
    sget-object v6, Lcom/android/camera2/MiCamera2ShotBurst;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mtk cshot repeating sequenceId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " captureRequestNum="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mCaptureRequestNum:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 16
    :cond_4
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v0, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mLatestSequenceId:I

    .line 17
    sget-object v0, Lcom/android/camera2/MiCamera2ShotBurst;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "repeating sequenceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotBurst;->mLatestSequenceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 18
    sget-object v1, Lcom/android/camera2/MiCamera2ShotBurst;->TAG:Ljava/lang/String;

    const-string v2, "Failed to capture burst, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 20
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 21
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :cond_5
    :goto_2
    return-void
.end method
