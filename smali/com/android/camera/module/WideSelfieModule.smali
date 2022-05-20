.class public Lcom/android/camera/module/WideSelfieModule;
.super Lcom/android/camera/module/BaseModule;
.source "WideSelfieModule.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$CameraAction;
.implements Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;
.implements Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;
.implements Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;,
        Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;,
        Lcom/android/camera/module/WideSelfieModule$MainHandler;
    }
.end annotation


# static fields
.field public static final MIN_SHOOTING_TIME:I = 0x258

.field public static final STOP_ROTATION_THRESHOLD:I = 0x3c

.field public static final TAG:Ljava/lang/String; = "WideSelfieModule"


# instance fields
.field public final MAX_PICTURE_PIXEL:I

.field public MOVE_DISTANCE:I

.field public MOVE_DISTANCE_VERTICAL:I

.field public OFFSET_VERTICAL_X_STOP_CAPTURE_THRESHOLD:I

.field public OFFSET_X_HINT_THRESHOLD:I

.field public OFFSET_X_STOP_CAPTURE_THRESHOLD:I

.field public OFFSET_Y_HINT_THRESHOLD:I

.field public OFFSET_Y_STOP_CAPTURE_THRESHOLD:I

.field public mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field public mCaptureOrientation:I

.field public mFaceDetectionEnabled:Z

.field public mFaceDetectionStarted:Z

.field public mFileNameTemplate:Ljava/lang/String;

.field public mFirstFrameNv21Data:[B

.field public mIsContinuousVibratoring:Z

.field public volatile mIsPrepareSaveTask:Z

.field public volatile mIsShooting:Z

.field public mJpegRotation:I

.field public mLastMoveDirection:I

.field public mLastVibratorProgress:I

.field public mMaxMoveWidth:I

.field public mMetaDataDisposable:Lio/reactivex/disposables/Disposable;

.field public mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field public mSaveOutputImageTask:Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;

.field public mSensorOrientation:I

.field public mShootingStartTime:J

.field public mShowWarningToast:Z

.field public mStillPreviewWidth:I

.field public mStopCaptureMode:Ljava/lang/String;

.field public mStopedForRotation:Z

.field public mTargetFocusMode:I

.field public mToastOffsetY:I

.field public mWideSelfEngine:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsPrepareSaveTask:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mStopedForRotation:Z

    const/4 v1, 0x4

    .line 5
    iput v1, p0, Lcom/android/camera/module/WideSelfieModule;->mTargetFocusMode:I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/android/camera/module/WideSelfieModule;->mCaptureOrientation:I

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsContinuousVibratoring:Z

    .line 8
    iput v1, p0, Lcom/android/camera/module/WideSelfieModule;->mLastMoveDirection:I

    const v0, 0x5b8d80

    .line 9
    iput v0, p0, Lcom/android/camera/module/WideSelfieModule;->MAX_PICTURE_PIXEL:I

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/camera/module/WideSelfieModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->initPreviewLayout()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/module/WideSelfieModule;)Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/module/WideSelfieModule;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/WideSelfieModule;->handleUpdateFaceView(ZZ)V

    return-void
.end method

