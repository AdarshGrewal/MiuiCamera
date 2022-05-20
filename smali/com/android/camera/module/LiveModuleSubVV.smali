.class public Lcom/android/camera/module/LiveModuleSubVV;
.super Lcom/android/camera/module/BaseModule;
.source "LiveModuleSubVV.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;
.implements Lcom/android/camera2/Camera2Proxy$FocusCallback;
.implements Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;
.implements Lcom/android/camera/protocol/ModeProtocol$CameraAction;
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;
.implements Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/LiveModuleSubVV$LiveAsdConsumer;,
        Lcom/android/camera/module/LiveModuleSubVV$MainHandler;
    }
.end annotation


# static fields
.field public static final BEAUTY_SWITCH:I = 0x8

.field public static final FILTER_SWITCH:I = 0x2

.field public static final FRAME_RATE:I = 0x1e

.field public static final STICKER_SWITCH:I = 0x4

.field public static final TAG:Ljava/lang/String; = "LiveModuleSubVV"


# instance fields
.field public m3ALocked:Z

.field public mBaseFileName:Ljava/lang/String;

.field public mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field public mCaptureWaterMarkStr:Ljava/lang/String;

.field public mCtaNoticeFragment:Lcom/android/camera/fragment/CtaNoticeFragment;

.field public mFaceDetectionEnabled:Z

.field public mFaceDetectionStarted:Z

.field public mIsPreviewing:Z

.field public mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field public mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

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

.field public mOldOriginVolumeStream:I

.field public mOnResumeTime:J

.field public mQuality:I

.field public mSaved:Z

.field public mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field public mShowFace:Z

.field public mTouchFocusStartingTime:J

.field public mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;


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
    iput-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mShowFace:Z

    const/4 v1, 0x5

    .line 3
    iput v1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mQuality:I

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mIsPreviewing:Z

    .line 5
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 6
    new-instance v0, Lcom/android/camera/module/LiveModuleSubVV$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/LiveModuleSubVV$3;-><init>(Lcom/android/camera/module/LiveModuleSubVV;)V

    iput-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/LiveModuleSubVV;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mOnResumeTime:J

    return-wide v0
.end method

