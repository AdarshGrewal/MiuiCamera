.class public Lcom/android/camera/module/SuperMoonModule;
.super Lcom/android/camera/module/BaseModule;
.source "SuperMoonModule.java"

# interfaces
.implements Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;
.implements Lcom/android/camera/protocol/ModeProtocol$CameraAction;
.implements Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;
.implements Lcom/android/camera2/Camera2Proxy$FocusCallback;
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;
.implements Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;
.implements Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/SuperMoonModule$LocalParallelServiceStatusListener;,
        Lcom/android/camera/module/SuperMoonModule$MainHandler;
    }
.end annotation


# static fields
.field public static final CAPTURE_DURATION_THRESHOLD:J = 0x2ee0L

.field public static final TAG:Ljava/lang/String; = "SuperMoonModule"


# instance fields
.field public curGyroscope:[F

.field public lastGyroscope:[F

.field public m3ALocked:Z

.field public mAFEndLogTimes:I

.field public mAlgorithmName:Ljava/lang/String;

.field public mApertures:[F

.field public mBlockQuickShot:Z

.field public mBroadcastIntent:Landroid/content/Intent;

.field public final mCameraDeviceLock:Ljava/lang/Object;

.field public mCaptureStartTime:J

.field public mConfigRawStream:Z

.field public mCountdownDisposable:Lio/reactivex/disposables/Disposable;

.field public mCurrentAiScene:I

.field public mEnableParallelSession:Z

.field public mEnableShot2Gallery:Z

.field public mEnabledPreviewThumbnail:Z

.field public mFirstCreateCapture:Z

.field public mFocalLengths:[F

.field public mIsShowLyingDirectHintStatus:I

.field public mIsStartCount:Z

.field public mJpegRotation:I

.field public mLastCaptureTime:J

.field public mLocation:Landroid/location/Location;

.field public mLongPressedAutoFocus:Z

.field public mMajorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field public mMapRect:Landroid/graphics/Rect;

.field public volatile mMediaRecorderRecording:Z

.field public mMinorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field public mMultiSnapStatus:Z

.field public mOnResumeTime:J

.field public mOperatingMode:I

.field public mParallelSessionConfigured:Z

.field public final mParallelSessionLock:Ljava/lang/Object;

.field public mQuickShotAnimateEnable:Z

.field public mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field public mServiceStatusListener:Lcom/android/camera/LocalParallelService$ServiceStatusListener;

.field public mShootOrientation:I

.field public mShootRotation:F

.field public mShutterCallbackTime:J

.field public mShutterLag:J

.field public volatile mUltraWideAELocked:Z

.field public mVolumeLongPress:Z

.field public volatile mWaitSaveFinish:Z

.field public mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mCameraDeviceLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mVolumeLongPress:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraQuickShotEnable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->mBlockQuickShot:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mQuickShotAnimateEnable:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mParallelSessionConfigured:Z

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mParallelSessionLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/android/camera/module/SuperMoonModule;->mIsShowLyingDirectHintStatus:I

    .line 10
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMapRect:Landroid/graphics/Rect;

    .line 11
    iput v0, p0, Lcom/android/camera/module/SuperMoonModule;->mCurrentAiScene:I

    .line 12
    new-instance v0, Lcom/android/camera/module/SuperMoonModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/SuperMoonModule$1;-><init>(Lcom/android/camera/module/SuperMoonModule;)V

    iput-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/SuperMoonModule;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/SuperMoonModule;->mOnResumeTime:J

    return-wide v0
.end method

.method public static synthetic access$100(Lcom/android/camera/module/SuperMoonModule;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/SuperMoonModule;->setOrientation(II)V

    return-void
.end method

.method public static synthetic access$1002(Lcom/android/camera/module/SuperMoonModule;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/SuperMoonModule;->mCountdownDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method public static synthetic access$1102(Lcom/android/camera/module/SuperMoonModule;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mIsStartCount:Z

    return p1
.end method

.method public static synthetic access$1200(Lcom/android/camera/module/SuperMoonModule;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/SuperMoonModule;->startNormalCapture(I)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/android/camera/module/SuperMoonModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->configParallelSession()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/module/SuperMoonModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->setOrientationParameter()V

    return-void
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$402(Lcom/android/camera/module/SuperMoonModule;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mWaitSaveFinish:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/android/camera/module/SuperMoonModule;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/module/SuperMoonModule;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->is3ALocked()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/module/SuperMoonModule;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/SuperMoonModule;->mIsShowLyingDirectHintStatus:I

    return p0
.end method

.method public static synthetic access$702(Lcom/android/camera/module/SuperMoonModule;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/SuperMoonModule;->mIsShowLyingDirectHintStatus:I

    return p1
.end method

.method public static synthetic access$802(Lcom/android/camera/module/SuperMoonModule;[F)[F
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/SuperMoonModule;->lastGyroscope:[F

    return-object p1
.end method

.method public static synthetic access$900(Lcom/android/camera/module/SuperMoonModule;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/SuperMoonModule;->curGyroscope:[F

    return-object p0
.end method

.method public static synthetic access$902(Lcom/android/camera/module/SuperMoonModule;[F)[F
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/SuperMoonModule;->curGyroscope:[F

    return-object p1
.end method

.method private beginParallelProcess(Lcom/xiaomi/camera/core/ParallelTaskData;Z)V
    .locals 2

    .line 1
    sget-object p2, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "algo begin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/SuperMoonModule;->mServiceStatusListener:Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/android/camera/module/SuperMoonModule$LocalParallelServiceStatusListener;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-direct {p1, p2, p0}, Lcom/android/camera/module/SuperMoonModule$LocalParallelServiceStatusListener;-><init>(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/SuperMoonModule;)V

    iput-object p1, p0, Lcom/android/camera/module/SuperMoonModule;->mServiceStatusListener:Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    .line 4
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/SuperMoonModule;->mServiceStatusListener:Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    invoke-virtual {p1, p2}, Lcom/android/camera/parallel/AlgoConnector;->setServiceStatusListener(Lcom/android/camera/LocalParallelService$ServiceStatusListener;)V

    :cond_0
    return-void
.end method

.method private blockSnapClickUntilSaveFinish()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string v1, "blockSnapClickUntilFinish"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mWaitSaveFinish:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x3d

    const-wide/16 v2, 0x1388

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private checkShutterCondition()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isBlockSnap()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string v2, "checkShutterCondition: low storage"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string v2, "checkShutterCondition: screen is slide off"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isIn3OrMoreSatMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xb6

    .line 8
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomSliderViewIdle()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string v2, "checkShutterCondition: 3SAT zooming"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 11
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_4

    .line 13
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()V

    :cond_4
    const/4 v0, 0x1

    return v0

    .line 14
    :cond_5
    :goto_0
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkShutterCondition: blockSnap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isBlockSnap()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ignoreTouchEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private clampQuality(I)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isRear108MPSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x5a

    .line 2
    invoke-static {p1, v0, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    :cond_0
    return p1
.end method

.method private configParallelSession()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getRoleIdByActualId(I)I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCameraCombinationMode(I)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isPortraitMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000OoOo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDualCamera()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBokehUltraWideBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x2

    .line 8
    :goto_1
    sget-object v3, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configParallelSession: inputStreamNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v3, Lcom/xiaomi/engine/GraphDescriptorBean;

    const v4, 0x8002

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_2

    .line 10
    :cond_3
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xa7

    if-ne v1, v3, :cond_4

    .line 11
    new-instance v3, Lcom/xiaomi/engine/GraphDescriptorBean;

    const v1, 0x8003

    invoke-direct {v3, v1, v2, v2, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_2

    .line 12
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    new-instance v3, Lcom/xiaomi/engine/GraphDescriptorBean;

    const v1, 0x800a

    invoke-direct {v3, v1, v2, v2, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    const/16 v0, 0x201

    .line 14
    :cond_6
    new-instance v3, Lcom/xiaomi/engine/GraphDescriptorBean;

    const/4 v1, 0x0

    invoke-direct {v3, v1, v2, v2, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    .line 15
    :goto_2
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configParallelSession: pictureSize = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configParallelSession: outputSize = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configParallelSession: outputFormat = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v0, Lcom/xiaomi/engine/BufferFormat;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    iget v4, v1, Lcom/android/camera/CameraSize;->width:I

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    const/16 v5, 0x23

    invoke-direct {v0, v4, v1, v5, v3}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    .line 19
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder(Z)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->configCaptureSession(Lcom/xiaomi/engine/BufferFormat;)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    iget v3, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    invoke-virtual {v1, v3, v0, v4}, Lcom/android/camera/LocalParallelService$LocalBinder;->setOutputPictureSpec(III)V

    .line 23
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0O0o()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->setSRRequireReprocess(Z)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mParallelSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    iput-boolean v2, p0, Lcom/android/camera/module/SuperMoonModule;->mParallelSessionConfigured:Z

    .line 26
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private enablePreviewAsThumbnail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getCountDownTimes(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mBroadcastIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getTimerDurationSeconds()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getTimerDurationSeconds()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_4

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/SuperMoonModule;->mBroadcastIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TIMER_DURATION_SECONDS"

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_3

    const/4 p1, 0x5

    if-eq v0, p1, :cond_2

    return v2

    :cond_2
    return p1

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    const/16 v0, 0x64

    if-ne p1, v0, :cond_6

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result p1

    if-eqz p1, :cond_5

    move v2, p1

    :cond_5
    return v2

    .line 9
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result p1

    return p1
.end method

.method private getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCameraWaterMarkOpen()Z

    move-result v1

    .line 3
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v2

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result v3

    .line 5
    new-instance v4, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v1, v3, v5}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;-><init>(ZZZLjava/lang/String;)V

    .line 7
    invoke-virtual {v4, v2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->setCinematicAspectRatio(Z)Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/android/camera/Util;->isLTR()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->setLTR(Z)Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    move-result-object v1

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 9
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getCustomWatermark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->setCustomText(Ljava/lang/String;)Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->build()Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    return-object v0
.end method

.method private getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;
    .locals 5

    .line 1
    new-instance v0, Lcom/xiaomi/camera/core/PictureInfo;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/PictureInfo;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isFrontMirror()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setFrontMirror(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setSensorType(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isPictureUseDualFrontCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setBokehFrontCamera(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrType(Ljava/lang/String;)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->getOperatingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setOpMode(I)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setAiEnabled(Z)Lcom/xiaomi/camera/core/PictureInfo;

    .line 8
    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setAiType(I)Lcom/xiaomi/camera/core/PictureInfo;

    .line 9
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/4 v3, 0x1

    const/16 v4, 0xa6

    if-ne v2, v4, :cond_0

    .line 10
    invoke-virtual {v0, v3}, Lcom/xiaomi/camera/core/PictureInfo;->setPanorama(Z)V

    goto :goto_0

    :cond_0
    const/16 v4, 0xa7

    if-ne v2, v4, :cond_1

    .line 11
    invoke-virtual {v0, v3}, Lcom/xiaomi/camera/core/PictureInfo;->setProfession(Z)V

    .line 12
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setShotBurst(Z)V

    .line 13
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setFilter(I)Lcom/xiaomi/camera/core/PictureInfo;

    .line 14
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "front"

    .line 16
    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setLensType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActualCameraId()I

    move-result v2

    .line 18
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_RearUltra"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setLensType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 20
    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_RearMacro"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setLensType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 22
    :cond_4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_RearTele"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setLensType(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_RearTele4x"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setLensType(Ljava/lang/String;)V

    goto :goto_1

    .line 26
    :cond_6
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_RearWide"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setLensType(Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_7
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rear"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setLensType(Ljava/lang/String;)V

    .line 30
    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/android/camera/module/SuperMoonModule;->mFocalLengths:[F

    if-eqz v2, :cond_9

    array-length v3, v2

    if-lez v3, :cond_9

    .line 31
    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setLensfocal(F)V

    .line 32
    :cond_9
    iget-object v2, p0, Lcom/android/camera/module/SuperMoonModule;->mApertures:[F

    if-eqz v2, :cond_a

    array-length v3, v2

    if-lez v3, :cond_a

    .line 33
    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setLensApertues(F)V

    .line 34
    :cond_a
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getViewRects(Lcom/android/camera/CameraSize;)[Landroid/graphics/RectF;

    move-result-object v2

    .line 35
    invoke-static {v2}, Lcom/android/camera/module/DebugInfoUtil;->getRetriveFaceInfo([Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 37
    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setFaceRoi(Ljava/lang/String;)V

    .line 38
    :cond_b
    iget v2, p0, Lcom/android/camera/module/SuperMoonModule;->mOperatingMode:I

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setOperateMode(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setZoomMulti(F)Lcom/xiaomi/camera/core/PictureInfo;

    .line 40
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v2, :cond_c

    .line 41
    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getExposureCompensation()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PictureInfo;->setEvValue(I)V

    .line 42
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getAFRegions()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 44
    array-length v3, v2

    if-lez v3, :cond_c

    .line 45
    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setTouchRoi(Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 46
    :cond_c
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->end()V

    return-object v0
.end method

.method private getPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private getSatPictureSize()Lcom/android/camera/CameraSize;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getSatMasterCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSatPictureSize: invalid satMasterCameraId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mWidePictureSize:Lcom/android/camera/CameraSize;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mUltraTelePictureSize:Lcom/android/camera/CameraSize;

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mTelePictureSize:Lcom/android/camera/CameraSize;

    return-object v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mWidePictureSize:Lcom/android/camera/CameraSize;

    return-object v0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mUltraWidePictureSize:Lcom/android/camera/CameraSize;

    return-object v0
.end method

.method private getSuffix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getTiltShiftMode()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v0

    const/16 v1, 0xa0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private handleSaveFinishIfNeed()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mWaitSaveFinish:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x3d

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private initZoomMapControllerIfNeeded()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000O()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSatPipSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getZoomMapSizes()Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/android/camera/zoommap/ZoomMapController;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/camera/zoommap/ZoomMapController;-><init>(Lcom/android/camera/ActivityBase;ZLjava/util/List;)V

    iput-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

    :cond_1
    return-void
.end method

.method private is3ALocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->m3ALocked:Z

    return v0
.end method

.method private isCannotGotoGallery()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->isZooming:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->needKeepBitmapTexture()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isQueueFull()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isInCountDown()Z

    move-result v0

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

.method private isFrontMirror()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isImageSaverFull()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string v2, "isParallelQueueFull: ImageSaver is null"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->isSaveQueueFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string v1, "isParallelQueueFull: ImageSaver queue is full"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private isIn3OrMoreSatMode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/SuperMoonModule;->mOperatingMode:I

    const v1, 0x9002

    if-ne v1, v0, :cond_0

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInCountDown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mCountdownDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInMultiSurfaceSatMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isInMultiSurfaceSatMode()Z

    move-result v0

    return v0
.end method

.method private isParallelCameraSessionMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportParallelCameraDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isParallelUnSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getSATSubCameraIds()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v0

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isParallelQueueFull()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isImageSaverFull()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->needWaitProcess()Z

    move-result v1

    goto :goto_0

    .line 6
    :cond_3
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string v2, "isParallelQueueFull: NOTICE: CHECK WHY BINDER IS NULL!"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private isParallelSessionConfigured()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mParallelSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->mParallelSessionConfigured:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isParallelUnSupported()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isParallelSupportedCaptureMode()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isAnyRequestBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isQueueFull()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isParallelQueueFull()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isImageSaverFull()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private lockAEAF()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string v1, "lockAEAF"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setAeAwbLock(Z)V

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->m3ALocked:Z

    return-void
.end method

.method private onShutter(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutter: preview stopped"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/SuperMoonModule;->mShutterCallbackTime:J

    .line 4
    iget-wide v2, p0, Lcom/android/camera/module/SuperMoonModule;->mCaptureStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/module/SuperMoonModule;->mShutterLag:J

    .line 5
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/module/SuperMoonModule;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/module/SuperMoonModule;->updateEnablePreviewThumbnail(Z)V

    .line 7
    sget-object p1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onShutter mEnabledPreviewThumbnail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->mEnabledPreviewThumbnail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mEnabledPreviewThumbnail:Z

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->requestReadPixels()V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->needKeepBitmapTexture()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mBlockQuickShot:Z

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->resetStatusToIdle()V

    :cond_2
    return-void
.end method

.method private prepareNormalCapture()V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepareNormalCapture E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnabledPreviewThumbnail:Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/module/SuperMoonModule;->mCaptureStartTime:J

    .line 4
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v3, v1, v2}, Lcom/android/camera2/Camera2Proxy;->setCaptureTime(J)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget-boolean v3, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    invoke-static {v1, v2, v3}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackCaptureTimeStart(ZIZ)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget-wide v3, p0, Lcom/android/camera/module/SuperMoonModule;->mCaptureStartTime:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackShotToGalleryStart(ZIJ)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget-wide v3, p0, Lcom/android/camera/module/SuperMoonModule;->mCaptureStartTime:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackShotToViewStart(ZIJ)V

    .line 8
    iget-wide v1, p0, Lcom/android/camera/module/SuperMoonModule;->mCaptureStartTime:J

    iput-wide v1, p0, Lcom/android/camera/module/SuperMoonModule;->mLastCaptureTime:J

    const/4 v1, 0x3

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMajorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 11
    iput-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMinorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v2

    const-string/jumbo v3, "super_moon_reset"

    if-eqz v2, :cond_2

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/SuperMoonModule;->mMajorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/SuperMoonModule;->mMajorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    :goto_0
    iput-object v2, p0, Lcom/android/camera/module/SuperMoonModule;->mMajorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMinorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/SuperMoonModule;->mMinorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMinorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    :goto_1
    iput-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMinorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMajorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {v1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lcom/android/camera/module/SuperMoonModule;->mMinorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-nez v2, :cond_4

    goto :goto_3

    .line 19
    :cond_4
    invoke-virtual {v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v2, p0, Lcom/android/camera/module/SuperMoonModule;->mMajorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/SuperMoonModule;->mMinorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const-string v2, "false"

    goto :goto_5

    :cond_6
    :goto_4
    const-string/jumbo v2, "true"

    .line 20
    :goto_5
    invoke-static {v1, v3, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackSuperMoonCapture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMajorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMinorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v1, :cond_7

    goto :goto_6

    .line 22
    :cond_7
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/SuperMoonModule;->mJpegRotation:I

    goto :goto_7

    :cond_8
    :goto_6
    const/16 v1, 0x5a

    .line 23
    iput v1, p0, Lcom/android/camera/module/SuperMoonModule;->mJpegRotation:I

    .line 24
    sget-object v1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "prepareNormalCapture: watermark switch on, force change jpeg rotation to 90"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :goto_7
    sget-object v1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareNormalCapture: mOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mJpegRotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/module/SuperMoonModule;->mJpegRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v2, p0, Lcom/android/camera/module/SuperMoonModule;->mJpegRotation:I

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setJpegRotation(I)V

    .line 27
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v1}, Lcom/android/camera2/Camera2Proxy;->setGpsLocation(Landroid/location/Location;)V

    .line 29
    iput-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mLocation:Landroid/location/Location;

    .line 30
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateMfnr()V

    .line 31
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateSuperResolution()V

    .line 32
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateShotDetermine()V

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 34
    sget-object v3, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepareNormalCapture title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 35
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    invoke-static {v2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/camera2/Camera2Proxy;->setShotSavePath(Ljava/lang/String;ZZ)V

    .line 37
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setNeedSequence(Z)V

    .line 38
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mAlgorithmName:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->setPictureOrientation()V

    .line 40
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepareNormalCapture X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private previewWhenSessionSuccess()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 2
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->SUPER_MOON_TYPES_ON_PREVIEW_SUCCESS:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method private resumePreviewInWorkThread()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method private setOrientation(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/Util;->getShootOrientation(Landroid/app/Activity;I)I

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/effect/EffectController;->setOrientation(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 6
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-eq p1, p2, :cond_1

    .line 7
    iput p2, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->setOrientationParameter()V

    :cond_1
    return-void
.end method

.method private setOrientationParameter()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0x23

    aput v2, v0, v1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00Oo0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00Oo0;-><init>(Lcom/android/camera/module/SuperMoonModule;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_0
    return-void
.end method

.method private setPictureOrientation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->isDeviceLying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mDeviceRotation:F

    :goto_0
    iput v0, p0, Lcom/android/camera/module/SuperMoonModule;->mShootRotation:F

    .line 2
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iput v0, p0, Lcom/android/camera/module/SuperMoonModule;->mShootOrientation:I

    return-void
.end method

.method private startCount(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mIsStartCount:Z

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->checkShutterCondition()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mIsStartCount:Z

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->handleCountDownSnapClickVibrator()V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->tryRemoveCountDownMessage()V

    .line 8
    sget-object p2, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x1

    .line 9
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p2}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p2

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p2

    .line 10
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/android/camera/module/SuperMoonModule$3;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/SuperMoonModule$3;-><init>(Lcom/android/camera/module/SuperMoonModule;I)V

    .line 11
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private startNormalCapture(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNormalCapture mode -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-static {v1, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 3
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->blockSnapClickUntilSaveFinish()V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->prepareNormalCapture()V

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x32

    const-wide/16 v1, 0x2ee0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setQuickShotAnimation(Z)V

    .line 11
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o00Oo()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    const/16 v2, 0xa3

    if-eq p1, v2, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    const/16 v2, 0xba

    if-eq p1, v2, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    const/16 v2, 0xb6

    if-ne p1, v2, :cond_2

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-nez p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1, v1}, Lcom/android/camera2/Camera2Proxy;->setFlawDetectEnable(Z)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setFlawDetectEnable(Z)V

    .line 18
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/camera2/Camera2Proxy;->takePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V

    .line 19
    iput-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->mBlockQuickShot:Z

    .line 20
    sget-object p1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isParallelSessionEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isParallelSessionEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", and block quick shot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unlockAEAF()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unlockAEAF"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->m3ALocked:Z

    .line 3
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mAeLockSupported:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->unlockExposure()V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setAeAwbLock(Z)V

    :cond_1
    return-void
.end method

.method private updateASD()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setASDEnable(Z)V

    .line 3
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateASD call setASDEnable with true"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateAiScene()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAiASDEnable(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setASDScene(I)V

    .line 4
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateAiScene call setASDScene with AI_SCENE_MODE_MOON"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateEnablePreviewThumbnail(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->enablePreviewAsThumbnail()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mEnabledPreviewThumbnail:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->setPreviewThumbnail(Z)V

    .line 3
    sget-object p1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateEnablePreviewThumbnail mEnabledPreviewThumbnail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->mEnabledPreviewThumbnail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateFilter()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    .line 2
    sget-object v1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFilter: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    :cond_0
    return-void
.end method

.method private updateFocusMode()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateFocusMode E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setFocusMode(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFocusModeSwitching()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocusStateIfNeeded()V

    :cond_0
    const-string v1, "manual"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getMinimumFocusDistance()F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusDistance(F)V

    .line 11
    :cond_1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateFocusMode X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateMfnr()V
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0oO0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMfnr setMfnr to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setMfnr(Z)V

    :cond_0
    return-void
.end method

.method private updateOIS()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    .line 3
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateOIS call setEnableOIS with true"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateOutputSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getSatMasterCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    const/16 v0, 0x100

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(I)Ljava/util/List;

    move-result-object p1

    .line 4
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p1, v0}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget v0, p1, Lcom/android/camera/CameraSize;->width:I

    iget p1, p1, Lcom/android/camera/CameraSize;->height:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 7
    new-instance v0, Lcom/android/camera/CameraSize;

    invoke-direct {v0, p1, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    .line 8
    :cond_1
    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    :goto_0
    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->getOperatingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraCapabilities;->setOperatingMode(I)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    const/16 v1, 0x23

    const/16 v2, 0x100

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->getSATSubCameraIds()[I

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    if-eqz v6, :cond_1f

    .line 4
    sget-object v7, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SAT] camera list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    array-length v7, v3

    move v8, v4

    move v9, v8

    :goto_2
    const/4 v10, 0x2

    if-ge v8, v7, :cond_11

    aget v11, v3, v8

    .line 6
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v12

    if-ne v11, v12, :cond_4

    .line 7
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-nez v11, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v11

    .line 9
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 10
    :cond_2
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v11, :cond_10

    .line 11
    iget v12, p0, Lcom/android/camera/module/SuperMoonModule;->mOperatingMode:I

    invoke-virtual {v11, v12}, Lcom/android/camera2/CameraCapabilities;->setOperatingMode(I)V

    .line 12
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v11, v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(I)Ljava/util/List;

    move-result-object v11

    .line 13
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v12

    invoke-virtual {v12}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000OO0()I

    move-result v12

    if-eqz v12, :cond_3

    .line 14
    iget v10, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v13, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    invoke-static {v11, v12, v10, v13}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;III)V

    .line 15
    iget v10, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v10}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/module/BaseModule;->mUltraWidePictureSize:Lcom/android/camera/CameraSize;

    goto/16 :goto_6

    .line 16
    :cond_3
    invoke-virtual {p0, v11}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Lcom/android/camera/CameraSize;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraWidePictureSize:Lcom/android/camera/CameraSize;

    .line 17
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v11}, Lcom/android/camera2/CameraCapabilities;->isFakeSatV2Supported()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 18
    iget-object v9, p0, Lcom/android/camera/module/BaseModule;->mUltraCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v9}, Lcom/android/camera2/CameraCapabilities;->getSupportedFakeSatYuvSizes()Ljava/util/List;

    move-result-object v9

    .line 19
    invoke-virtual {p0, v9}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Lcom/android/camera/CameraSize;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/module/BaseModule;->mFakeSatUltraWidePictureSize:Lcom/android/camera/CameraSize;

    .line 20
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v11, v9}, Lcom/android/camera2/Camera2Proxy;->setFakeSatUltraWidePictureSize(Lcom/android/camera/CameraSize;)V

    .line 21
    iget-object v9, p0, Lcom/android/camera/module/BaseModule;->mUltraCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v9}, Lcom/android/camera2/CameraCapabilities;->getSupportedFakeSatJpegSizes()Ljava/util/List;

    move-result-object v9

    .line 22
    invoke-virtual {p0, v9}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Lcom/android/camera/CameraSize;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/module/BaseModule;->mFakeSatUltraWideOutputSize:Lcom/android/camera/CameraSize;

    .line 23
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v11, v9}, Lcom/android/camera2/Camera2Proxy;->setFakeSatUltraWideOutputSize(Lcom/android/camera/CameraSize;)V

    .line 24
    sget-object v9, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/camera/module/BaseModule;->mFakeSatUltraWidePictureSize:Lcom/android/camera/CameraSize;

    aput-object v12, v10, v4

    iget-object v12, p0, Lcom/android/camera/module/BaseModule;->mFakeSatUltraWideOutputSize:Lcom/android/camera/CameraSize;

    aput-object v12, v10, v5

    const-string v12, "FAKE_SAT_UW: %s -> %s"

    invoke-static {v11, v12, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 25
    :cond_4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v12

    if-ne v11, v12, :cond_7

    .line 26
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mWideCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-nez v11, :cond_5

    .line 27
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v11

    .line 28
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/module/BaseModule;->mWideCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 29
    :cond_5
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mWideCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v11, :cond_10

    .line 30
    iget v12, p0, Lcom/android/camera/module/SuperMoonModule;->mOperatingMode:I

    invoke-virtual {v11, v12}, Lcom/android/camera2/CameraCapabilities;->setOperatingMode(I)V

    .line 31
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mWideCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v11, v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(I)Ljava/util/List;

    move-result-object v11

    .line 32
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v12

    invoke-virtual {v12}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000o0o()I

    move-result v12

    if-eqz v12, :cond_6

    .line 33
    iget v13, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v14, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    invoke-static {v11, v12, v13, v14}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;III)V

    .line 34
    iget v11, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v11}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/module/BaseModule;->mWidePictureSize:Lcom/android/camera/CameraSize;

    goto :goto_3

    .line 35
    :cond_6
    invoke-virtual {p0, v11}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Lcom/android/camera/CameraSize;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/module/BaseModule;->mWidePictureSize:Lcom/android/camera/CameraSize;

    .line 36
    :goto_3
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mWideCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v11}, Lcom/android/camera2/CameraCapabilities;->isFakeSatV2Supported()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 37
    iget-object v9, p0, Lcom/android/camera/module/BaseModule;->mWideCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v9}, Lcom/android/camera2/CameraCapabilities;->getSupportedFakeSatYuvSizes()Ljava/util/List;

    move-result-object v9

    .line 38
    invoke-virtual {p0, v9}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Lcom/android/camera/CameraSize;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/module/BaseModule;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    .line 39
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v11, v9}, Lcom/android/camera2/Camera2Proxy;->setFakeSatWidePictureSize(Lcom/android/camera/CameraSize;)V

    .line 40
    iget-object v9, p0, Lcom/android/camera/module/BaseModule;->mWideCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v9}, Lcom/android/camera2/CameraCapabilities;->getSupportedFakeSatJpegSizes()Ljava/util/List;

    move-result-object v9

    .line 41
    invoke-virtual {p0, v9}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Lcom/android/camera/CameraSize;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/module/BaseModule;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    .line 42
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v11, v9}, Lcom/android/camera2/Camera2Proxy;->setFakeSatWideOutputSize(Lcom/android/camera/CameraSize;)V

    .line 43
    sget-object v9, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/camera/module/BaseModule;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    aput-object v12, v10, v4

    iget-object v12, p0, Lcom/android/camera/module/BaseModule;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    aput-object v12, v10, v5

    const-string v12, "FAKE_SAT_W: %s -> %s"

    invoke-static {v11, v12, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 44
    :cond_7
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v12

    if-ne v11, v12, :cond_9

    .line 45
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mTeleCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-nez v11, :cond_8

    .line 46
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v11

    .line 47
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/module/BaseModule;->mTeleCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 48
    :cond_8
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mTeleCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v11, :cond_10

    .line 49
    iget v12, p0, Lcom/android/camera/module/SuperMoonModule;->mOperatingMode:I

    invoke-virtual {v11, v12}, Lcom/android/camera2/CameraCapabilities;->setOperatingMode(I)V

    .line 50
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mTeleCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v11, v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(I)Ljava/util/List;

    move-result-object v11

    .line 51
    invoke-virtual {p0, v11}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Lcom/android/camera/CameraSize;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/module/BaseModule;->mTelePictureSize:Lcom/android/camera/CameraSize;

    .line 52
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mTeleCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v11}, Lcom/android/camera2/CameraCapabilities;->isFakeSatV2Supported()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 53
    iget-object v9, p0, Lcom/android/camera/module/BaseModule;->mTeleCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v9}, Lcom/android/camera2/CameraCapabilities;->getSupportedFakeSatYuvSizes()Ljava/util/List;

    move-result-object v9

    .line 54
    invoke-virtual {p0, v9}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Lcom/android/camera/CameraSize;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/module/BaseModule;->mFakeSatTelePictureSize:Lcom/android/camera/CameraSize;

    .line 55
    iget-object v9, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v9, v11}, Lcom/android/camera2/Camera2Proxy;->setFakeSatTelePictureSize(Lcom/android/camera/CameraSize;)V

    .line 56
    iget-object v9, p0, Lcom/android/camera/module/BaseModule;->mTeleCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v9}, Lcom/android/camera2/CameraCapabilities;->getSupportedFakeSatJpegSizes()Ljava/util/List;

    move-result-object v9

    .line 57
    invoke-virtual {p0, v9}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Lcom/android/camera/CameraSize;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/module/BaseModule;->mFakeSatTeleOutputSize:Lcom/android/camera/CameraSize;

    .line 58
    iget-object v9, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v9, v11}, Lcom/android/camera2/Camera2Proxy;->setFakeSatTeleOutputSize(Lcom/android/camera/CameraSize;)V

    .line 59
    sget-object v9, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/camera/module/BaseModule;->mFakeSatTelePictureSize:Lcom/android/camera/CameraSize;

    aput-object v12, v10, v4

    iget-object v12, p0, Lcom/android/camera/module/BaseModule;->mFakeSatTeleOutputSize:Lcom/android/camera/CameraSize;

    aput-object v12, v10, v5

    const-string v12, "FAKE_SAT_T: %s -> %s"

    invoke-static {v11, v12, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move v9, v5

    goto/16 :goto_6

    .line 60
    :cond_9
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v12

    if-ne v11, v12, :cond_d

    .line 61
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraTeleCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-nez v11, :cond_a

    .line 62
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v11

    .line 63
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraTeleCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 64
    :cond_a
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraTeleCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v11, :cond_c

    .line 65
    iget v12, p0, Lcom/android/camera/module/SuperMoonModule;->mOperatingMode:I

    invoke-virtual {v11, v12}, Lcom/android/camera2/CameraCapabilities;->setOperatingMode(I)V

    .line 66
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraTeleCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v11, v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(I)Ljava/util/List;

    move-result-object v11

    .line 67
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v12

    invoke-virtual {v12}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000O()I

    move-result v12

    if-eqz v12, :cond_b

    .line 68
    iget v13, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v14, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    invoke-static {v11, v12, v13, v14}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;III)V

    .line 69
    iget v11, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v11}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraTelePictureSize:Lcom/android/camera/CameraSize;

    goto :goto_5

    .line 70
    :cond_b
    invoke-virtual {p0, v11}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Lcom/android/camera/CameraSize;

    move-result-object v11

    iput-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraTelePictureSize:Lcom/android/camera/CameraSize;

    .line 71
    :goto_5
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraTeleCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v11}, Lcom/android/camera2/CameraCapabilities;->isFakeSatV2Supported()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 72
    iget-object v9, p0, Lcom/android/camera/module/BaseModule;->mUltraTeleCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v9}, Lcom/android/camera2/CameraCapabilities;->getSupportedFakeSatYuvSizes()Ljava/util/List;

    move-result-object v9

    .line 73
    invoke-virtual {p0, v9}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Lcom/android/camera/CameraSize;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/module/BaseModule;->mFakeSatUltraTelePictureSize:Lcom/android/camera/CameraSize;

    .line 74
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v11, v9}, Lcom/android/camera2/Camera2Proxy;->setFakeSatUltraTelePictureSize(Lcom/android/camera/CameraSize;)V

    .line 75
    iget-object v9, p0, Lcom/android/camera/module/BaseModule;->mUltraTeleCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v9}, Lcom/android/camera2/CameraCapabilities;->getSupportedFakeSatJpegSizes()Ljava/util/List;

    move-result-object v9

    .line 76
    invoke-virtual {p0, v9}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Lcom/android/camera/CameraSize;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/module/BaseModule;->mFakeSatUltraTeleOutputSize:Lcom/android/camera/CameraSize;

    .line 77
    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v11, v9}, Lcom/android/camera2/Camera2Proxy;->setFakeSatUltraTeleOutputSize(Lcom/android/camera/CameraSize;)V

    .line 78
    sget-object v9, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/camera/module/BaseModule;->mFakeSatUltraTelePictureSize:Lcom/android/camera/CameraSize;

    aput-object v12, v10, v4

    iget-object v12, p0, Lcom/android/camera/module/BaseModule;->mFakeSatUltraTeleOutputSize:Lcom/android/camera/CameraSize;

    aput-object v12, v10, v5

    const-string v12, "FAKE_SAT_UT: %s -> %s"

    invoke-static {v11, v12, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v5

    .line 79
    :cond_c
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v10, v11}, Lcom/android/camera2/Camera2Proxy;->setUltraTelePictureSize(Lcom/android/camera/CameraSize;)V

    goto :goto_6

    .line 80
    :cond_d
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v10

    if-ne v11, v10, :cond_10

    .line 81
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mMacroCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-nez v10, :cond_e

    .line 82
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v10

    .line 83
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/module/BaseModule;->mMacroCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 84
    :cond_e
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mMacroCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v10, :cond_f

    .line 85
    iget v11, p0, Lcom/android/camera/module/SuperMoonModule;->mOperatingMode:I

    invoke-virtual {v10, v11}, Lcom/android/camera2/CameraCapabilities;->setOperatingMode(I)V

    .line 86
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mMacroCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v10, v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(I)Ljava/util/List;

    move-result-object v10

    .line 87
    invoke-virtual {p0, v10}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Lcom/android/camera/CameraSize;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/module/BaseModule;->mMacroPictureSize:Lcom/android/camera/CameraSize;

    .line 88
    :cond_f
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mMacroPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v10, v11}, Lcom/android/camera2/Camera2Proxy;->setMarcroPictureSize(Lcom/android/camera/CameraSize;)V

    :cond_10
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 89
    :cond_11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isFakeSatV1Supported()Z

    move-result v0

    if-eqz v0, :cond_12

    if-nez v9, :cond_12

    .line 90
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedFakeSatYuvSizes()Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    .line 92
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v3, v0}, Lcom/android/camera2/Camera2Proxy;->setFakeSatWidePictureSize(Lcom/android/camera/CameraSize;)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedFakeSatJpegSizes()Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/camera/module/SuperMoonModule;->getBestPictureSize(Ljava/util/List;)Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    .line 95
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v3, v0}, Lcom/android/camera2/Camera2Proxy;->setFakeSatWideOutputSize(Lcom/android/camera/CameraSize;)V

    .line 96
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/module/BaseModule;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    aput-object v8, v7, v4

    iget-object v8, p0, Lcom/android/camera/module/BaseModule;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    aput-object v8, v7, v5

    const-string v8, "FAKE_SAT_V1: %s -> %s"

    invoke-static {v3, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0oo()Z

    move-result v0

    const/4 v3, 0x4

    const/4 v7, 0x3

    if-eqz v0, :cond_13

    .line 98
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v3, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraWidePictureSize:Lcom/android/camera/CameraSize;

    aput-object v11, v9, v4

    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mWidePictureSize:Lcom/android/camera/CameraSize;

    aput-object v11, v9, v5

    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mTelePictureSize:Lcom/android/camera/CameraSize;

    aput-object v11, v9, v10

    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraTelePictureSize:Lcom/android/camera/CameraSize;

    aput-object v11, v9, v7

    const-string/jumbo v11, "ultraWideSize: %s, wideSize: %s, teleSize: %s, ultraTeleSize:%s"

    invoke-static {v8, v11, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 99
    :cond_13
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v7, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mUltraWidePictureSize:Lcom/android/camera/CameraSize;

    aput-object v11, v9, v4

    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mWidePictureSize:Lcom/android/camera/CameraSize;

    aput-object v11, v9, v5

    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mTelePictureSize:Lcom/android/camera/CameraSize;

    aput-object v11, v9, v10

    const-string/jumbo v11, "ultraWideSize: %s, wideSize: %s, teleSize: %s"

    invoke-static {v8, v11, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v8, p0, Lcom/android/camera/module/BaseModule;->mUltraWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v8}, Lcom/android/camera2/Camera2Proxy;->setUltraWidePictureSize(Lcom/android/camera/CameraSize;)V

    .line 101
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v8, p0, Lcom/android/camera/module/BaseModule;->mWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v8}, Lcom/android/camera2/Camera2Proxy;->setWidePictureSize(Lcom/android/camera/CameraSize;)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v8, p0, Lcom/android/camera/module/BaseModule;->mTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v8}, Lcom/android/camera2/Camera2Proxy;->setTelePictureSize(Lcom/android/camera/CameraSize;)V

    .line 103
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->getSatPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    .line 104
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const-class v8, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v8}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 105
    iget-object v8, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    iget v9, v8, Lcom/android/camera/CameraSize;->width:I

    iget v8, v8, Lcom/android/camera/CameraSize;->height:I

    invoke-static {v9, v8}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v8

    float-to-double v8, v8

    .line 106
    iget v11, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    invoke-static {v4, v11, v0, v8, v9}, Lcom/android/camera/Util;->getOptimalPreviewSize(ZILjava/util/List;D)Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 107
    iget-object v8, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v8, v0}, Lcom/android/camera2/Camera2Proxy;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 108
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v8, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v8}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 109
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewFormat(I)V

    .line 110
    iput v2, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    .line 111
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v8, v5, [Ljava/lang/Object;

    .line 112
    invoke-static {v2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v9

    const-string v11, "HEIC"

    const-string v12, "JPEG"

    if-eqz v9, :cond_14

    move-object v9, v11

    goto :goto_8

    :cond_14
    move-object v9, v12

    :goto_8
    aput-object v9, v8, v4

    const-string/jumbo v9, "updateSize: use %s as preferred output image format"

    .line 113
    invoke-static {v1, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    if-eqz v0, :cond_1c

    .line 115
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    invoke-static {v0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 116
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->hasStandaloneHeicStreamConfigurations()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 117
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedHeicOutputStreamSizes()Ljava/util/List;

    move-result-object v0

    goto :goto_9

    .line 118
    :cond_15
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(I)Ljava/util/List;

    move-result-object v0

    goto :goto_9

    .line 119
    :cond_16
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0, v2}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(I)Ljava/util/List;

    move-result-object v0

    .line 120
    :goto_9
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 121
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    iget v2, v1, Lcom/android/camera/CameraSize;->width:I

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 122
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v5

    goto :goto_a

    :cond_17
    move v2, v4

    .line 123
    :goto_a
    invoke-static {v0, v1, v2}, Lcom/android/camera/PictureSizeManager;->getBestSquareSize(Ljava/util/List;IZ)Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    .line 124
    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 125
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find a proper squared Jpeg size, defaults to: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Lcom/android/camera/CameraSize;

    invoke-direct {v0, v1, v1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    goto :goto_b

    :cond_18
    if-eqz v6, :cond_19

    .line 127
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    goto :goto_b

    .line 128
    :cond_19
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v1}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    .line 129
    :cond_1a
    :goto_b
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v10, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    .line 130
    invoke-static {v6}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    move-object v6, v11

    goto :goto_c

    :cond_1b
    move-object v6, v12

    :goto_c
    aput-object v6, v2, v4

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    aput-object v6, v2, v5

    const-string/jumbo v6, "updateSize: algoUp picture size (%s): %s"

    .line 131
    invoke-static {v1, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1c
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v3, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    if-eqz v3, :cond_1d

    const-string v11, "YUV"

    goto :goto_d

    :cond_1d
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    .line 133
    invoke-static {v3}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_d

    :cond_1e
    move-object v11, v12

    :goto_d
    aput-object v11, v2, v4

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    aput-object v3, v2, v10

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    aput-object v3, v2, v7

    const-string/jumbo v3, "updateSize: picture size (%s): %s, preview size: %s, sensor raw image size: %s"

    .line 134
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v1, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    .line 136
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->checkDisplayOrientation()V

    return-void

    .line 137
    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SuperMoon Mode must with SAT!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateShotDetermine()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isParallelSessionEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0o0o0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->enablePreviewAsThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableShot2Gallery:Z

    const/16 v0, 0x8

    const/4 v1, 0x4

    .line 4
    sget-object v2, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableParallel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mEnableShot2Gallery="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableShot2Gallery:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " shotType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setShotType(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableShot2Gallery:Z

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setShot2Gallery(Z)V

    return-void
.end method

.method private updateSuperResolution()V
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0oO0()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setSuperResolution(Z)V

    .line 4
    sget-object v1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSuperResolution call setSuperResolution with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateTargetZoom()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->readTargetZoom()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setTargetZoom(F)V

    :cond_0
    return-void
.end method

.method private updateZsl()V
    .locals 4

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0OO:Z

    if-nez v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooO0:Z

    if-nez v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oOoo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_1

    .line 3
    sget-object v1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateZsl setEnableZsl to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setEnableZsl(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic OooO0Oo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setLieIndicatorEnabled(Z)V

    return-void
.end method

.method public synthetic OooO0o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setDeviceOrientation(I)V

    return-void
.end method

.method public checkDisplayOrientation()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_1

    .line 4
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setCameraDisplayOrientation(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_2

    .line 6
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManagerAbstract;->setDisplayOrientation(I)V

    :cond_2
    return-void
.end method

.method public closeCamera()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 5
    iget-boolean v2, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->captureAbortBurst()V

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v3}, Lcom/android/camera2/Camera2Proxy;->setScreenLightCallback(Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;)V

    .line 9
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v3}, Lcom/android/camera2/Camera2Proxy;->setMetaDataCallback(Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;)V

    .line 10
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v3}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v3}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    .line 12
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v0}, Lcom/android/camera2/Camera2Proxy;->setAiASDEnable(Z)V

    .line 13
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isSupportAIIE()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v0}, Lcom/android/camera2/Camera2Proxy;->setAIIEPreviewEnable(Z)V

    .line 15
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->ooOO()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/camera2/Camera2Proxy;->stopPreviewCallback(Z)V

    .line 17
    :cond_2
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->m3ALocked:Z

    .line 18
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v0}, Lcom/android/camera2/Camera2Proxy;->setASDEnable(Z)V

    .line 19
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v0}, Lcom/android/camera2/Camera2Proxy;->setAiMoonEffectEnable(Z)V

    .line 20
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v0}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    .line 21
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v0}, Lcom/android/camera2/Camera2Proxy;->setSuperResolution(Z)V

    .line 22
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v0}, Lcom/android/camera2/Camera2Proxy;->setMfnr(Z)V

    .line 23
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v0}, Lcom/android/camera2/Camera2Proxy;->setColorEnhanceEnable(Z)V

    .line 24
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isParallelCameraSessionMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 25
    iput-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 26
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v1, :cond_4

    .line 28
    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setAeAwbLock(Z)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->destroy()V

    .line 30
    :cond_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->ooOO()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31
    invoke-static {}, Lcom/android/zxing/PreviewDecodeManager;->getInstance()Lcom/android/zxing/PreviewDecodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/PreviewDecodeManager;->quit()V

    .line 32
    :cond_5
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 33
    invoke-virtual {v0, v3}, Lcom/android/camera/LocalParallelService$LocalBinder;->setOnSessionStatusCallBackListener(Lcom/xiaomi/protocol/ISessionStatusCallBackListener;)V

    .line 34
    :cond_6
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 35
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public varargs consumePreference([I)V
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget v3, p1, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/16 v4, 0x18

    if-eq v3, v4, :cond_1

    const/16 v4, 0x19

    if-eq v3, v4, :cond_0

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 2
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateTargetZoom()V

    goto :goto_1

    .line 3
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateASD()V

    goto :goto_1

    .line 4
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateModuleRelated()V

    goto :goto_1

    .line 5
    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateShotDetermine()V

    goto :goto_1

    .line 6
    :sswitch_4
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateAiScene()V

    goto :goto_1

    .line 7
    :sswitch_5
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateMfnr()V

    goto :goto_1

    .line 8
    :sswitch_6
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateSuperResolution()V

    goto :goto_1

    .line 9
    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateZsl()V

    goto :goto_1

    .line 10
    :sswitch_8
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateOIS()V

    goto :goto_1

    .line 11
    :sswitch_9
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateFocusMode()V

    goto :goto_1

    .line 12
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setEvValue()V

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->focusCenter()V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->applyZoomRatio()V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateFocusArea(Z)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updateFilter()V

    goto :goto_1

    .line 17
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->updatePictureAndPreviewSize()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_a
        0xe -> :sswitch_9
        0x14 -> :sswitch_8
        0x16 -> :sswitch_7
        0x1e -> :sswitch_6
        0x22 -> :sswitch_5
        0x24 -> :sswitch_4
        0x2c -> :sswitch_3
        0x37 -> :sswitch_2
        0x46 -> :sswitch_1
        0x4f -> :sswitch_0
    .end sparse-switch
.end method

.method public getBestPictureSize(Ljava/util/List;)Lcom/android/camera/CameraSize;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->getMaxPictureSize()I

    move-result v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera/PictureSizeManager;->initialize(Ljava/util/List;III)V

    .line 2
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1
.end method

.method public getBestPictureSize(Ljava/util/List;F)Lcom/android/camera/CameraSize;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;F)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->getMaxPictureSize()I

    move-result v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera/PictureSizeManager;->initialize(Ljava/util/List;III)V

    .line 4
    invoke-static {p2}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(F)Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1
.end method

.method public getMaxPictureSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOperatingMode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/SuperMoonModule;->mOperatingMode:I

    return v0
.end method

.method public isBlockSnap()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oo0O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string v2, "is shoting super night and discard snap"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isParallelCameraSessionMode()Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_1
    :goto_0
    move v0, v1

    goto :goto_3

    :cond_2
    move v0, v3

    goto :goto_3

    .line 9
    :cond_3
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mIsSatFallback:I

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->shouldCheckSatFallbackState()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0, v3}, Lcom/android/camera2/Camera2Proxy;->isParallelBusy(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v3

    :goto_2
    if-nez v0, :cond_7

    .line 13
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isAnyRequestBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 15
    :cond_7
    :goto_3
    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->isZooming:Z

    if-nez v2, :cond_a

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->needKeepBitmapTexture()Z

    move-result v2

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    if-nez v2, :cond_a

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v2

    if-eqz v2, :cond_a

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 18
    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->isCaptureBusy(Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 19
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isQueueFull()Z

    move-result v0

    if-nez v0, :cond_a

    .line 20
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isInCountDown()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mWaitSaveFinish:Z

    if-nez v0, :cond_a

    .line 21
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isParallelSessionConfigured()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e

    .line 22
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    move v1, v3

    :cond_a
    :goto_4
    return v1
.end method

.method public isDoingAction()Z
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0000o()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string v2, "[ALGOUP|MMCAMERA] Doing action"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    return v1

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isParallelCameraSessionMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->isParallelBusy(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-nez v0, :cond_6

    .line 8
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isAnyRequestBlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_3

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->isCaptureBusy(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 11
    :cond_6
    :goto_3
    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->isZooming:Z

    if-nez v2, :cond_8

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->needKeepBitmapTexture()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    if-nez v2, :cond_8

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v2

    if-eqz v2, :cond_8

    if-nez v0, :cond_8

    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isQueueFull()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mWaitSaveFinish:Z

    if-nez v0, :cond_8

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isInCountDown()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v1, v3

    :cond_8
    :goto_4
    return v1
.end method

.method public isParallelSessionEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRecorderRecording()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isShowAeAfLockIndicator()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->m3ALocked:Z

    return v0
.end method

.method public isShowCaptureButton()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportFocusShoot()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_focus_shoot_key"

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isGlobalSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUnIncorruptible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->isCaptureBusy(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isZoomEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onAllHalFrameReceived()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/SuperMoonModule;->getCountDownTimes(I)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    :cond_0
    return-void
.end method

.method public onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_8

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.VOICE_COMMAND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "on Receive voice control broadcast action intent"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p2}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getVoiceControlAction()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object p2, p0, Lcom/android/camera/module/SuperMoonModule;->mBroadcastIntent:Landroid/content/Intent;

    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x4bbb5326    # 2.4553036E7f

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "CAPTURE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isBlockSnap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 8
    sget-object p1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "on voice control: block snap"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iput-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mBroadcastIntent:Landroid/content/Intent;

    return-void

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonClick(I)V

    .line 11
    iput-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mBroadcastIntent:Landroid/content/Intent;

    .line 12
    :goto_1
    invoke-static {p2}, Lcom/android/camera/CameraIntentManager;->removeInstance(Landroid/content/Intent;)V

    goto :goto_2

    .line 13
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.camera.action.SPEECH_SHUTTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "on Receive speech shutter broadcast action intent"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isBlockSnap()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    sget-object p1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "on Speech shutter: block snap"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const/16 v0, 0x6e

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonClick(I)V

    .line 18
    :cond_7
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onCameraOpened()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onCameraOpened()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->initZoomMapControllerIfNeeded()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeFocusManager()V

    .line 4
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->SUPER_MOON_TYPES_INIT:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->startPreview()V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/SuperMoonModule;->mOnResumeTime:J

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mUltraWideAELocked:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setCharacteristics(Lcom/android/camera2/CameraCapabilities;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V

    :cond_1
    return-void
.end method

.method public onCaptureCompleted(Z)V
    .locals 3

    .line 1
    sget-object p1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string/jumbo v0, "onCaptureCompleted success=%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCaptureShutter: cameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isParallel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean p1, p1, Lcom/android/camera2/QuickViewParam;->quickShotAnimation:Z

    invoke-direct {p0, p1}, Lcom/android/camera/module/SuperMoonModule;->onShutter(Z)V

    return-void
.end method

.method public onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->updateFlashStateTimeLock()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    sget-object p2, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onCaptureStart: departed"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOo()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRequireTuningData(Z)V

    .line 6
    :cond_0
    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAbandoned(Z)V

    return-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mServiceStatusListener:Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setServiceStatusListener(Lcom/android/camera/LocalParallelService$ServiceStatusListener;)V

    .line 8
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v0

    .line 9
    invoke-virtual {p2}, Lcom/android/camera2/CaptureStartParam;->getQuickViewParam()Lcom/android/camera2/QuickViewParam;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 10
    iget-boolean v2, v2, Lcom/android/camera2/QuickViewParam;->quickShotAnimation:Z

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 11
    :goto_0
    iget-boolean v4, p0, Lcom/android/camera/module/SuperMoonModule;->mEnabledPreviewThumbnail:Z

    if-nez v4, :cond_5

    .line 12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000ooO()Z

    move-result v4

    if-nez v4, :cond_3

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getBurstNum()I

    move-result v4

    if-gt v4, v1, :cond_5

    .line 15
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/camera/module/SuperMoonModule;->onShutter(Z)V

    .line 16
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setPlayToneOnCaptureStart(Z)V

    .line 17
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v6, 0xa6

    .line 19
    invoke-virtual {v4, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 20
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getFaceWaterMarkInfos()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 21
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 22
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_6
    move-object v6, v5

    .line 23
    :goto_1
    invoke-virtual {p2}, Lcom/android/camera2/CaptureStartParam;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    .line 24
    sget-object v4, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCaptureStart: inputSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v8, v4, v7}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isIn3OrMoreSatMode()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isInMultiSurfaceSatMode()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_7
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    .line 26
    invoke-virtual {p2, v4}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 27
    :cond_8
    iput-object p2, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    .line 28
    invoke-direct {p0, p2}, Lcom/android/camera/module/SuperMoonModule;->updateOutputSize(Lcom/android/camera/CameraSize;)V

    .line 29
    :cond_9
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    if-nez v4, :cond_a

    .line 30
    invoke-virtual {p2}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object v4

    goto :goto_2

    .line 31
    :cond_a
    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object v4

    .line 32
    :goto_2
    sget-object v7, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onCaptureStart: outputSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 33
    iget v7, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    .line 34
    invoke-static {v7}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v9

    .line 35
    sget-object v10, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onCaptureStart: outputFormat = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_b

    const-string v12, "HEIC"

    goto :goto_3

    :cond_b
    const-string v12, "JPEG"

    :goto_3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/camera/module/SuperMoonModule;->clampQuality(I)I

    move-result v9

    .line 37
    sget-object v10, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onCaptureStart: outputQuality = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v10}, Lcom/android/camera2/CameraCapabilities;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v10

    .line 39
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    iput-object v11, p0, Lcom/android/camera/module/SuperMoonModule;->mFocalLengths:[F

    .line 40
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    iput-object v10, p0, Lcom/android/camera/module/SuperMoonModule;->mApertures:[F

    .line 41
    new-instance v10, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    iget-object v11, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 42
    invoke-virtual {v11}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object v11

    .line 43
    invoke-virtual {p2}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object p2

    invoke-direct {v10, v11, p2, v4, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    if-eq v0, v1, :cond_c

    const/16 p2, 0xe

    if-ne v0, p2, :cond_d

    .line 44
    :cond_c
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    iget v0, p2, Lcom/android/camera/CameraSize;->width:I

    iget p2, p2, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v10, v0, p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setRawSize(II)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    .line 45
    :cond_d
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0Oo0o()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 46
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p2}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getWaterMarkAppliedList()Ljava/util/List;

    move-result-object p2

    const-string v0, "device"

    invoke-static {v0, p2}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 47
    invoke-virtual {p2}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getWaterMarkAppliedList()Ljava/util/List;

    move-result-object p2

    const-string/jumbo v0, "watermark"

    invoke-static {v0, p2}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_f

    :cond_e
    move p2, v1

    goto :goto_4

    :cond_f
    move p2, v3

    .line 48
    :goto_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 49
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mLocation:Landroid/location/Location;

    goto :goto_5

    :cond_10
    move-object v0, v5

    .line 50
    :goto_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v4

    invoke-virtual {v10, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasDualWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v4

    .line 51
    invoke-virtual {v4, p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setVendorWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 52
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isFrontMirror()Z

    move-result v4

    invoke-virtual {p2, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setMirror(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 53
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPortraitLightingPattern()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLightingPattern(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 54
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera/effect/EffectController;->getEffectForSaving(Z)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    const/4 v4, -0x1

    iget v7, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    if-ne v4, v7, :cond_11

    move v7, v3

    .line 55
    :cond_11
    invoke-virtual {p2, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget v4, p0, Lcom/android/camera/module/SuperMoonModule;->mJpegRotation:I

    .line 56
    invoke-virtual {p2, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget v4, p0, Lcom/android/camera/module/SuperMoonModule;->mShootRotation:F

    .line 57
    invoke-virtual {p2, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setShootRotation(F)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget v4, p0, Lcom/android/camera/module/SuperMoonModule;->mShootOrientation:I

    .line 58
    invoke-virtual {p2, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setShootOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 59
    invoke-virtual {v4}, Lcom/android/camera2/CameraCapabilities;->isSupportZeroDegreeOrientationImage()Z

    move-result v4

    invoke-virtual {p2, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSupportZeroDegreeOrientationImage(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 60
    invoke-virtual {v4}, Lcom/android/camera2/CameraCapabilities;->isSupportIspHeif()Z

    move-result v4

    invoke-virtual {p2, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSupportIspHeif(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 61
    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLocation(Landroid/location/Location;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 62
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getTimeWatermark(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    :cond_12
    invoke-virtual {p2, v5}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setTimeWaterMarkString(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 63
    invoke-virtual {p2, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFaceWaterMarkList(Ljava/util/List;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 64
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setAgeGenderAndMagicMirrorWater(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFrontCamera(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 66
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isPictureUseDualFrontCamera()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setBokehFrontCamera(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mAlgorithmName:Ljava/lang/String;

    .line 67
    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setAlgorithmName(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 68
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 69
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->getSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSuffix(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 70
    invoke-static {}, Lcom/android/camera/module/SuperMoonModule;->getTiltShiftMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setTiltShiftMode(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 71
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSaveGroushotPrimitiveOn()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSaveGroupshotPrimitive(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 72
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setDeviceWatermarkParam(Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 73
    invoke-virtual {p2, v9}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegQuality(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 74
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPrefix(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 75
    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setMoonMode(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mMajorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 76
    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setMajorAIWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mMinorItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 77
    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setMinorAIWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object p2

    .line 78
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p2

    .line 79
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    if-nez v2, :cond_13

    .line 80
    iget-boolean p2, p0, Lcom/android/camera/module/SuperMoonModule;->mEnabledPreviewThumbnail:Z

    if-nez p2, :cond_13

    move p2, v1

    goto :goto_6

    :cond_13
    move p2, v3

    :goto_6
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedThumbnail(Z)V

    .line 81
    iget p2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCurrentModuleIndex(I)V

    .line 82
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz p2, :cond_14

    .line 83
    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->isAdaptiveSnapshotSizeInSatModeSupported()Z

    move-result p2

    if-eqz p2, :cond_14

    move p2, v1

    goto :goto_7

    :cond_14
    move p2, v3

    .line 84
    :goto_7
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAdaptiveSnapshotSize(Z)V

    .line 85
    invoke-virtual {p1, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setLiveShotTask(Z)V

    .line 86
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOo()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 87
    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRequireTuningData(Z)V

    .line 88
    :cond_15
    sget-object p2, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCaptureStart: isParallel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", shotType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v8, p2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-boolean p2, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    if-eqz p2, :cond_16

    .line 92
    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/SuperMoonModule;->beginParallelProcess(Lcom/xiaomi/camera/core/ParallelTaskData;Z)V

    .line 93
    :cond_16
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 94
    sget-object p2, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "send msg: reset hand gesture"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x39

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_17
    return-object p1
.end method

.method public onCreate(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 2
    new-instance p1, Lcom/android/camera/module/SuperMoonModule$MainHandler;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/camera/module/SuperMoonModule$MainHandler;-><init>(Lcom/android/camera/module/SuperMoonModule;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/SuperMoonModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {p1, p2}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->onCameraOpened()V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mFirstCreateCapture:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/zoommap/ZoomMapController;->onModuleDestroy()V

    :cond_0
    return-void
.end method

.method public onExtraMenuVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method public onFocusAreaChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isSupportAFSaliency()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/saliencychecker/SaliencyChecker;->getInstance()Lcom/android/camera/saliencychecker/SaliencyChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/saliencychecker/SaliencyChecker;->hasInit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    sget-object p1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onFocusAreaChanged isAFSaliencyCheckSeparation requestReadPixels"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->requestReadPixels(I)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->updateFocusAreaForAF(II)V

    return-void
.end method

.method public onFocusStateChanged(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_a

    if-eq v0, v1, :cond_8

    if-eq v0, v3, :cond_2

    goto/16 :goto_2

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isFocusing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5
    iput v2, p0, Lcom/android/camera/module/SuperMoonModule;->mAFEndLogTimes:I

    const-string/jumbo v1, "onAutoFocusMoving start"

    goto :goto_0

    .line 6
    :cond_3
    iget v0, p0, Lcom/android/camera/module/SuperMoonModule;->mAFEndLogTimes:I

    if-nez v0, :cond_4

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAutoFocusMoving end. result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget v0, p0, Lcom/android/camera/module/SuperMoonModule;->mAFEndLogTimes:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/camera/module/SuperMoonModule;->mAFEndLogTimes:I

    .line 9
    :cond_4
    :goto_0
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 10
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    if-ne v0, v3, :cond_6

    goto :goto_1

    .line 13
    :cond_6
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    goto/16 :goto_2

    .line 15
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->m3ALocked:Z

    if-nez v0, :cond_d

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    goto/16 :goto_2

    .line 17
    :cond_8
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 18
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getElapsedTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "AutoFocusTime=%1$dms focused=%2$b"

    .line 20
    invoke-static {v3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    .line 21
    :cond_a
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getElapsedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v4

    const-string v6, "FocusTime=%1$dms focused=%2$b"

    .line 23
    invoke-static {v5, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_b

    .line 25
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-eq v0, v3, :cond_b

    .line 26
    invoke-virtual {p0, v4}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 27
    :cond_b
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    .line 28
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 29
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->m3ALocked:Z

    if-eqz p1, :cond_d

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomRatioBetweenUltraAndWide()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mUltraCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz p1, :cond_c

    .line 31
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isAFRegionSupported()Z

    move-result p1

    .line 32
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFocusStateChanged: isUltraFocusAreaSupported = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_c

    .line 33
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1, v2}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    .line 34
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setFocusDistance(F)V

    .line 35
    iput-boolean v4, p0, Lcom/android/camera/module/SuperMoonModule;->mUltraWideAELocked:Z

    .line 36
    :cond_c
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1, v4}, Lcom/android/camera2/Camera2Proxy;->lockExposure(Z)V

    :cond_d
    :goto_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x58

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-eq p1, v2, :cond_6

    const/16 v4, 0x19

    if-eq p1, v4, :cond_6

    const/16 v4, 0x1b

    if-eq p1, v4, :cond_3

    const/16 v4, 0x42

    if-eq p1, v4, :cond_3

    const/16 v4, 0x50

    if-eq p1, v4, :cond_1

    const/16 v4, 0x57

    if-eq p1, v4, :cond_6

    if-eq p1, v0, :cond_6

    goto :goto_3

    .line 2
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 3
    invoke-virtual {p0, v3, v3}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonFocus(ZI)V

    :cond_2
    return v3

    .line 4
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_5

    .line 5
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    const v0, 0x7f1207c6

    if-eqz p1, :cond_4

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFingerprintCaptureEnable()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x1e

    .line 7
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    .line 9
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/android/camera/module/SuperMoonModule;->performKeyClicked(ILjava/lang/String;IZ)V

    goto :goto_0

    :cond_4
    const/16 p1, 0x28

    .line 10
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    .line 12
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/android/camera/module/SuperMoonModule;->performKeyClicked(ILjava/lang/String;IZ)V

    :cond_5
    :goto_0
    return v3

    :cond_6
    if-eq p1, v2, :cond_8

    if-ne p1, v0, :cond_7

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    :goto_1
    move v0, v3

    .line 13
    :goto_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->isExternal()Z

    move-result v1

    .line 15
    :cond_9
    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZIZ)Z

    move-result v0

    if-eqz v0, :cond_a

    return v3

    .line 16
    :cond_a
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromKeyBack()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(FF)V
    .locals 1

    float-to-int p1, p1

    float-to-int p2, p2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/module/SuperMoonModule;->onSingleTapUp(IIZ)V

    .line 3
    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->m3ALockSupported:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 4
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getFocusMode()I

    move-result p1

    const-string p2, "manual"

    invoke-static {p2}, Lcom/android/camera/constant/AutoFocus;->convertToFocusMode(Ljava/lang/String;)I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->lockAEAF()V

    :cond_1
    return-void
.end method

.method public onMeteringAreaChanged(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCropRegionConsiderZoomRatio()Landroid/graphics/Rect;

    move-result-object v4

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v5

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    .line 5
    invoke-virtual {v1, v4, v5}, Lcom/android/camera/module/loader/camera2/FocusManager2;->getMeteringAreas(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/module/loader/camera2/FocusManager2;->getMeteringOrFocusAreas(IILandroid/graphics/Rect;Landroid/graphics/Rect;Z)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->setAERegions([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    :cond_2
    :goto_1
    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 0

    .line 1
    iget-boolean p3, p0, Lcom/android/camera/module/BaseModule;->isGradienterOn:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p3}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/SensorStateManager;->isDeviceLying()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/SuperMoonModule;->setOrientation(II)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mIsStartCount:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->tryRemoveCountDownMessage()V

    .line 3
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    return-void
.end method

.method public onPictureTakenFinished(ZJ)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPictureTakenFinished: succeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const p1, 0x7f120037

    .line 2
    invoke-static {p1}, Lcom/android/camera/module/common/ModuleUtil;->announceForAccessibility(I)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lcom/android/camera/module/SuperMoonModule;->mCaptureStartTime:J

    sub-long/2addr v0, v2

    .line 5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "attr_time_stamp"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->m3ALocked:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "attr_3A_Locked"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/SuperMoonModule;->mLocation:Landroid/location/Location;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    move v7, p1

    goto :goto_0

    :cond_0
    move v7, p2

    :goto_0
    iget v8, p0, Lcom/android/camera/module/SuperMoonModule;->mCurrentAiScene:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(Ljava/util/Map;IZLcom/android/camera/fragment/beauty/BeautyValues;ZI)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p1

    iget p3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v1, p1, p3}, Lcom/android/camera/statistic/CameraStatUtils;->trackTakePictureCost(JZI)V

    .line 10
    invoke-static {}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackCaptureTimeEnd()V

    .line 11
    sget-object p1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCaptureStartTime(from onShutterButtonClick start to jpegCallback finished) = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mLongPressedAutoFocus:Z

    if-eqz p1, :cond_1

    .line 13
    iput-boolean p2, p0, Lcom/android/camera/module/SuperMoonModule;->mLongPressedAutoFocus:Z

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->cancelLongPressedAutoFocus()V

    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->handleSaveFinishIfNeed()V

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->needKeepBitmapTexture()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mBlockQuickShot:Z

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->resetStatusToIdle()V

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x32

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera/module/SuperMoonModule;->mMapRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/camera/zoommap/ZoomMapController;->getZoomMapROI(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

    iget-object v1, p0, Lcom/android/camera/module/SuperMoonModule;->mMapRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/camera/zoommap/ZoomMapController;->setMapRect(Landroid/graphics/Rect;)V

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getAsdDetectedModes(Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    .line 6
    iget v0, p0, Lcom/android/camera/module/SuperMoonModule;->mCurrentAiScene:I

    if-eq v0, p1, :cond_3

    .line 7
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consumeAiSceneResult mCurrentAiScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/SuperMoonModule;->mCurrentAiScene:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput p1, p0, Lcom/android/camera/module/SuperMoonModule;->mCurrentAiScene:I

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/16 v1, 0x23

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->setAiMoonEffectEnable(Z)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->resumePreviewInWorkThread()V

    :cond_3
    return-void
.end method

.method public onPreviewPixelsRead([BIIIZ)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_a

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    goto/16 :goto_5

    .line 1
    :cond_0
    sget-object v3, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onPreviewPixelsRead E"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v3, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getCameraRotation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 4
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 5
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v4

    const/4 v11, 0x1

    if-eqz v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/SuperMoonModule;->isFrontMirror()Z

    move-result v4

    if-nez v4, :cond_1

    move v7, v11

    goto :goto_0

    :cond_1
    move v7, v3

    .line 7
    :goto_0
    iget-object v4, v1, Lcom/android/camera/module/SuperMoonModule;->mCameraDeviceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 8
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_4

    .line 9
    :cond_2
    iget v6, v1, Lcom/android/camera/module/SuperMoonModule;->mShootRotation:F

    iget v8, v1, Lcom/android/camera/module/BaseModule;->mOrientation:I

    int-to-float v8, v8

    .line 10
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v9

    iget v10, v1, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v10}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v10

    .line 11
    invoke-static/range {v5 .. v10}, Lcom/android/camera/Util;->cropBitmap(Landroid/graphics/Bitmap;FZFZZ)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_3

    .line 12
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPreviewPixelsRead: bitmap is null!"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    monitor-exit v4

    return-void

    .line 14
    :cond_3
    sget-object v6, Lcom/android/camera/EncodingQuality;->NORMAL:Lcom/android/camera/EncodingQuality;

    invoke-virtual {v6, v3}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v5

    if-nez v5, :cond_4

    .line 15
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPreviewPixelsRead: jpegData is null!"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    monitor-exit v4

    return-void

    .line 17
    :cond_4
    iget-object v6, v1, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v6}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    .line 18
    iget v6, v1, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    .line 19
    sget-object v7, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onPreviewPixelsRead: isParallel = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", shot2Gallery = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lcom/android/camera/module/SuperMoonModule;->mEnableShot2Gallery:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", format = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {v6}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "HEIC"

    goto :goto_1

    :cond_5
    const-string v9, "JPEG"

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", data = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v7, v1, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v7}, Lcom/android/camera2/Camera2Proxy;->getParallelShotSavePath()Ljava/lang/String;

    move-result-object v17

    .line 23
    new-instance v7, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget v13, v1, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v16, -0x1

    iget-wide v8, v1, Lcom/android/camera/module/SuperMoonModule;->mCaptureStartTime:J

    move-object v12, v7

    move-wide/from16 v18, v8

    invoke-direct/range {v12 .. v19}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    .line 25
    iget-boolean v8, v1, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    if-nez v8, :cond_7

    iget-boolean v8, v1, Lcom/android/camera/module/SuperMoonModule;->mEnableShot2Gallery:Z

    if-eqz v8, :cond_6

    goto :goto_2

    :cond_6
    move v8, v3

    goto :goto_3

    :cond_7
    :goto_2
    move v8, v11

    :goto_3
    invoke-virtual {v7, v8}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedThumbnail(Z)V

    .line 26
    invoke-virtual {v7, v5, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    .line 27
    new-instance v3, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v0, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v0, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v9, Landroid/util/Size;

    invoke-direct {v9, v0, v2}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v3, v5, v8, v9, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    iget v0, v1, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 28
    invoke-virtual {v3, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    .line 30
    invoke-virtual {v7, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    .line 31
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 32
    invoke-virtual {v7, v11}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRequireTuningData(Z)V

    .line 33
    :cond_8
    iget-object v0, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v2, v2, v2}, Lcom/android/camera/storage/ImageSaver;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z

    .line 34
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPreviewPixelsRead X"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 36
    :cond_9
    :goto_4
    :try_start_1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPreviewPixelsRead: module is dead"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    .line 38
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 39
    :cond_a
    :goto_5
    invoke-super/range {p0 .. p5}, Lcom/android/camera/module/BaseModule;->onPreviewPixelsRead([BIIIZ)V

    return-void
.end method

.method public onPreviewSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    return-void
.end method

.method public onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreviewSessionSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreviewSessionSuccess null session."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    sget-object p1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreviewSessionSuccess module not alive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->needKeepBitmapTexture()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    if-eqz p1, :cond_3

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/android/camera/module/SuperMoonModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/module/SuperMoonModule$4;-><init>(Lcom/android/camera/module/SuperMoonModule;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->previewWhenSessionSuccess()V

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_5

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1, v1}, Lcom/android/camera/CameraIntentManager;->isOpenOnly(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.intent.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->isIntentPhotoDone()Z

    move-result p1

    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->setIntnetPhotoDone(Z)V

    goto :goto_0

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    .line 2
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

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

.method public onShutterButtonClick(I)V
    .locals 8

    const/16 v0, 0xac

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->onUserInteraction()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x6e

    if-ne p1, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->onUserInteraction()V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_1

    const-string/jumbo v2, "speech_shutter_desc"

    .line 5
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideRecommendDescTip(Ljava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/module/SuperMoonModule;->getCountDownTimes(I)I

    move-result v1

    if-lez v1, :cond_2

    .line 7
    invoke-direct {p0, v1, p1}, Lcom/android/camera/module/SuperMoonModule;->startCount(II)V

    return-void

    .line 8
    :cond_2
    new-instance v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;

    invoke-direct {v1}, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;-><init>()V

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isShowBacklightSelector()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->isASDBacklitTip:Z

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->checkShutterCondition()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFixShotTimeEnabled(Z)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(JIJLjava/lang/String;)V

    .line 15
    sget-object p1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShutterButtonClick "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 16
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    const/4 v0, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->prepareCapture(ZI)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->doSnap()V

    .line 19
    iput-boolean v1, p0, Lcom/android/camera/module/SuperMoonModule;->mFirstCreateCapture:Z

    .line 20
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isFocusingSnapOnFinish()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    :cond_5
    return-void
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 0

    return-void
.end method

.method public onShutterButtonLongClick()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isDoingAction()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterButtonLongClick: doing action"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mIsSatFallback:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->shouldCheckSatFallbackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterButtonLongClick: sat fallback"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mLongPressedAutoFocus:Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->unlockAEAF()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->requestAutoFocus()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    return v1
.end method

.method public onShutterButtonLongClickCancel(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mLongPressedAutoFocus:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonClick(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mLongPressedAutoFocus:Z

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->cancelLongPressedAutoFocus()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSingleTapUp mPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; mCamera2Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; isInCountDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isInCountDown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; getCameraState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; mMultiSnapStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; SuperMoonModule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_6

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hasCameraException()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 7
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 8
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isPreviewReady()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isInCountDown()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 16
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mIsStartCount:Z

    .line 19
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->tryRemoveCountDownMessage()V

    .line 20
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMeteringAreaSupported:Z

    if-nez v0, :cond_4

    return-void

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    .line 22
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 24
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->unlockAEAF()V

    const/4 p1, 0x2

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    iget p2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onSingleTapUp(IIZ)V

    .line 27
    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mFocusAreaSupported:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mMeteringAreaSupported:Z

    if-eqz p1, :cond_5

    .line 28
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 29
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xe3

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;

    .line 30
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xaf

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-nez p3, :cond_6

    if-eqz p1, :cond_6

    const/16 p2, 0xa5

    .line 31
    invoke-virtual {p1, p2}, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->subscribe(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->onPreviewComing()V

    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mWaitSaveFinish:Z

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onThumbnailClicked: CannotGotoGallery...mWaitSaveFinish"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableShot2Gallery:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    sget-object p1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onThumbnailClicked: DoingAction.."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isCannotGotoGallery()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    sget-object p1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onThumbnailClicked: CannotGotoGallery..."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->gotoGallery()V

    :cond_4
    return-void
.end method

.method public onWaitingFocusFinished()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isBlockSnap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mIsSatFallback:I

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->shouldCheckSatFallbackState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iput-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mWaitingSnapshot:Z

    .line 5
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string v1, "capture check: sat fallback"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mWaitingSnapshot:Z

    .line 7
    iput-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mWaitingZoomEndSnapshot:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/SuperMoonModule;->startNormalCapture(I)V

    :goto_0
    return v2
.end method

.method public onZoomingActionEnd(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onZoomingActionEnd(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/ui/zoom/ZoomingAction;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xb6

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->updateZoomIndexsButton()V

    :cond_0
    return-void
.end method

.method public onZoomingActionStart(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onZoomingActionStart(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/ui/zoom/ZoomingAction;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideExtraMenu()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xe3

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;

    if-eqz p1, :cond_1

    const/16 v0, 0xa8

    .line 6
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->subscribe(I)V

    :cond_1
    return-void
.end method

.method public onZoomingActionUpdate(FI)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/zoommap/ZoomMapController;->onZoomRatioUpdate(F)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onZoomingActionUpdate(FI)Z

    move-result p1

    return p1
.end method

.method public pausePreview()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pausePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->pausePreview()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    return-void
.end method

.method public performKeyClicked(ILjava/lang/String;IZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->isDoingAction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreBottom()V

    :cond_1
    const/4 v0, 0x1

    if-nez p3, :cond_4

    if-eqz p4, :cond_3

    .line 4
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonFocus(ZI)V

    const p3, 0x7f1207c7

    .line 5
    invoke-static {p3}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x2

    const/16 p2, 0x14

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/SuperMoonModule;->startCount(II)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonClick(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p1}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonFocus(ZI)V

    .line 9
    iget-boolean p2, p0, Lcom/android/camera/module/SuperMoonModule;->mVolumeLongPress:Z

    if-eqz p2, :cond_5

    .line 10
    iput-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mVolumeLongPress:Z

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonLongClickCancel(Z)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->isInCountDown()Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz p4, :cond_5

    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mVolumeLongPress:Z

    if-nez p1, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->onShutterButtonLongClick()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mVolumeLongPress:Z

    if-nez p1, :cond_5

    .line 14
    iget-boolean p1, p0, Lcom/android/camera/module/SuperMoonModule;->mLongPressedAutoFocus:Z

    if-eqz p1, :cond_5

    .line 15
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mVolumeLongPress:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public reShowMoon()V
    .locals 0

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
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc3

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xa4
        0xae
        0xea
        0xe3
        0xd4
        0xfe
    .end array-data
.end method

.method public resetStatusToIdle()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reset Status to Idle"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mBlockQuickShot:Z

    return-void
.end method

.method public resumePreview()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/SuperMoonModule;->previewWhenSessionSuccess()V

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraQuickShotEnable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mBlockQuickShot:Z

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->setFrameAvailable(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->releaseFakeSurfaceIfNeed()V

    :cond_1
    if-eqz p1, :cond_2

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraLyingHintOn()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00O0O;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00O0O;-><init>(Lcom/android/camera/module/SuperMoonModule;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public startAiLens()V
    .locals 0

    return-void
.end method

.method public startPreview()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setActivityHashCode(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setMetaDataCallback(Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    .line 6
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreview: set PictureSize with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureFormat(I)V

    .line 9
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreview: set PictureFormat to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mOutputPictureFormat:I

    .line 10
    invoke-static {v2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HEIC"

    goto :goto_0

    :cond_0
    const-string v2, "JPEG"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 13
    sget-object v1, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPreview: surfaceTexture = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 14
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/module/BaseModule;->mSurfaceCreatedTimestamp:J

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 15
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v4, v2

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/camera/module/SuperMoonModule;->mConfigRawStream:Z

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mZoomMapController:Lcom/android/camera/zoommap/ZoomMapController;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0}, Lcom/android/camera/zoommap/ZoomMapController;->createZoomMapSurfaceIfNeeded()Landroid/view/Surface;

    move-result-object v1

    :cond_3
    move-object v7, v1

    .line 19
    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->getOperatingMode()I

    move-result v8

    .line 20
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v9, p0, Lcom/android/camera/module/SuperMoonModule;->mEnableParallelSession:Z

    move-object v10, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/camera2/Camera2Proxy;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    :cond_4
    return-void
.end method

.method public tryRemoveCountDownMessage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mCountdownDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mCountdownDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/SuperMoonModule;->mCountdownDisposable:Lio/reactivex/disposables/Disposable;

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/SuperMoonModule$2;

    invoke-direct {v1, p0}, Lcom/android/camera/module/SuperMoonModule$2;-><init>(Lcom/android/camera/module/SuperMoonModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    .line 2
    sget-object v0, Lcom/android/camera/module/SuperMoonModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterProtocol"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc3

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method