.method public static synthetic access$402(Lcom/android/camera/module/WideSelfieModule;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/WideSelfieModule;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/android/camera/module/WideSelfieModule;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/WideSelfieModule;->mFirstFrameNv21Data:[B

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/camera/module/WideSelfieModule;[B)[B
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/WideSelfieModule;->mFirstFrameNv21Data:[B

    return-object p1
.end method

.method public static synthetic access$600(Lcom/android/camera/module/WideSelfieModule;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/WideSelfieModule;->mShowWarningToast:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/module/WideSelfieModule;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/WideSelfieModule;->mToastOffsetY:I

    return p0
.end method

.method public static synthetic access$800(Lcom/android/camera/module/WideSelfieModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->onSaveFinish()V

    return-void
.end method

.method private doLaterReleaseIfNeed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pauseIfNotRecording()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/Camera;->releaseAll(ZZ)V

    :cond_1
    return-void
.end method

.method private handleUpdateFaceView(ZZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v3

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p2, p0, Lcom/android/camera/module/WideSelfieModule;->mFaceDetectionStarted:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getFocusMode()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x1

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->updateFaceView(ZZZZI)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->updateFaceView(ZZZZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initMetaParser()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/module/WideSelfieModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/WideSelfieModule$2;-><init>(Lcom/android/camera/module/WideSelfieModule;)V

    sget-object v1, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    .line 2
    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/loader/FunctionFaceDetect;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/loader/FunctionFaceDetect;-><init>(Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/reactivex/Flowable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mMetaDataDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initPreviewLayout()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v2, v1, Lcom/android/camera/CameraSize;->width:I

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setPreviewSize(II)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getWidth()I

    move-result v1

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getHeight()I

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070829

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v1, v2

    .line 7
    div-int/2addr v1, v0

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xd8

    .line 9
    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;

    if-eqz v0, :cond_1

    .line 10
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v4, v3, Lcom/android/camera/CameraSize;->width:I

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->initPreviewLayout(IIII)V

    .line 11
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->resetShootUI()V

    :cond_1
    return-void
.end method

.method private isProcessingSaveTask()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mSaveOutputImageTask:Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isShootingTooShort()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/WideSelfieModule;->mShootingStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onSaveFinish()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSaveFinish E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mAeLockSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v1, p0, Lcom/android/camera/module/WideSelfieModule;->mTargetFocusMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->startPreview()V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    .line 12
    :cond_3
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSaveFinish X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private setupCaptureParams()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x6

    .line 2
    sget-object v1, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string v2, "camera device is not ready"

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lcom/android/camera/module/WideSelfieModule;->mTargetFocusMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setZoomRatio(F)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFlashMode(I)V

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera2/Camera2Proxy;->setAntiBanding(I)V

    .line 8
    sget-object v2, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "antiBanding="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->isZslPreferred()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setEnableZsl(Z)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setHHT(Z)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setTimeWaterMarkEnable(Z)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFaceWaterMarkEnable(Z)V

    return-void
.end method

.method private startSaveTask([BIII)V
    .locals 19

    move-object/from16 v1, p0

    .line 1
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSaveTask stitchResult "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/WideSelfieModule;->keepScreenOnAwhile()V

    .line 3
    iget-object v2, v1, Lcom/android/camera/module/BaseModule;->mDeviceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v1, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->captureAbortBurst()V

    .line 6
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-boolean v0, v1, Lcom/android/camera/module/WideSelfieModule;->mShowWarningToast:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 8
    iget-object v3, v1, Lcom/android/camera/module/WideSelfieModule;->mFirstFrameNv21Data:[B

    .line 9
    iget-object v4, v1, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    iget v5, v4, Lcom/android/camera/CameraSize;->width:I

    .line 10
    iget v4, v4, Lcom/android/camera/CameraSize;->height:I

    move v12, v0

    move-object v9, v3

    move v11, v4

    move v10, v5

    goto :goto_0

    :cond_1
    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move v12, v2

    .line 11
    :goto_0
    iget-object v0, v1, Lcom/android/camera/module/WideSelfieModule;->mFileNameTemplate:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 12
    new-instance v0, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;

    iget-object v7, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v13, v1, Lcom/android/camera/module/WideSelfieModule;->mJpegRotation:I

    iget v14, v1, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    iget v15, v1, Lcom/android/camera/module/BaseModule;->mTriggerMode:I

    iget-object v3, v1, Lcom/android/camera/module/WideSelfieModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    iget-object v4, v1, Lcom/android/camera/module/WideSelfieModule;->mStopCaptureMode:Ljava/lang/String;

    new-instance v5, Lcom/android/camera/module/WideSelfieModule$4;

    invoke-direct {v5, v1}, Lcom/android/camera/module/WideSelfieModule$4;-><init>(Lcom/android/camera/module/WideSelfieModule;)V

    move-object v6, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-direct/range {v6 .. v18}, Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;-><init>(Lcom/android/camera/Camera;Ljava/lang/String;[BIIZIIILcom/android/camera/fragment/beauty/BeautyValues;Ljava/lang/String;Lcom/android/camera/module/WideSelfieModule$SaveStateCallback;)V

    iput-object v0, v1, Lcom/android/camera/module/WideSelfieModule;->mSaveOutputImageTask:Lcom/android/camera/module/WideSelfieModule$SaveOutputImageTask;

    new-array v3, v2, [Ljava/lang/Void;

    .line 13
    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
    iput-boolean v2, v1, Lcom/android/camera/module/WideSelfieModule;->mIsPrepareSaveTask:Z

    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private stopWideSelfieShooting(ZZLjava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "stopWideSelfieShooting return, is not shooting"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 3
    sget-object v1, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopWideSelfieShooting"

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-virtual {v0}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->stopCapture()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsPrepareSaveTask:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    .line 7
    iput-boolean p2, p0, Lcom/android/camera/module/WideSelfieModule;->mShowWarningToast:Z

    .line 8
    iput-object p3, p0, Lcom/android/camera/module/WideSelfieModule;->mStopCaptureMode:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/VibratorUtils;->getInstance(Landroid/content/Context;)Lcom/android/camera/VibratorUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/VibratorUtils;->vibrate()V

    :cond_2
    const/4 p1, 0x3

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->stopCapture()Z

    return-void
.end method

.method private updateBeauty()V
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOO()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->initBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;I)V

    .line 5
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBeauty(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/WideSelfieModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/WideSelfieModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    return-void
.end method

.method private updateFaceView(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/16 v1, 0x23

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(I)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000o0O()I

    move-result v1

    .line 4
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    const/16 v3, 0xb0

    invoke-static {v0, v1, v3, v2}, Lcom/android/camera/PictureSizeManager;->initialize(Ljava/util/List;III)V

    .line 5
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 6
    sget-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoO:Z

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Lcom/android/camera/CameraSize;

    iget v2, v0, Lcom/android/camera/CameraSize;->width:I

    div-int/lit8 v2, v2, 0x2

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v2, v0}, Lcom/android/camera/CameraSize;-><init>(II)V

    move-object v0, v1

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const-class v2, Landroid/graphics/SurfaceTexture;

    .line 9
    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 10
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    iget v4, v0, Lcom/android/camera/CameraSize;->width:I

    iget v5, v0, Lcom/android/camera/CameraSize;->height:I

    .line 11
    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v4

    float-to-double v4, v4

    .line 12
    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/camera/Util;->getOptimalPreviewSize(ZILjava/util/List;D)Lcom/android/camera/CameraSize;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 13
    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    const/4 v1, 0x4

    .line 14
    sget-object v2, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pictureSize= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " previewSize="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v0, v0, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v1, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    return-void
.end method


# virtual methods
.method public closeCamera()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/reactivex/Emitter;->onComplete()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mMetaDataDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/camera2/Camera2Proxy;->stopPreviewCallback(Z)V

    .line 11
    iput-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 12
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera: end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public varargs consumePreference([I)V
    .locals 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_b

    aget v2, p1, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    const/4 v3, 0x5

    if-eq v2, v3, :cond_8

    const/16 v3, 0xa

    if-eq v2, v3, :cond_7

    const/16 v3, 0xd

    if-eq v2, v3, :cond_6

    const/16 v3, 0x20

    if-eq v2, v3, :cond_5

    const/16 v3, 0x37

    if-eq v2, v3, :cond_4

    const/16 v3, 0x42

    if-eq v2, v3, :cond_3

    const/16 v3, 0x18

    if-eq v2, v3, :cond_2

    const/16 v3, 0x19

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_a

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_a

    .line 2
    sget-boolean v3, Lcom/android/camera/module/BaseModule;->DEBUG:Z

    const-string v4, "no consumer for this updateType: "

    if-nez v3, :cond_0

    .line 3
    sget-object v3, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->focusCenter()V

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->applyZoomRatio()V

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateThermalLevel()V

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateModuleRelated()V

    goto :goto_1

    .line 9
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->setupCaptureParams()V

    goto :goto_1

    .line 10
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->updateBeauty()V

    goto :goto_1

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->updateFlashPreference()V

    goto :goto_1

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->updateFace()V

    goto :goto_1

    .line 13
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->updatePictureAndPreviewSize()V

    :cond_a
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public enableFaceDetection()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string/jumbo v2, "pref_camera_facedetection_key"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDoingAction()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->isProcessingSaveTask()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsPrepareSaveTask:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFaceDetectStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mFaceDetectionStarted:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsPrepareSaveTask:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isUnIncorruptible()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mUnInterruptableReason:Ljava/lang/String;

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "shooting"

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mUnInterruptableReason:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mUnInterruptableReason:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUseFaceInfo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZslPreferred()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public keepScreenOn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public keepScreenOnAwhile()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    const-wide/16 v2, 0x3e8

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onActionStop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    :cond_0
    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    const/4 v0, 0x0

    const-string/jumbo v1, "stop_capture_on_home_or_back"

    .line 6
    invoke-direct {p0, v0, v0, v1}, Lcom/android/camera/module/WideSelfieModule;->stopWideSelfieShooting(ZZLjava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->doLaterReleaseIfNeed()V

    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->isProcessingSaveTask()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    const/4 v0, 0x0

    const-string/jumbo v2, "stop_capture_on_home_or_back"

    .line 4
    invoke-direct {p0, v1, v0, v2}, Lcom/android/camera/module/WideSelfieModule;->stopWideSelfieShooting(ZZLjava/lang/String;)V

    :cond_0
    return v1

    .line 5
    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCameraOpened()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onCameraOpened()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    .line 3
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->WIDESELFIE_TYPES_INIT:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->startPreviewSession()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->initMetaParser()V

    .line 7
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string v1, "SetupCameraThread done"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 2
    new-instance p1, Lcom/android/camera/module/WideSelfieModule$MainHandler;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/camera/module/WideSelfieModule$MainHandler;-><init>(Lcom/android/camera/module/WideSelfieModule;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getInstance(Landroid/content/Context;)Lcom/android/camera/wideselfie/WideSelfieConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getStillPreviewWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/WideSelfieModule;->mStillPreviewWidth:I

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_X_HINT_THRESHOLD:I

    .line 5
    div-int/lit8 p2, p1, 0x4

    iput p2, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_Y_HINT_THRESHOLD:I

    .line 6
    div-int/lit8 p2, p1, 0x3

    iput p2, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_X_STOP_CAPTURE_THRESHOLD:I

    .line 7
    div-int/lit8 p1, p1, 0x5

    const/16 p2, 0x24

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_VERTICAL_X_STOP_CAPTURE_THRESHOLD:I

    .line 8
    iget p1, p0, Lcom/android/camera/module/WideSelfieModule;->mStillPreviewWidth:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_Y_STOP_CAPTURE_THRESHOLD:I

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07082f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/WideSelfieModule;->mToastOffsetY:I

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getInstance(Landroid/content/Context;)Lcom/android/camera/wideselfie/WideSelfieConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbBgWidth()I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 11
    invoke-static {p2}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getInstance(Landroid/content/Context;)Lcom/android/camera/wideselfie/WideSelfieConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getStillPreviewWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/module/WideSelfieModule;->MOVE_DISTANCE:I

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getInstance(Landroid/content/Context;)Lcom/android/camera/wideselfie/WideSelfieConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getThumbBgHeightVertical()I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 13
    invoke-static {p2}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getInstance(Landroid/content/Context;)Lcom/android/camera/wideselfie/WideSelfieConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/wideselfie/WideSelfieConfig;->getStillPreviewHeight()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/module/WideSelfieModule;->MOVE_DISTANCE_VERTICAL:I

    .line 14
    sget-object p1, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MOVE_DISTANCE "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/WideSelfieModule;->MOVE_DISTANCE:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", MOVE_DISTANCE_VERTICAL =  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/WideSelfieModule;->MOVE_DISTANCE_VERTICAL:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getSensorOrientation()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/WideSelfieModule;->mSensorOrientation:I

    .line 16
    new-instance p1, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/android/camera/module/WideSelfieModule;->mSensorOrientation:I

    invoke-direct {p1, p2, v0, p0}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;-><init>(Landroid/content/Context;ILcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;)V

    iput-object p1, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    .line 17
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    sget p2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->onCameraOpened()V

    .line 19
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const p2, 0x7f1205c1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/WideSelfieModule;->mFileNameTemplate:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-virtual {v0}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->onDestroy()V

    return-void
.end method

.method public onFaceDetected([Lcom/android/camera2/CameraHardwareFace;Lcom/android/camera/effect/FaceAnalyzeInfo;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->isRecording()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000()Z

    move-result p2

    if-eqz p2, :cond_3

    array-length p2, p1

    if-lez p2, :cond_3

    const/4 p2, 0x0

    aget-object p2, p1, p2

    iget p2, p2, Lcom/android/camera2/CameraHardwareFace;->faceType:I

    const v0, 0xface

    if-ne p2, v0, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v1

    .line 6
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFaces(I[Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_4
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_7

    const/16 v0, 0x42

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2bc

    if-eq p1, v0, :cond_6

    const/16 v0, 0x57

    const/16 v3, 0x58

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 3
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_a

    const/16 p1, 0x32

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/module/WideSelfieModule;->onShutterButtonClick(I)V

    return v1

    :cond_2
    :pswitch_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    if-ne p1, v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    .line 5
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->isExternal()Z

    move-result v2

    .line 7
    :cond_5
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZIZ)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 8
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "stop_capture_on_home_or_back"

    .line 9
    invoke-direct {p0, v2, v2, v0}, Lcom/android/camera/module/WideSelfieModule;->stopWideSelfieShooting(ZZLjava/lang/String;)V

    goto :goto_3

    .line 10
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 11
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    const v0, 0x7f1207c6

    if-eqz p1, :cond_8

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFingerprintCaptureEnable()Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x1e

    .line 13
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    .line 15
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/WideSelfieModule;->performKeyClicked(ILjava/lang/String;IZ)V

    goto :goto_2

    :cond_8
    const/16 p1, 0x28

    .line 16
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    .line 18
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/WideSelfieModule;->performKeyClicked(ILjava/lang/String;IZ)V

    :cond_9
    :goto_2
    return v1

    .line 19
    :cond_a
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 2
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xab

    .line 3
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromKeyBack()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMove(IILandroid/graphics/Point;Landroid/graphics/Point;Z)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd8

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/VibratorUtils;->getInstance(Landroid/content/Context;)Lcom/android/camera/VibratorUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/VibratorUtils;->cancel()V

    return-void

    .line 4
    :cond_0
    iget v1, p3, Landroid/graphics/Point;->x:I

    .line 5
    iget p3, p3, Landroid/graphics/Point;->y:I

    .line 6
    iget v2, p0, Lcom/android/camera/module/WideSelfieModule;->mJpegRotation:I

    rem-int/lit16 v2, v2, 0xb4

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_X_STOP_CAPTURE_THRESHOLD:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_VERTICAL_X_STOP_CAPTURE_THRESHOLD:I

    .line 7
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_Y_STOP_CAPTURE_THRESHOLD:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lt v4, v5, :cond_2

    move v4, v7

    goto :goto_1

    :cond_2
    move v4, v6

    .line 8
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v2, :cond_3

    move v1, v7

    goto :goto_2

    :cond_3
    move v1, v6

    :goto_2
    if-nez p5, :cond_19

    if-nez v1, :cond_19

    if-eqz v4, :cond_4

    goto/16 :goto_b

    .line 9
    :cond_4
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p5

    iget v1, p0, Lcom/android/camera/module/WideSelfieModule;->OFFSET_Y_HINT_THRESHOLD:I

    if-lt p5, v1, :cond_5

    move p5, v7

    goto :goto_3

    :cond_5
    move p5, v6

    :goto_3
    if-eqz p5, :cond_9

    if-gez p3, :cond_6

    const p1, 0x7f1209f9

    goto :goto_4

    :cond_6
    const p1, 0x7f1209f8

    :goto_4
    if-eqz p1, :cond_8

    .line 10
    iget-boolean p2, p0, Lcom/android/camera/module/WideSelfieModule;->mIsContinuousVibratoring:Z

    if-nez p2, :cond_7

    .line 11
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p2}, Lcom/android/camera/VibratorUtils;->getInstance(Landroid/content/Context;)Lcom/android/camera/VibratorUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/VibratorUtils;->vibrate()V

    .line 12
    iput-boolean v7, p0, Lcom/android/camera/module/WideSelfieModule;->mIsContinuousVibratoring:Z

    .line 13
    :cond_7
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->updateHintText(I)V

    :cond_8
    return-void

    .line 14
    :cond_9
    iget-boolean p3, p0, Lcom/android/camera/module/WideSelfieModule;->mIsContinuousVibratoring:Z

    if-eqz p3, :cond_a

    .line 15
    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p3}, Lcom/android/camera/VibratorUtils;->getInstance(Landroid/content/Context;)Lcom/android/camera/VibratorUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/VibratorUtils;->cancel()V

    .line 16
    iput-boolean v6, p0, Lcom/android/camera/module/WideSelfieModule;->mIsContinuousVibratoring:Z

    :cond_a
    const/4 p3, -0x1

    if-ne p1, p3, :cond_b

    const p1, 0x7f1209f7

    .line 17
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->updateHintText(I)V

    return-void

    :cond_b
    const/16 p3, 0x64

    const/16 p5, 0x32

    if-eq p2, p5, :cond_c

    if-ne p2, p3, :cond_d

    .line 18
    :cond_c
    iget v1, p0, Lcom/android/camera/module/WideSelfieModule;->mLastVibratorProgress:I

    if-eq v1, p2, :cond_d

    .line 19
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/VibratorUtils;->getInstance(Landroid/content/Context;)Lcom/android/camera/VibratorUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/VibratorUtils;->vibrate()V

    .line 20
    iput p2, p0, Lcom/android/camera/module/WideSelfieModule;->mLastVibratorProgress:I

    .line 21
    :cond_d
    iget v1, p0, Lcom/android/camera/module/WideSelfieModule;->mJpegRotation:I

    rem-int/lit16 v1, v1, 0xb4

    if-ne v1, v3, :cond_11

    .line 22
    iget v1, p0, Lcom/android/camera/module/WideSelfieModule;->mMaxMoveWidth:I

    iget p4, p4, Landroid/graphics/Point;->y:I

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lcom/android/camera/module/WideSelfieModule;->mMaxMoveWidth:I

    if-eq p2, p5, :cond_f

    if-ne p2, p3, :cond_e

    goto :goto_5

    :cond_e
    move p2, v6

    goto :goto_6

    :cond_f
    :goto_5
    move p2, v7

    :goto_6
    if-nez p2, :cond_10

    .line 23
    iget p3, p0, Lcom/android/camera/module/WideSelfieModule;->mLastMoveDirection:I

    if-ne p3, v7, :cond_10

    if-nez p1, :cond_10

    .line 24
    iget p2, p0, Lcom/android/camera/module/WideSelfieModule;->MOVE_DISTANCE:I

    iget p3, p0, Lcom/android/camera/module/WideSelfieModule;->mMaxMoveWidth:I

    sub-int/2addr p2, p3

    .line 25
    invoke-interface {v0, v6, v7, p2}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->updateThumbBackgroudLayout(ZZI)V

    goto :goto_9

    :cond_10
    if-nez p2, :cond_15

    .line 26
    iget p2, p0, Lcom/android/camera/module/WideSelfieModule;->mLastMoveDirection:I

    if-nez p2, :cond_15

    if-ne p1, v7, :cond_15

    .line 27
    iget p2, p0, Lcom/android/camera/module/WideSelfieModule;->MOVE_DISTANCE:I

    iget p3, p0, Lcom/android/camera/module/WideSelfieModule;->mMaxMoveWidth:I

    sub-int/2addr p2, p3

    .line 28
    invoke-interface {v0, v6, v6, p2}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->updateThumbBackgroudLayout(ZZI)V

    goto :goto_9

    .line 29
    :cond_11
    iget v1, p0, Lcom/android/camera/module/WideSelfieModule;->mMaxMoveWidth:I

    iget p4, p4, Landroid/graphics/Point;->x:I

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lcom/android/camera/module/WideSelfieModule;->mMaxMoveWidth:I

    if-eq p2, p5, :cond_13

    if-ne p2, p3, :cond_12

    goto :goto_7

    :cond_12
    move p2, v6

    goto :goto_8

    :cond_13
    :goto_7
    move p2, v7

    :goto_8
    if-nez p2, :cond_14

    .line 30
    iget p3, p0, Lcom/android/camera/module/WideSelfieModule;->mLastMoveDirection:I

    if-ne p3, v7, :cond_14

    if-nez p1, :cond_14

    .line 31
    iget p2, p0, Lcom/android/camera/module/WideSelfieModule;->MOVE_DISTANCE_VERTICAL:I

    iget p3, p0, Lcom/android/camera/module/WideSelfieModule;->mMaxMoveWidth:I

    sub-int/2addr p2, p3

    .line 32
    invoke-interface {v0, v7, v7, p2}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->updateThumbBackgroudLayout(ZZI)V

    goto :goto_9

    :cond_14
    if-nez p2, :cond_15

    .line 33
    iget p2, p0, Lcom/android/camera/module/WideSelfieModule;->mLastMoveDirection:I

    if-nez p2, :cond_15

    if-ne p1, v7, :cond_15

    .line 34
    iget p2, p0, Lcom/android/camera/module/WideSelfieModule;->MOVE_DISTANCE_VERTICAL:I

    iget p3, p0, Lcom/android/camera/module/WideSelfieModule;->mMaxMoveWidth:I

    sub-int/2addr p2, p3

    .line 35
    invoke-interface {v0, v7, v6, p2}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->updateThumbBackgroudLayout(ZZI)V

    .line 36
    :cond_15
    :goto_9
    iput p1, p0, Lcom/android/camera/module/WideSelfieModule;->mLastMoveDirection:I

    if-ne p1, v7, :cond_16

    const v6, 0x7f1209fa

    goto :goto_a

    :cond_16
    if-nez p1, :cond_17

    const v6, 0x7f1209fb

    :cond_17
    :goto_a
    if-eqz v6, :cond_18

    .line 37
    invoke-interface {v0, v6}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->updateHintText(I)V

    :cond_18
    return-void

    :cond_19
    :goto_b
    if-eqz v1, :cond_1a

    const-string/jumbo p1, "stop_capture_horizontal_out"

    goto :goto_c

    :cond_1a
    if-eqz v4, :cond_1b

    const-string/jumbo p1, "stop_capture_vertical_out"

    goto :goto_c

    :cond_1b
    const-string/jumbo p1, "stop_capture_fill_preview"

    .line 38
    :goto_c
    sget-object p2, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "stop shooting completed = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-direct {p0, v7, v6, p1}, Lcom/android/camera/module/WideSelfieModule;->stopWideSelfieShooting(ZZLjava/lang/String;)V

    return-void
.end method

.method public onNv21Available([BIII)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onNv21Available"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/module/WideSelfieModule;->startSaveTask([BIII)V

    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/BaseModule;->onOrientationChanged(III)V

    .line 2
    iget-boolean p2, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/android/camera/module/WideSelfieModule;->mStopedForRotation:Z

    if-nez p2, :cond_1

    .line 3
    iget p2, p0, Lcom/android/camera/module/WideSelfieModule;->mCaptureOrientation:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v0, 0xb4

    if-le p2, v0, :cond_0

    rsub-int p2, p2, 0x168

    :cond_0
    const/16 v0, 0x3c

    if-lt p2, v0, :cond_1

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/android/camera/module/WideSelfieModule;->mStopedForRotation:Z

    .line 5
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOrientationChanged stop shooting mCaptureOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/WideSelfieModule;->mCaptureOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", realTimeOrientation = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const-string/jumbo p3, "stop_capture_rotate_out"

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/WideSelfieModule;->stopWideSelfieShooting(ZZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->closeCamera()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->resetScreenOn()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-virtual {v0}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->pause()V

    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->onLayoutChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onPreviewSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    return-void
.end method

.method public onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isTextureExpired()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->retryOnceIfCameraError(Landroid/os/Handler;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "sessionFailed due to surfaceTexture expired, retry"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x33

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 3
    sget-object p1, Lcom/android/camera/constant/UpdateConstant;->WIDESELFIE_ON_PREVIEW_SUCCESS:[I

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public onPreviewSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public onPreviewUpdate([BIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1, p2, p3}, LOooO00o/OooO0OO/OooO00o/OooO00o/OooO0OO;->OooO0O0([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b0024

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 3
    iget p3, p0, Lcom/android/camera/module/WideSelfieModule;->mSensorOrientation:I

    const/16 v0, 0x5a

    if-ne p3, v0, :cond_0

    const/16 p2, 0x10e

    :cond_0
    const/4 p3, 0x1

    .line 4
    invoke-static {p1, p2, p3}, LOooO00o/OooO0OO/OooO00o/OooO00o/OooO0OO;->OooO00o(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/camera/module/WideSelfieModule$1;

    invoke-direct {p3, p0, p1, p4, p5}, Lcom/android/camera/module/WideSelfieModule$1;-><init>(Lcom/android/camera/module/WideSelfieModule;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onRenderRequested()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd8

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->requestRender()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->keepScreenOnAwhile()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-virtual {v0}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->resume()V

    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 0

    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 0

    return-void
.end method

.method public onShineChanged(I)V
    .locals 3

    const/16 v0, 0xef

    if-eq p1, v0, :cond_0

    .line 1
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShineChanged configItem error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xd

    aput v1, p1, v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :goto_0
    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsPrepareSaveTask:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->isProcessingSaveTask()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 5
    :cond_2
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutterButtonClick"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 6
    sget-object v1, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "onShutterButtonClick mode = %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    .line 8
    iget-boolean p1, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-nez p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 10
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 12
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    .line 13
    sget-object p1, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick return, isLowStorageAtLastPoint"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 p1, 0x2

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 15
    sget-object p1, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick startWideSelfieShooting"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->startWideSelfieShooting()V

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/WideSelfieModule;->mShootingStartTime:J

    goto :goto_0

    .line 18
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->isShootingTooShort()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "shooting is too short, ignore this click"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 20
    :cond_5
    sget-object p1, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick stopWideSelfieShooting"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "stop_capture_on_shutter_button"

    .line 21
    invoke-direct {p0, v2, v5, p1}, Lcom/android/camera/module/WideSelfieModule;->stopWideSelfieShooting(ZZLjava/lang/String;)V

    :goto_0
    return-void

    .line 22
    :cond_6
    :goto_1
    sget-object p1, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onShutterButtonClick return, mIsPrepareSaveTask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/WideSelfieModule;->mIsPrepareSaveTask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 0

    return-void
.end method

.method public onShutterButtonLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterButtonLongClickCancel(Z)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/WideSelfieModule;->onShutterButtonFocus(ZI)V

    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 1

    .line 1
    iget-boolean p3, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p3, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hasCameraException()Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 3
    invoke-virtual {p3}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result p3

    if-nez p3, :cond_1

    .line 6
    sget-object p1, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onSingleTapUp: frame not available"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p3}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p3

    const/16 v0, 0xab

    .line 9
    invoke-virtual {p3, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p3

    check-cast p3, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz p3, :cond_4

    .line 10
    invoke-interface {p3, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    return-void
.end method

.method public onThermalConstrained()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onThermalConstrained()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->isShootingTooShort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "shooting is too short, ignore this click"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "stop_capture_on_shutter_button"

    .line 5
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/module/WideSelfieModule;->stopWideSelfieShooting(ZZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;->isProcessingSaveTask()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->gotoGallery()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->keepScreenOnAwhile()V

    :cond_0
    return-void
.end method

.method public onWideSelfCompleted()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onWideSelfCompleted"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pausePreview()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pausePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->pausePreview()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    return-void
.end method

.method public performKeyClicked(ILjava/lang/String;IZ)V
    .locals 0

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/WideSelfieModule;->onShutterButtonClick(I)V

    :cond_0
    return-void
.end method

.method public registerProtocol()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    return-void

    :array_0
    .array-data 4
        0xa4
        0xea
        0xd4
    .end array-data
.end method

.method public resetScreenOn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public resumePreview()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    return-void
.end method

.method public sendOpenFailMessage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->setFrameAvailable(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    :cond_0
    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->isRecording()Z

    move-result v0

    return v0
.end method

.method public startFaceDetection()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mMaxFaceCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/module/WideSelfieModule;->mFaceDetectionStarted:Z

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->startFaceDetection()V

    .line 5
    invoke-direct {p0, v1, v1}, Lcom/android/camera/module/WideSelfieModule;->updateFaceView(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startPreview()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startPreview: camera has been closed"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setDisplayOrientation(I)V

    .line 7
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mAeLockSupported:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    .line 9
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mAwbLockSupported:Z

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v2, p0, Lcom/android/camera/module/WideSelfieModule;->mTargetFocusMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startPreviewSession()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreview: camera has been closed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setDualCamWaterMarkEnable(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureMaxImages(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureFormat(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mSurfaceCreatedTimestamp:J

    .line 11
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v3, Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 13
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, p0

    .line 15
    invoke-virtual/range {v2 .. v9}, Lcom/android/camera2/Camera2Proxy;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method public startWideSelfieShooting()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mShowWarningToast:Z

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/android/camera/module/WideSelfieModule;->mFirstFrameNv21Data:[B

    .line 3
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    iput v2, p0, Lcom/android/camera/module/WideSelfieModule;->mCaptureOrientation:I

    .line 4
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    invoke-static {v3, v2}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/WideSelfieModule;->mJpegRotation:I

    .line 5
    sget-object v2, Lcom/android/camera/module/WideSelfieModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startWideSelfieShooting mJpegRotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/module/WideSelfieModule;->mJpegRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lcom/android/camera/module/WideSelfieModule;->mIsShooting:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mStopedForRotation:Z

    const/4 v3, -0x1

    .line 8
    iput v3, p0, Lcom/android/camera/module/WideSelfieModule;->mLastVibratorProgress:I

    .line 9
    iput v3, p0, Lcom/android/camera/module/WideSelfieModule;->mLastMoveDirection:I

    .line 10
    iput v0, p0, Lcom/android/camera/module/WideSelfieModule;->mMaxMoveWidth:I

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xd4

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 12
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    .line 13
    iget-object v5, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    iget v6, p0, Lcom/android/camera/module/WideSelfieModule;->mJpegRotation:I

    invoke-virtual {v5, v6}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->setOrientation(I)V

    .line 14
    iget-object v5, p0, Lcom/android/camera/module/WideSelfieModule;->mWideSelfEngine:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-virtual {v5}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->startCapture()I

    .line 15
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mDeviceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 16
    :try_start_0
    iget-boolean v6, p0, Lcom/android/camera/module/BaseModule;->mAeLockSupported:Z

    if-eqz v6, :cond_0

    .line 17
    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v6, v2}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    .line 18
    :cond_0
    iget-boolean v6, p0, Lcom/android/camera/module/BaseModule;->mAwbLockSupported:Z

    if-eqz v6, :cond_1

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v6

    invoke-virtual {v6}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000O0oo()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 19
    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v6, v2}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    .line 20
    :cond_1
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 21
    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v7, v6}, Lcom/android/camera2/Camera2Proxy;->setGpsLocation(Landroid/location/Location;)V

    .line 22
    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v6, v2}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    .line 23
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->isZslPreferred()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/camera2/Camera2Proxy;->setEnableZsl(Z)V

    .line 24
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v0}, Lcom/android/camera2/Camera2Proxy;->setNeedPausePreview(Z)V

    .line 25
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setShotType(I)V

    .line 26
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v2, Lcom/android/camera/module/WideSelfieModule$3;

    invoke-direct {v2, p0}, Lcom/android/camera/module/WideSelfieModule$3;-><init>(Lcom/android/camera/module/WideSelfieModule;)V

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/camera2/Camera2Proxy;->captureBurstPictures(ILcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V

    .line 27
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onStart()V

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->keepScreenOn()V

    .line 30
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    return-void

    :catchall_0
    move-exception v0

    .line 31
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopFaceDetection(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mFaceDetectionStarted:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->stopFaceDetection()V

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setActiveIndicator(I)V

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/WideSelfieModule;->updateFaceView(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    :cond_0
    return-void
.end method

.method public updateFace()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->enableFaceDetection()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v1, :cond_0

    xor-int/lit8 v2, v0, 0x1

    .line 3
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setSkipDrawFace(Z)V

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mFaceDetectionEnabled:Z

    if-nez v0, :cond_2

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/module/WideSelfieModule;->mFaceDetectionEnabled:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/WideSelfieModule;->startFaceDetection()V

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/camera/module/WideSelfieModule;->stopFaceDetection(Z)V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/module/WideSelfieModule;->mFaceDetectionEnabled:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public updateFlashPreference()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setFlashMode(Ljava/lang/String;)V

    return-void
.end method