.method public static synthetic access$100(Lcom/android/camera/module/LiveModuleSubVV;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->setOrientationParameter()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/module/LiveModuleSubVV;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/LiveModuleSubVV;->handleUpdateFaceView(ZZ)V

    return-void
.end method

.method public static synthetic access$402(Lcom/android/camera/module/LiveModuleSubVV;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/android/camera/module/LiveModuleSubVV;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/LiveModuleSubVV;->consumeAsdSceneResult(I)V

    return-void
.end method

.method public static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$700(Lcom/android/camera/module/LiveModuleSubVV;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mTouchFocusStartingTime:J

    return-wide v0
.end method

.method private consumeAsdSceneResult(I)V
    .locals 0

    return-void
.end method

.method private createName(JI)Ljava/lang/String;
    .locals 1

    if-gtz p3, :cond_0

    .line 1
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance p1, Ljava/text/SimpleDateFormat;

    const p2, 0x7f1209d6

    .line 3
    invoke-static {p2}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4
    invoke-virtual {p1, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mBaseFileName:Ljava/lang/String;

    return-object p1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mBaseFileName:Ljava/lang/String;

    return-object p1
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

.method private genContentValues(IIZ)Landroid/content/ContentValues;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-direct {p0, v0, v1, p2}, Lcom/android/camera/module/LiveModuleSubVV;->createName(JI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p2, :cond_0

    .line 3
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    const-string p2, "_%d"

    invoke-static {v3, p2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/Util;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p1}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x2f

    if-eqz p3, :cond_1

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/storage/Storage;->CAMERA_TEMP_DIRECTORY:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 8
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/camera/storage/Storage;->CAMERA_TEMP_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/camera/Util;->createFile(Ljava/io/File;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    const/4 v3, 0x2

    .line 10
    sget-object v4, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    const-string v1, "genContentValues: path=%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v1, Landroid/content/ContentValues;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v2, "title"

    .line 12
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_display_name"

    .line 13
    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mime_type"

    .line 14
    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_data"

    .line 15
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget p2, p2, Lcom/android/camera/CameraSize;->width:I

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget p2, p2, Lcom/android/camera/CameraSize;->height:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "resolution"

    .line 18
    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    const-wide/16 v2, 0x0

    cmpl-double p2, p2, v2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p2

    cmpl-double p2, p2, v2

    if-eqz p2, :cond_3

    .line 21
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 22
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_3
    return-object v1
.end method

.method private handleUpdateFaceView(ZZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v3

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p2, p0, Lcom/android/camera/module/LiveModuleSubVV;->mFaceDetectionStarted:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2}, Lcom/android/camera2/Camera2Proxy;->getFocusMode()I

    move-result p2

    if-eq v0, p2, :cond_1

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

.method private initLiveConfig()I
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    iput-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/impl/ImplFactory;->initModulePersistent(Lcom/android/camera/ActivityBase;[I)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    iput-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveGenericControl;->prepare()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveGenericControl;->initResource()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveGenericControl;->getAuthResult()I

    move-result v0

    return v0
.end method

.method private initMetaParser()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/module/LiveModuleSubVV$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/LiveModuleSubVV$2;-><init>(Lcom/android/camera/module/LiveModuleSubVV;)V

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

    new-instance v1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;-><init>(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/LiveModuleSubVV$LiveAsdConsumer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/LiveModuleSubVV$LiveAsdConsumer;-><init>(Lcom/android/camera/module/LiveModuleSubVV;Lcom/android/camera/module/LiveModuleSubVV$1;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mMetaDataDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private isEisOn()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isEISPreviewSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSaving()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMProcessing;->getCurrentState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onProcessingSateChanged(I)V
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->pausePreview()V

    :goto_0
    return-void
.end method

.method private previewWhenSessionSuccess()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 2
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->FUN_TYPES_ON_PREVIEW_SUCCESS:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method private setOrientation(II)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 3
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-eq p1, p2, :cond_1

    .line 4
    iput p2, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->setOrientationParameter()V

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

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooooOO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooooOO;-><init>(Lcom/android/camera/module/LiveModuleSubVV;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_0
    return-void
.end method

.method private shouldApplyUltraWideLDC()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->shouldUltraWideVideoLDCBeVisibleInMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraWideVideoLDCEnabled()Z

    move-result v0

    return v0
.end method

.method private showAuthError()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/LiveModuleSubVV$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/LiveModuleSubVV$1;-><init>(Lcom/android/camera/module/LiveModuleSubVV;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startVideoRecording()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOn()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraAudioRestriction(Z)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xd4

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 5
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    .line 6
    iget-object v2, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordControl;->startRecordingNewFragment()V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/LiveModuleSubVV;->mOldOriginVolumeStream:I

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-static {v2}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 11
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onStart()V

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->listenPhoneState(Z)V

    .line 13
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 14
    iget-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->m3ALocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "attr_3A_Locked"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 15
    iget-object v7, p0, Lcom/android/camera/module/LiveModuleSubVV;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(Ljava/util/Map;IZLcom/android/camera/fragment/beauty/BeautyValues;ZI)V

    return-void
.end method

.method private trackLiveRecordingParams()V
    .locals 0

    return-void
.end method

.method private trackLiveVideoParams()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveModuleSub;->trackVideoParams()V

    return-void
.end method

.method private updateBeauty()V
    .locals 0

    return-void
.end method

.method private updateDeviceOrientation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setDeviceOrientation(I)V

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

.method private updateFilter()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    .line 2
    sget-object v1, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

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

    return-void
.end method

.method private updateFocusMode()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method private updateFpsRange()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v1, Landroid/util/Range;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    return-void
.end method

.method private updateLiveRelated()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/Camera2Proxy;->startPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    :cond_0
    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const-class v1, Landroid/graphics/SurfaceTexture;

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$LiveGenericControl;->getPreviewRatio()F

    move-result v1

    .line 4
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    float-to-double v3, v1

    const/4 v5, 0x0

    invoke-static {v5, v2, v0, v3, v4}, Lcom/android/camera/Util;->getOptimalPreviewSize(ZILjava/util/List;D)Lcom/android/camera/CameraSize;

    .line 5
    new-instance v2, Lcom/android/camera/CameraSize;

    const/16 v3, 0xf00

    const/16 v4, 0x870

    invoke-direct {v2, v3, v4}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v2, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 6
    sget-object v2, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "previewSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    .line 8
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v3

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v4

    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displaySize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    if-eqz v1, :cond_0

    .line 12
    sget-object v1, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlgorithmPreviewSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 14
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewFormat(I)V

    .line 15
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setPreviewMaxImages(I)V

    .line 16
    :cond_0
    iget v1, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method private updateUltraWideLDC()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->shouldApplyUltraWideLDC()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setUltraWideLDC(Z)V

    return-void
.end method

.method private updateVideoStabilization()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->isEisOn()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "videoStabilization: EIS"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableEIS(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isEISPreviewSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "videoStabilization: OIS"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setEnableEIS(Z)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/module/LiveModuleSubVV;->onProcessingSateChanged(I)V

    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/Emitter;->onComplete()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mMetaDataDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setMetaDataCallback(Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->stopPreviewCallback(Z)V

    .line 10
    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setAeAwbLock(Z)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->destroy()V

    :cond_3
    return-void
.end method

.method public varargs consumePreference([I)V
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_d

    aget v3, p1, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9

    const/4 v4, 0x5

    if-eq v3, v4, :cond_8

    const/16 v4, 0x32

    if-eq v3, v4, :cond_c

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_7

    const/16 v4, 0x42

    if-eq v3, v4, :cond_6

    const/16 v4, 0x13

    if-eq v3, v4, :cond_5

    const/16 v4, 0x14

    if-eq v3, v4, :cond_c

    const/16 v4, 0x18

    if-eq v3, v4, :cond_4

    const/16 v4, 0x19

    if-eq v3, v4, :cond_3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_c

    const/16 v4, 0x23

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_c

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_c

    const/16 v4, 0x36

    if-eq v3, v4, :cond_1

    const/16 v4, 0x37

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no consumer for this updateType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->updateUltraWideLDC()V

    goto :goto_1

    .line 4
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->updateVideoStabilization()V

    goto :goto_1

    .line 5
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateExposureMeteringMode()V

    goto :goto_1

    .line 6
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->updateFocusMode()V

    goto :goto_1

    .line 7
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->updateBeauty()V

    goto :goto_1

    .line 8
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setEvValue()V

    goto :goto_1

    .line 9
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->updateFlashPreference()V

    goto :goto_1

    .line 10
    :pswitch_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->updateAntiBanding(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateModuleRelated()V

    goto :goto_1

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->updateLiveRelated()V

    goto :goto_1

    .line 13
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->updateDeviceOrientation()V

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->focusCenter()V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->applyZoomRatio()V

    goto :goto_1

    .line 16
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->updateFpsRange()V

    goto :goto_1

    .line 17
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateThermalLevel()V

    goto :goto_1

    .line 18
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateBackSoftLightPreference()V

    goto :goto_1

    .line 19
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->updateFace()V

    goto :goto_1

    .line 20
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateFocusArea(Z)V

    goto :goto_1

    .line 21
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->updateFilter()V

    goto :goto_1

    .line 22
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->updatePictureAndPreviewSize()V

    :cond_c
    :goto_1
    :pswitch_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_2
        :pswitch_8
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_8
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public doReverse()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordControl;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 2
    sget-object v1, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const-string v2, "doReverse"

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordControl;->deleteLastFragment()V

    :cond_1
    :goto_0
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

.method public fillFeatureControl(Lcom/android/camera/module/loader/StartControl;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->fillFeatureControl(Lcom/android/camera/module/loader/StartControl;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public is3ALocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->m3ALocked:Z

    return v0
.end method

.method public isAEAFLockSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCameraSwitchingDuringZoomingAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDoingAction()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

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
    iget-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mFaceDetectionStarted:Z

    return v0
.end method

.method public isNeedMute()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordControl;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelectingCapturedResult()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowCaptureButton()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->isSupportFocusShoot()Z

    move-result v0

    return v0
.end method

.method public isSupportFocusShoot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUnIncorruptible()Z
    .locals 1

    const/4 v0, 0x0

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

.method public judgeTapableRectByUiStyle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lockAEAF()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const-string v1, "lockAEAF"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mAeLockSupported:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setAeAwbLock(Z)V

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/module/LiveModuleSubVV;->m3ALocked:Z

    return-void
.end method

.method public onActionStop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/LiveModuleSubVV;->stopVideoRecording(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->isSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->doLaterReleaseIfNeed()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/data/observeable/VMProcessing;->getCurrentState()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->showExitConfirm()V

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 4
    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCameraError()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rx/CameraSchedulers;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/LiveModuleSubVV;->stopVideoRecording(Z)V

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onCameraError()V

    return-void
.end method

.method public onCameraOpened()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onCameraOpened()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->initLiveConfig()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeFocusManager()V

    .line 4
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->FUN_TYPES_INIT:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->startPreview()V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v2, Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v0, v2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMProcessing;

    iput-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/LiveModuleSubVV;->mOnResumeTime:J

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->initMetaParser()V

    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->showAuthError()V

    return-void
.end method

.method public onCreate(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 2
    new-instance p1, Lcom/android/camera/module/LiveModuleSubVV$MainHandler;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/camera/module/LiveModuleSubVV$MainHandler;-><init>(Lcom/android/camera/module/LiveModuleSubVV;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/LiveModuleSubVV;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {p1, p2}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->onCameraOpened()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x1f

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/camera/SensorStateManager;->setRotationVectorEnabled(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mCtaNoticeFragment:Lcom/android/camera/fragment/CtaNoticeFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/fragment/CtaNoticeFragment;->dismiss()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v1, 0x2d

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setRotationVectorEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setTTARSensorEnabled(Z)V

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
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000()Z

    move-result p2

    if-eqz p2, :cond_2

    array-length p2, p1

    if-lez p2, :cond_2

    const/4 p2, 0x0

    aget-object p2, p1, p2

    iget p2, p2, Lcom/android/camera2/CameraHardwareFace;->faceType:I

    const v0, 0xface

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v1

    .line 5
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFaces(I[Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_3
    :goto_0
    return-void
.end method

.method public onFocusStateChanged(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_7

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_3

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getElapsedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "AutoFocusTime=%1$dms focused=%2$b"

    .line 6
    invoke-static {v5, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isIsDepthFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isFocusing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string/jumbo v1, "onAutoFocusMoving start"

    .line 9
    :cond_4
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 10
    sget-object v0, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 13
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->m3ALocked:Z

    if-nez v0, :cond_9

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    goto :goto_0

    .line 15
    :cond_7
    sget-object v0, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getElapsedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "FocusTime=%1$dms focused=%2$b"

    .line 17
    invoke-static {v5, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_8

    .line 19
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-eq v0, v3, :cond_8

    .line 20
    invoke-virtual {p0, v4}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 21
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 23
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/android/camera/module/LiveModuleSubVV;->m3ALocked:Z

    if-eqz p1, :cond_9

    .line 24
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1, v4}, Lcom/android/camera2/Camera2Proxy;->lockExposure(Z)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

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
    const/16 v0, 0x58

    const/16 v3, 0x18

    if-eq p1, v3, :cond_a

    const/16 v4, 0x19

    if-eq p1, v4, :cond_a

    const/16 v4, 0x1b

    if-eq p1, v4, :cond_6

    const/16 v4, 0x42

    if-eq p1, v4, :cond_6

    const/16 v4, 0x57

    if-eq p1, v4, :cond_a

    if-eq p1, v0, :cond_a

    const/16 v0, 0x2bc

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2bd

    if-eq p1, v0, :cond_2

    goto/16 :goto_3

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isPostProcessing()Z

    move-result v0

    if-nez v0, :cond_f

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0, v2}, Lcom/android/camera/module/LiveModuleSubVV;->stopVideoRecording(Z)V

    goto/16 :goto_3

    :cond_3
    return v2

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isPostProcessing()Z

    move-result v0

    if-nez v0, :cond_f

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p0, v2}, Lcom/android/camera/module/LiveModuleSubVV;->stopVideoRecording(Z)V

    goto/16 :goto_3

    :cond_5
    return v2

    .line 9
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_f

    .line 10
    iget-boolean p1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mIsPreviewing:Z

    if-eqz p1, :cond_7

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xe6

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    if-eqz p1, :cond_9

    .line 12
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->onKeyCodeCamera()V

    goto :goto_0

    .line 13
    :cond_7
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    const v0, 0x7f1207c6

    if-eqz p1, :cond_8

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFingerprintCaptureEnable()Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x1e

    .line 15
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    .line 17
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/LiveModuleSubVV;->performKeyClicked(ILjava/lang/String;IZ)V

    goto :goto_0

    :cond_8
    const/16 p1, 0x28

    .line 18
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    .line 20
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/LiveModuleSubVV;->performKeyClicked(ILjava/lang/String;IZ)V

    :cond_9
    :goto_0
    return v1

    .line 21
    :cond_a
    iget-object v4, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordControl;->canFinishRecording()Z

    move-result v4

    .line 22
    iget-boolean v5, p0, Lcom/android/camera/module/LiveModuleSubVV;->mIsPreviewing:Z

    if-eqz v5, :cond_b

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    if-eq p1, v3, :cond_d

    if-ne p1, v0, :cond_c

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_2

    :cond_d
    :goto_1
    move v0, v1

    .line 23
    :goto_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 24
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->isExternal()Z

    move-result v2

    .line 25
    :cond_e
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZIZ)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 26
    :cond_f
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 1
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xab

    .line 2
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromKeyBack()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/LiveModuleSubVV$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/module/LiveModuleSubVV$4;-><init>(Lcom/android/camera/module/LiveModuleSubVV;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/LiveModuleSubVV;->setOrientation(II)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$LiveGenericControl;->onOrientationChanged(III)V

    .line 4
    :cond_0
    iget-boolean p3, p0, Lcom/android/camera/module/BaseModule;->isGradienterOn:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p3}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/SensorStateManager;->isDeviceLying()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/LiveModuleSubVV;->setOrientation(II)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    .line 2
    sget-object v0, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->removeMessages()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->tryRemoveCountDownMessage()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetScreenOn()V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->closeCamera()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onPauseButtonClick()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordControl;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordControl;->onRecordingNewFragmentFinished()V

    if-eqz v0, :cond_1

    .line 5
    sget-object v1, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPauseButtonClick onPause"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPause()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->trackLiveRecordingParams()V

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordControl;->startRecordingNextFragment()V

    if-eqz v0, :cond_1

    .line 9
    sget-object v1, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPauseButtonClick onResume"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onResume()V

    :cond_1
    :goto_0
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
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz v0, :cond_1

    .line 3
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
    sget-object p1, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

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
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->previewWhenSessionSuccess()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mOldOriginVolumeStream:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mIsPreviewing:Z

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 6
    invoke-interface {v1, v2, v2, v0, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configLiveVV(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;ZZ)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->doLaterReleaseIfNeed()V

    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mOldOriginVolumeStream:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mIsPreviewing:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->startSaveToLocal()V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8
    invoke-interface {v1, v3, v3, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configLiveVV(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;ZZ)V

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->doLaterReleaseIfNeed()V

    return-void
.end method

.method public onShineChanged(I)V
    .locals 2

    const/16 v0, 0xef

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xd

    aput v1, p1, v0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unknown configItem changed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onShutterButtonClick(I)V
    .locals 1

    .line 1
    sget-object p1, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordControl;->getNextRecordStep()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object p1, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick stopVideoRecording"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/module/LiveModuleSubVV;->stopVideoRecording(Z)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkCallingState()Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    sget-object p1, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const-string v0, "ignore in calling state"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd4

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 10
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    .line 11
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    return-void

    .line 12
    :cond_3
    sget-object p1, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick startVideoRecording"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->startVideoRecording()V

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xab

    .line 15
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz p1, :cond_4

    .line 16
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()V

    :cond_4
    :goto_1
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
    .locals 0

    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    sget-object p1, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onSingleTapUp: frame not available"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 11
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mTouchFocusStartingTime:J

    .line 14
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->unlockAEAF()V

    .line 17
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    iget p2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onSingleTapUp(IIZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onThermalConstrained()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onThermalConstrained()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->onReviewCancelClicked()V

    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->gotoGallery()V

    :cond_1
    return-void
.end method

.method public onWaitingFocusFinished()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBlockSnap()Z

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

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onZoomingActionEnd(I)V
    .locals 0

    return-void
.end method

.method public onZoomingActionStart(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideExtraMenu()V

    :cond_0
    return-void
.end method

.method public pausePreview()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->pausePreview()V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->forceTurnFlashOffAndPausePreview()V

    :goto_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    return-void
.end method

.method public performKeyClicked(ILjava/lang/String;IZ)V
    .locals 0

    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const-string p2, "ignore volume key"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/LiveModuleSubVV;->onShutterButtonClick(I)V

    :cond_1
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
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xa4
        0xae
        0xea
        0xd4
    .end array-data

    :array_1
    .array-data 4
        0xa4
        0xea
        0xd4
    .end array-data
.end method

.method public resumePreview()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->previewWhenSessionSuccess()V

    return-void
.end method

.method public setDeparted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->setDeparted()V

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/rx/CameraSchedulers;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/Oooooo0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/Oooooo0;-><init>(Lcom/android/camera/module/LiveModuleSubVV;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->setFrameAvailable(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooooOo;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooooOo;-><init>(Lcom/android/camera/module/LiveModuleSubVV;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/data/observeable/VMProcessing;->startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V

    :cond_0
    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->isSaving()Z

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

.method public showPreview()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mSaved:Z

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, v1, v0, v0}, Lcom/android/camera/module/LiveModuleSubVV;->genContentValues(IIZ)Landroid/content/ContentValues;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xe6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    .line 4
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->onCombinePrepare(Landroid/content/ContentValues;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mIsPreviewing:Z

    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mFaceDetectionStarted:Z

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
    iput-boolean v1, p0, Lcom/android/camera/module/LiveModuleSubVV;->mFaceDetectionStarted:Z

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->startFaceDetection()V

    .line 5
    invoke-direct {p0, v1, v1}, Lcom/android/camera/module/LiveModuleSubVV;->updateFaceView(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startPreview()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setMetaDataCallback(Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-static {v0}, Lcom/android/camera/Util;->convertSizeToQuality(Lcom/android/camera/CameraSize;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mQuality:I

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mSurfaceCreatedTimestamp:J

    .line 8
    sget-object v0, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const-string v1, "LiveModule, startPreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->checkDisplayOrientation()V

    .line 10
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v2, v1, Lcom/android/camera/CameraSize;->width:I

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v5

    invoke-interface {v0, v2, v1, v4, v5}, Lcom/android/camera/protocol/ModeProtocol$LiveModuleSub;->initPreview(IIILcom/android/camera/CameraScreenNail;)V

    .line 13
    new-instance v2, Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveModuleSub;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->isSelectingCapturedResult()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result v6

    const/4 v7, 0x0

    move-object v8, p0

    .line 17
    invoke-virtual/range {v1 .. v8}, Lcom/android/camera2/Camera2Proxy;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    :cond_2
    return-void
.end method

.method public startSaveToLocal()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mSaved:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->getSaveContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->getSaveVideoFile()Lcom/android/camera/storage/mediastore/VideoFile;

    move-result-object v0

    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/android/camera/module/LiveModuleSubVV;->mSaved:Z

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/storage/mediastore/VideoFile;->setDateTaken(J)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "datetaken"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x0

    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v4, v1

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object v3

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 12
    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/storage/ImageSaver;->addVideo(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;ZZLjava/util/List;)Landroid/net/Uri;

    :cond_4
    :goto_0
    return-void
.end method

.method public stopFaceDetection(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mFaceDetectionStarted:Z

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
    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/LiveModuleSubVV;->updateFaceView(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopVideoRecording(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "stopVideoRecording fromRelease=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-static {v1, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->setCameraAudioRestriction(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    .line 6
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPause()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordControl;->onRecordingNewFragmentFinished()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordControl;->canFinishRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;->trackLiveVideoParams()V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->showPreview()V

    .line 11
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    .line 12
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->listenPhoneState(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public unRegisterModulePersistProtocol()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterModulePersistProtocol()V

    .line 2
    sget-object v0, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterModulePersistProtocol"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->requestRender()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachModulePersistent()V

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
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method

.method public unlockAEAF()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/LiveModuleSubVV;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unlockAEAF"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->m3ALocked:Z

    .line 3
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mAeLockSupported:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setAeAwbLock(Z)V

    return-void
.end method

.method public updateFace()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->enableFaceDetection()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v4, p0, Lcom/android/camera/module/LiveModuleSubVV;->mShowFace:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setSkipDrawFace(Z)V

    :cond_2
    if-eqz v0, :cond_3

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mFaceDetectionEnabled:Z

    if-nez v0, :cond_4

    .line 5
    iput-boolean v3, p0, Lcom/android/camera/module/LiveModuleSubVV;->mFaceDetectionEnabled:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/LiveModuleSubVV;->startFaceDetection()V

    goto :goto_2

    .line 7
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/LiveModuleSubVV;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p0, v3}, Lcom/android/camera/module/LiveModuleSubVV;->stopFaceDetection(Z)V

    .line 9
    iput-boolean v2, p0, Lcom/android/camera/module/LiveModuleSubVV;->mFaceDetectionEnabled:Z

    :cond_4
    :goto_2
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
