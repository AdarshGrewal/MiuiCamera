.class public Lcom/android/camera/features/mimojis/commen/module/MimojiModule;
.super Lcom/android/camera/module/BaseModule;
.source "MimojiModule.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;
.implements Lcom/android/camera/bluetooth/IBluetoothHeadsetConnectionState;
.implements Lcom/android/camera2/Camera2Proxy$FocusCallback;
.implements Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;
.implements Lcom/android/camera/protocol/ModeProtocol$CameraAction;
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;
.implements Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;
.implements Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/commen/module/MimojiModule$LiveAsdConsumer;,
        Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;
    }
.end annotation


# static fields
.field public static final BEAUTY_SWITCH:I = 0x8

.field public static final FILTER_SWITCH:I = 0x2

.field public static final IGNORE_GIF_TIME:I = 0x3e8

.field public static final STICKER_SWITCH:I = 0x4

.field public static final STOP_RECORD_FOROM_BACK:I = 0x2

.field public static final STOP_RECORD_FOROM_NORMAL:I = 0x0

.field public static final STOP_RECORD_FOROM_RELEASE:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field public static final VALID_VIDEO_TIME:I = 0x3e8


# instance fields
.field public gson:Lcom/google/gson/Gson;

.field public m3ALocked:Z

.field public mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

.field public mAutoFlashTargetState:Z

.field public mBaseFileName:Ljava/lang/String;

.field public mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field public mCaptureWaterMarkStr:Ljava/lang/String;

.field public mCurrentAsdScene:I

.field public mDeviceOrientation:I

.field public mDisableSingleTapUp:Z

.field public mFaceDetectionEnabled:Z

.field public mFaceDetectionStarted:Z

.field public mIsLowLight:Z

.field public mIsStopKaraoke:Z

.field public mLastFlashMode:Ljava/lang/String;

.field public mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

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

.field public mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

.field public mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

.field public mMimojiVideoEditor:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

.field public mOldOriginVolumeStream:I

.field public mOnResumeTime:J

.field public mPendingAsdScene:I

.field public mQuality:I

.field public mRecordTime:J

.field public mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field public mShowFace:Z

.field public mTouchFocusStartingTime:J

.field public mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

.field public misFaceLocationOk:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    const/4 v0, -0x2

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mPendingAsdScene:I

    const/4 v0, -0x3

    .line 3
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mCurrentAsdScene:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mShowFace:Z

    const/4 v1, 0x5

    .line 5
    iput v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mQuality:I

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mIsStopKaraoke:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mDisableSingleTapUp:Z

    const/16 v0, 0x5a

    .line 8
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mDeviceOrientation:I

    .line 9
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->gson:Lcom/google/gson/Gson;

    .line 10
    new-instance v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$2;-><init>(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    const-string v1, "200"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 v1, 0xc1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    new-array p0, v3, [I

    aput v1, p0, v2

    .line 3
    invoke-interface {v0, v2, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    goto :goto_0

    :cond_0
    new-array p0, v3, [I

    aput v1, p0, v2

    .line 4
    invoke-interface {v0, v3, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic OooO0oo()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideSwitchTip()V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mOnResumeTime:J

    return-wide v0
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getScreenDelay()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->silenceOuterAudio()V

    return-void
.end method

.method public static synthetic access$1402(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p1
.end method

.method public static synthetic access$1500(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mimojiLightDetect(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->consumeAsdSceneResult(I)V

    return-void
.end method

.method public static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1800(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1900(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setOrientationParameter()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    return p0
.end method

.method public static synthetic access$2100(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mTouchFocusStartingTime:J

    return-wide v0
.end method

.method public static synthetic access$2200(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/module/loader/camera2/FocusManager2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/module/loader/camera2/FocusManager2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/module/loader/camera2/FocusManager2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    return-object p0
.end method

.method public static synthetic access$2502(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mDeviceRotation:F

    return p1
.end method

.method public static synthetic access$2600(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    return p0
.end method

.method public static synthetic access$2700(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/BaseModule;->isGradienterOn:Z

    return p0
.end method

.method public static synthetic access$2800(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/Camera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mDeviceRotation:F

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->handleUpdateFaceView(ZZ)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/Camera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/CameraSize;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private consumeAsdSceneResult(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mPendingAsdScene:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 2
    iput v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mPendingAsdScene:I

    move p1, v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mCurrentAsdScene:I

    if-eq v0, p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isDoingAction()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updateAsdSceneResult(I)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method private doLaterReleaseIfNeed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

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
    return v1
.end method

.method private enterAsdScene(I)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setAutoFlashTargetState(Z)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "105"

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-eq p1, v3, :cond_4

    const-string v3, "3"

    const-string v7, "1"

    if-eqz p1, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 5
    :pswitch_0
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6
    invoke-virtual {p0, v6}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setAutoFlashTargetState(Z)V

    .line 7
    invoke-interface {v1, v0, v7, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(ILjava/lang/String;Z)V

    new-array p1, v6, [I

    aput v5, p1, v0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_1

    .line 9
    :pswitch_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "103"

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p0, v6}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setAutoFlashTargetState(Z)V

    .line 13
    invoke-interface {v1, v0, v7, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(ILjava/lang/String;Z)V

    .line 14
    sget-object p1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string v1, "enterAsdScene(): turn off HDR as FLASH has higher priority than HDR"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v6, [I

    aput v5, p1, v0

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setAutoFlashTargetState(Z)V

    .line 17
    invoke-interface {v1, v0, v7, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(ILjava/lang/String;Z)V

    new-array p1, v6, [I

    aput v5, p1, v0

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p0, v6}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setAutoFlashTargetState(Z)V

    .line 21
    :cond_3
    sget-object p1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string v2, "alertFlash"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-interface {v1, v0, v7, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(ILjava/lang/String;Z)V

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v6, [I

    aput v5, p1, v0

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private exitAsdScene(I)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, -0x1

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0x8

    const-string v5, "1"

    if-eqz p1, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p1

    iget v6, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, v6}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v6, "3"

    .line 4
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "105"

    .line 5
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "103"

    .line 6
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    :cond_0
    invoke-interface {v0, v1, v5, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(ILjava/lang/String;Z)V

    :cond_1
    new-array p1, v3, [I

    aput v2, p1, v4

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "101"

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "2"

    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "5"

    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    invoke-interface {v0, v1, v5, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    :pswitch_1
    new-array p1, v3, [I

    aput v2, p1, v4

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getExtraMimojiPara()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x2

    const-string v4, ""

    if-eqz v0, :cond_15

    .line 3
    iget-object v5, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isMimojiFu()Z

    move-result v5

    const-string v6, "attr_mimoji_cartoon"

    const-string v7, "attr_mimoji_category"

    const-string/jumbo v8, "person"

    const-string v9, " "

    const-string v10, "custom"

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getJustInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuAvatar()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 5
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getJustInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuAvatar()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getInfos()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getJustInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuAvatar()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getDir()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "info.json"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    :cond_0
    iget-object v11, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->gson:Lcom/google/gson/Gson;

    const-class v12, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuAvatarInfo;

    invoke-virtual {v11, v5, v12}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuAvatarInfo;

    .line 9
    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    array-length v11, v0

    if-gt v11, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v9, v0

    sub-int/2addr v9, v1

    aget-object v9, v0, v9

    .line 11
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    array-length v1, v0

    sub-int/2addr v1, v3

    aget-object v9, v0, v1

    goto :goto_0

    :cond_2
    array-length v9, v0

    sub-int/2addr v9, v1

    aget-object v9, v0, v9

    :cond_3
    :goto_0
    const-string v0, "cartoon"

    .line 12
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v8, v0

    goto :goto_1

    :cond_4
    const-string v0, "human"

    .line 13
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v5, :cond_6

    .line 14
    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuAvatarInfo;->isEidted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_edited"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_5
    move-object v8, v10

    .line 16
    :cond_6
    :goto_1
    invoke-static {v9}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->translateForHumanTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 18
    :cond_7
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 20
    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 21
    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object v8, v10

    goto :goto_2

    .line 22
    :cond_8
    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_BEAR:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v8, "bear"

    goto :goto_2

    .line 23
    :cond_9
    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_ROYAN:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v8, "royan"

    goto :goto_2

    .line 24
    :cond_a
    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_RABBIT:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string/jumbo v8, "rabbit"

    goto :goto_2

    .line 25
    :cond_b
    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_RABBIT2:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string/jumbo v8, "rabbit2"

    goto :goto_2

    .line 26
    :cond_c
    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_FROG:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v8, "frog"

    goto :goto_2

    .line 27
    :cond_d
    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_CAT:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v8, "cat"

    goto :goto_2

    :cond_e
    move-object v8, v4

    .line 28
    :cond_f
    :goto_2
    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    if-eqz v0, :cond_10

    .line 29
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getFrame()I

    move-result v1

    if-lez v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_hat"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_10
    move-object v1, v8

    :goto_3
    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_11
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_12
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getAvatar()Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v5, 0x0

    goto :goto_4

    .line 32
    :cond_13
    invoke-virtual {v1}, Lcom/arcsoft/avatar2/AvatarEngine;->getExtraSceneName()Ljava/lang/String;

    move-result-object v5

    :goto_4
    if-eqz v1, :cond_15

    .line 33
    new-instance v6, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    invoke-direct {v6}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;-><init>()V

    .line 34
    invoke-virtual {v1, v6}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    .line 35
    iget v1, v6, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHeadwearStyleID:I

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->isExtraResource(I)Z

    move-result v1

    const-string v7, "attr_mimoji_extra_scene"

    if-eqz v1, :cond_14

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHeadwearStyleID:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    if-eqz v0, :cond_15

    .line 37
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->isIsPreHuman()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_15
    :goto_5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    const-string v1, "null"

    if-nez v0, :cond_16

    move-object v0, v1

    goto :goto_6

    .line 40
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getTimbreId()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    const-string v5, "attr_mimoji_change_timbre"

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    if-nez v0, :cond_17

    goto :goto_7

    .line 42
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBgId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    const-string v0, "attr_mimoji_change_background"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private getRequestFlashMode()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v1

    const-string v2, "0"

    const-string v3, "105"

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v1, v4}, Lcom/android/camera/MutexModeManager;->isHdrSupportTorch(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    .line 6
    :cond_0
    iget v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mCurrentAsdScene:I

    const/16 v4, 0x9

    if-ne v1, v4, :cond_3

    const-string v1, "3"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "2"

    return-object v0

    .line 8
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "1"

    return-object v0

    :cond_2
    const-string v1, "103"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "101"

    return-object v0

    .line 10
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    iget v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mCurrentAsdScene:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_4

    const-string v0, "104"

    return-object v0

    :cond_4
    const/16 v3, 0xb

    if-ne v1, v3, :cond_5

    const-string v0, "106"

    return-object v0

    :cond_5
    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    return-object v2

    :cond_6
    return-object v0
.end method

.method private handleHaloFlash(Ljava/lang/String;I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mLastFlashMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mLastFlashMode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x48

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1, v1}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mLastFlashMode:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v4, 0x69

    if-ne v0, v4, :cond_2

    .line 5
    invoke-static {p1, v1}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget p2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, v3, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return v2

    .line 8
    :cond_2
    invoke-static {p1, v1}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_5

    const/16 p1, 0x68

    if-eq p2, p1, :cond_4

    const/16 p1, 0x6a

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    if-eq p2, v4, :cond_5

    if-eq p2, v2, :cond_5

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget p2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, v3, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 11
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget p2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, v3, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    :goto_1
    return v1
.end method

.method private handleUpdateFaceView(ZZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v3

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p2, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mFaceDetectionStarted:Z

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

.method private initBluetoothSco()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->silenceOuterAudio()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/SoundSetting;->setSCOMode(Landroid/content/Context;ZI)V

    return-void
.end method

.method private initMetaParser()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string v1, " MimojiModule  initMetaParser "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$1;-><init>(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V

    sget-object v1, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    .line 3
    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/loader/FunctionFaceDetect;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/loader/FunctionFaceDetect;-><init>(Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;-><init>(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 6
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/reactivex/Flowable;->onTerminateDetach()Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$LiveAsdConsumer;

    invoke-direct {v1, p0, p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$LiveAsdConsumer;-><init>(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V

    .line 8
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMetaDataDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initMimojiControl()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mOldOriginVolumeStream:I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isMimojiFu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v4

    new-array v5, v3, [I

    aput v1, v5, v2

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/module/impl/ImplFactory;->initBase(Lcom/android/camera/ActivityBase;[I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v4

    new-array v5, v3, [I

    aput v1, v5, v2

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/module/impl/ImplFactory;->initModulePersistent(Lcom/android/camera/ActivityBase;[I)V

    .line 7
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    .line 9
    iget v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mDeviceOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onDeviceRotationChange(I)V

    .line 10
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xed

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v4

    new-array v5, v3, [I

    aput v1, v5, v2

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/module/impl/ImplFactory;->initModulePersistent(Lcom/android/camera/ActivityBase;[I)V

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    .line 13
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiVideoEditor:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-nez v0, :cond_3

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v4

    new-array v3, v3, [I

    aput v1, v3, v2

    invoke-virtual {v0, v4, v3}, Lcom/android/camera/module/impl/ImplFactory;->initModulePersistent(Lcom/android/camera/ActivityBase;[I)V

    .line 17
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiVideoEditor:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    :cond_3
    return-void
.end method

.method private isMimojiFu()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPreviewEisOn()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

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

.method private isRecordStopping()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiActionState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

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
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf9

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :cond_0
    return v1
.end method

.method private mimojiLightDetect(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->misFaceLocationOk:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->updateMimojiFaceDetectResultTip(Z)V

    :cond_1
    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-eqz v0, :cond_3

    const/16 v2, 0xa2

    .line 6
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->setMimojiDetectTipType(I)V

    .line 7
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mIsLowLight:Z

    .line 9
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-eqz p1, :cond_5

    .line 10
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->updateMimojiFaceDetectResultTip(Z)V

    goto :goto_0

    :cond_4
    :pswitch_0
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mIsLowLight:Z

    .line 12
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-eqz v0, :cond_5

    .line 13
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->updateMimojiFaceDetectResultTip(Z)V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private prepareCapture()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string v1, "isDoingAction: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->turnOnFlash()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setActionState(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setShotType(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera2/Camera2Proxy;->takePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->trackShutterEvents()V

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

.method private setCurrentAsdScene(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mCurrentAsdScene:I

    return-void
.end method

.method private setOrientation(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 4
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-eq p1, p2, :cond_1

    .line 5
    iput p2, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 6
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setOrientationParameter()V

    :cond_1
    :goto_0
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
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isFrameAvailable()Z

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

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0OO/OooO0Oo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0OO/OooO0Oo;-><init>(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_0
    return-void
.end method

.method private setPendingAsdScene(I)V
    .locals 0

    const/4 p1, -0x1

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mPendingAsdScene:I

    return-void
.end method

.method private setWaterMark()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setDualCamWaterMarkEnable(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setDualCamWaterMarkEnable(Z)V

    .line 5
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setTimeWaterMarkEnable(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getTimeWatermark(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mCaptureWaterMarkStr:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setTimeWatermarkValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mCaptureWaterMarkStr:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setTimeWaterMarkEnable(Z)V

    :goto_1
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

.method private showPreview()V
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostPreview()V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->pausePreview()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onReviewCancelClicked()V

    return-void

    .line 12
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf9

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    .line 14
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->startMimojiRecordPreview()V

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_4

    const/16 v1, 0x14

    const/4 v2, 0x0

    new-array v2, v2, [I

    .line 17
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 18
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isMimojiFu()Z

    move-result v0

    if-nez v0, :cond_6

    .line 19
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->releaseRender()V

    goto :goto_1

    .line 20
    :cond_5
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string v1, " mimoji  showPreview contentValues null error"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method

.method private startScreenLight(II)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p2}, Lcom/android/camera/Camera;->setWindowBrightness(I)V

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xc4

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$FullScreenProtocol;

    if-eqz p2, :cond_2

    .line 5
    invoke-interface {p2, p1}, Lcom/android/camera/protocol/ModeProtocol$FullScreenProtocol;->setScreenLightColor(I)V

    .line 6
    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$FullScreenProtocol;->showScreenLight()Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private startVideoRecording()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfb

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setCameraAudioRestriction(Z)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isRecordStopping()Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v0, :cond_7

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mRecordTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto/16 :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOn()V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/camera/SoundSetting;->setNoiseReductionState(Landroid/content/Context;IZ)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/SoundSetting;->setSCOMode(Landroid/content/Context;ZI)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/SoundSetting;->isSupportKaraoke(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/SoundSetting;->isStartKaraoke(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Lcom/android/camera/AudioMonitorPlayer;

    invoke-direct {v0}, Lcom/android/camera/AudioMonitorPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/SoundSetting;->openKaraokeEquipment(Landroid/content/Context;I)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundSetting.isStartKaraoke121"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/SoundSetting;->isStartKaraoke(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "isStartKaraoke"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mIsStopKaraoke:Z

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/AudioMonitorPlayer;->startPlay()V

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/SoundSetting;->openKaraokeState(Landroid/content/Context;I)V

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mOldOriginVolumeStream:I

    .line 19
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 20
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xd4

    .line 21
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 22
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    .line 23
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->initBluetoothSco()V

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-static {v2}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 25
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onStart()V

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->listenPhoneState(Z)V

    .line 27
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkCallingState()Z

    move-result v1

    if-nez v1, :cond_4

    .line 28
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    return-void

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_5

    .line 30
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->onShutterButtonClick(I)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mRecordTime:J

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiVideoEditor:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz v0, :cond_6

    .line 33
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v2, v1, Lcom/android/camera/CameraSize;->height:I

    iget v1, v1, Lcom/android/camera/CameraSize;->width:I

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-interface {v0, v2, v1, v3}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->setRecordParameter(III)V

    .line 34
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->trackShutterEvents()V

    return-void

    .line 35
    :cond_7
    :goto_0
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startVideoRecording: fail "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopScreenLight()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0OO/OooO0o0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0OO/OooO0o0;-><init>(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private trackLiveRecordingParams()V
    .locals 16

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getLiveAllSwitchAllValue()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveMusic()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    aget-object v4, v1, v2

    .line 4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getLiveFilter()I

    move-result v1

    .line 6
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/android/camera/effect/EffectController;->findLiveFilter(Landroid/content/Context;I)Lcom/android/camera/fragment/FragmentFilter$LiveFilterItem;

    move-result-object v1

    .line 7
    iget-object v5, v1, Lcom/android/camera/fragment/FragmentFilter$LiveFilterItem;->directoryName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    and-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_0

    add-int/lit8 v0, v0, 0x2

    :cond_0
    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v6

    .line 8
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveStickerName()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    and-int/lit8 v7, v0, 0x4

    if-nez v7, :cond_2

    add-int/lit8 v0, v0, 0x4

    :cond_2
    move v7, v2

    goto :goto_1

    :cond_3
    move v7, v6

    .line 10
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveSpeedText()Ljava/lang/String;

    move-result-object v9

    const-string v10, "key_live_shrink_face_ratio"

    .line 11
    invoke-static {v10}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v11

    const-string v10, "key_live_enlarge_eye_ratio"

    .line 12
    invoke-static {v10}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v12

    const-string v10, "key_live_smooth_strength"

    .line 13
    invoke-static {v10}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v13

    if-gtz v11, :cond_5

    if-gtz v12, :cond_5

    if-lez v13, :cond_4

    goto :goto_2

    :cond_4
    move v10, v6

    goto :goto_3

    :cond_5
    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-nez v6, :cond_6

    add-int/lit8 v0, v0, 0x8

    :cond_6
    move v10, v2

    .line 14
    :goto_3
    iget-object v6, v1, Lcom/android/camera/fragment/FragmentFilter$LiveFilterItem;->directoryName:Ljava/lang/String;

    move-object/from16 v1, p0

    iget v14, v1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mQuality:I

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v15

    .line 16
    invoke-static/range {v3 .. v15}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveRecordingParams(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIZ)V

    .line 17
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setLiveAllSwitchAddValue(I)V

    return-void
.end method

.method private trackShutterEvents()V
    .locals 7

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->m3ALocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "attr_3A_Locked"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(Ljava/util/Map;IZLcom/android/camera/fragment/beauty/BeautyValues;ZI)V

    return-void
.end method

.method private updateAsdSceneResult(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update asd scene result,newResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mCurrentAsdScene:I

    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->exitAsdScene(I)V

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setCurrentAsdScene(I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->enterAsdScene(I)V

    return-void
.end method

.method private updateBeauty()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPreview()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;->resetAll()V

    .line 5
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBeauty(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

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
    sget-object v1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

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
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10e

    goto :goto_0

    :cond_0
    const/16 v2, 0x5a

    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v4, v3, Lcom/android/camera/CameraSize;->width:I

    iget v5, v3, Lcom/android/camera/CameraSize;->height:I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v6

    move v3, v4

    move v4, v5

    move v5, v6

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->initEngine(IIIIZ)V

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0OoO0o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/Camera2Proxy;->startPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    :cond_1
    return-void
.end method

.method private updateMimojiVideoCache()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0OO/OooO0OO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0OO/OooO0OO;-><init>(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const-class v1, Landroid/graphics/SurfaceTexture;

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/android/camera/Util;->getRatio(Ljava/lang/String;)F

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v2

    const/16 v3, 0x438

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 6
    iget v4, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    float-to-double v5, v1

    new-instance v7, Lcom/android/camera/CameraSize;

    const/16 v1, 0x5a0

    invoke-direct {v7, v1, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    move v3, v4

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lcom/android/camera/Util;->getOptimalPreviewSize(ZILjava/util/List;DLcom/android/camera/CameraSize;)Lcom/android/camera/CameraSize;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 7
    iget v4, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    float-to-double v5, v1

    new-instance v7, Lcom/android/camera/CameraSize;

    const/16 v1, 0x780

    invoke-direct {v7, v1, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    move v3, v4

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lcom/android/camera/Util;->getOptimalPreviewSize(ZILjava/util/List;DLcom/android/camera/CameraSize;)Lcom/android/camera/CameraSize;

    move-result-object v1

    .line 8
    :goto_0
    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 9
    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    .line 10
    sget-object v2, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

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

    const/16 v2, 0x10

    const/16 v3, 0x9

    .line 11
    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v2

    float-to-double v2, v2

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v4

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v5

    .line 12
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 13
    sget-object v2, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaySize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewFormat(I)V

    .line 16
    iget v0, v1, Lcom/android/camera/CameraSize;->width:I

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method private updateUltraWideLDC()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->shouldApplyUltraWideLDC()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setUltraWideLDC(Z)V

    return-void
.end method

.method private updateVideoStabilization()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableEIS(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    return-void
.end method


# virtual methods
.method public synthetic OooO0Oo()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->deleteMimojiCache()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->startSaveToLocal(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic OooO0o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreWindowBrightness()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FullScreenProtocol;

    .line 4
    sget-object v1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopScreenLight: protocol = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mHandler = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$FullScreenProtocol;->hideScreenLight()V

    :cond_1
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

.method public synthetic OooO0oO()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPreview()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiPanelState()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_DEAL_CACHE_FILE:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_DEAL_CACHE_FILE:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiVideoEditor:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz v1, :cond_3

    .line 8
    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->combineVideoAudio(Ljava/lang/String;I)V

    goto :goto_0

    .line 9
    :cond_2
    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    .line 11
    :cond_3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 12
    :cond_4
    sget-object v1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string v2, "mimoji void updateMimojiVideoCache[]"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "MIMOJI"

    const-string v2, "mp4"

    .line 13
    invoke-static {v1, v2}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/camera/storage/mediastore/ScopedStorageUtil;->copy2ShareFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 16
    invoke-virtual {p0, v2, v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->startSaveToLocal(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    sget-object v1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimoji void updateMimojiVideoCache[] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->deleteMimojiCache()V

    :cond_5
    :goto_2
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
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string v1, "MimojiModule, closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/reactivex/Emitter;->onComplete()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMetaDataDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isMimojiFu()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setIsFrameAvailable(Z)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setMetaDataCallback(Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/camera2/Camera2Proxy;->stopPreviewCallback(Z)V

    .line 13
    iput-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setAeAwbLock(Z)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->destroy()V

    :cond_4
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
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updateUltraWideLDC()V

    goto :goto_1

    .line 4
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updateVideoStabilization()V

    goto :goto_1

    .line 5
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateExposureMeteringMode()V

    goto :goto_1

    .line 6
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updateFocusMode()V

    goto :goto_1

    .line 7
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updateBeauty()V

    goto :goto_1

    .line 8
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setEvValue()V

    goto :goto_1

    .line 9
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updateFlashPreference()V

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
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updateLiveRelated()V

    goto :goto_1

    .line 13
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updateDeviceOrientation()V

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
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updateFpsRange()V

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
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updateFace()V

    goto :goto_1

    .line 20
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateFocusArea(Z)V

    goto :goto_1

    .line 21
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updateFilter()V

    goto :goto_1

    .line 22
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updatePictureAndPreviewSize()V

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

.method public deleteMimojiCache()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string v1, "delete all cache: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 3
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 4
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 5
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->CREATE_MODLE_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

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

.method public finishRestoreFocus()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreOuterAudio()V

    :cond_0
    return-void
.end method

.method public getAutoFlashTargetState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mAutoFlashTargetState:Z

    return v0
.end method

.method public initializeCapabilities()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->initializeCapabilities()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedFocusModes()[I

    move-result-object v0

    const/4 v1, 0x4

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/Util;->isSupported(I[I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mContinuousFocusSupported:Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getMaxFaceCount()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mMaxFaceCount:I

    return-void
.end method

.method public is3ALocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->m3ALocked:Z

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
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf9

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    .line 3
    sget-object v1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDoingAction: getCameraState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isRecording()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiVideoEditor:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->isComposing()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->isMimojiRecordPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public isFaceDetectStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mFaceDetectionStarted:Z

    return v0
.end method

.method public isFrameAvailable()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    return v0
.end method

.method public isNeedMute()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string v2, "isRecording:mimojiProcessing is null "

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiActionState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSelectingCapturedResult()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf9

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->isMimojiRecordPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowCaptureButton()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isSupportFocusShoot()Z

    move-result v0

    return v0
.end method

.method public isSupportFocusShoot()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_focus_shoot_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isGlobalSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isFrameAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lockAEAF()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

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
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->m3ALocked:Z

    return-void
.end method

.method public onActionStop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->stopVideoRecording(I)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->doLaterReleaseIfNeed()Z

    return-void
.end method

.method public onBackPressed()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isFrameAvailable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isSelectingCapturedResult()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 4
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBackPressed:avatar is being create "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    invoke-interface {v0, v2, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->onModeStateBack(IZ)V

    const-string v0, "mimoji_click_create_soft_back"

    const-string v1, "create"

    .line 7
    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 10
    iget-wide v3, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 11
    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f1208b6

    const/16 v3, 0x50

    invoke-static {v0, v1, v3}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->stopVideoRecording(I)V

    :goto_0
    return v2

    .line 14
    :cond_5
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onBluetoothHeadsetConnected()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->startBluetoothSco(I)V

    :cond_0
    return-void
.end method

.method public onBluetoothHeadsetDisconnected()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->stopBluetoothSco(I)V

    :cond_0
    return-void
.end method

.method public onBluetoothHeadsetStateChanged(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "> BluetoothHeadset state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onBluetoothHeadsetConnected()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onBluetoothHeadsetDisconnected()V

    :goto_0
    return-void
.end method

.method public onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.camera.action.SPEECH_SHUTTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "on Receive speech shutter broadcast action intent"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x6e

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onShutterButtonClick(I)V

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCameraError()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rx/CameraSchedulers;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->stopVideoRecording(I)V

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onCameraError()V

    return-void
.end method

.method public onCameraOpened()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onCameraOpened()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeFocusManager()V

    .line 3
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->FUN_TYPES_INIT:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->startPreview()V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mOnResumeTime:J

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->initMetaParser()V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updateMimojiVideoCache()V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->startBluetoothSco(I)V

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/SoundSetting;->setHeadsetDefaultValue(Landroid/content/Context;I)V

    return-void
.end method

.method public onCameraPickerClicked(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xc2

    if-ne v0, p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    invoke-interface {p1, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setModeState(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc3

    if-ne v0, p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setModeState(I)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setWaterMark()V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-static {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->getExtraMimojiPara()Ljava/util/Map;

    move-result-object p1

    const-string v0, "key_mimoji_normal_save"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiSavePara(Ljava/lang/String;Ljava/util/Map;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->onShutterButtonClick(I)V

    return-void
.end method

.method public onCreate(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 2
    new-instance p1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2, p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$MainHandler;-><init>(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;Landroid/os/Looper;Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->initMimojiControl()V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class p2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, p2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {p1, p2}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onCameraOpened()V

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x1f

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/camera/SensorStateManager;->setRotationVectorEnabled(Z)V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa03

    .line 11
    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0OO/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0OO/OooO0O0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x2d

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setRotationVectorEnabled(Z)V

    .line 6
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

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    array-length p2, p1

    if-lez p2, :cond_2

    const/4 p2, 0x0

    aget-object p2, p1, p2

    iget p2, p2, Lcom/android/camera2/CameraHardwareFace;->faceType:I

    const v1, 0xface

    if-ne p2, v1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v1

    .line 5
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFaces(I[Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    .line 6
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {p2, p1, v1, p3, v0}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->lightingDetectFace([Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mLightingProtocol:Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->isFaceLocationOK()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->misFaceLocationOk:Z

    :cond_4
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
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

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
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

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
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->m3ALocked:Z

    if-nez v0, :cond_9

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    goto :goto_0

    .line 15
    :cond_7
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

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

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->m3ALocked:Z

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
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isFrameAvailable()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x58

    const/16 v3, 0x18

    if-eq p1, v3, :cond_b

    const/16 v4, 0x19

    if-eq p1, v4, :cond_b

    const/16 v4, 0x1b

    if-eq p1, v4, :cond_7

    const/16 v4, 0x42

    if-eq p1, v4, :cond_7

    const/16 v4, 0x103

    if-eq p1, v4, :cond_6

    const/16 v4, 0x57

    if-eq p1, v4, :cond_b

    if-eq p1, v0, :cond_b

    const/16 v0, 0x2bc

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2bd

    if-eq p1, v0, :cond_2

    goto/16 :goto_3

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isPostProcessing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->stopVideoRecording(I)V

    goto/16 :goto_3

    :cond_3
    return v2

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isPostProcessing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->stopVideoRecording(I)V

    goto/16 :goto_3

    :cond_5
    return v2

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onBackPressed()Z

    goto/16 :goto_3

    .line 10
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_11

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isSelectingCapturedResult()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xf9

    .line 13
    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    .line 14
    invoke-interface {p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->startMimojiRecordSaving()V

    goto :goto_0

    .line 15
    :cond_8
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    const v0, 0x7f1207c6

    if-eqz p1, :cond_9

    .line 16
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFingerprintCaptureEnable()Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0x1e

    .line 17
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    .line 19
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->performKeyClicked(ILjava/lang/String;IZ)V

    goto :goto_0

    :cond_9
    const/16 p1, 0x28

    .line 20
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    .line 22
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->performKeyClicked(ILjava/lang/String;IZ)V

    :cond_a
    :goto_0
    return v1

    .line 23
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isSelectingCapturedResult()Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_3

    .line 24
    :cond_c
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0x1a0

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$CloneChooser;

    if-eqz v4, :cond_d

    .line 25
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$CloneChooser;->isShow()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 26
    sget-object p2, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore onKeyDown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_d
    if-eq p1, v3, :cond_f

    if-ne p1, v0, :cond_e

    goto :goto_1

    :cond_e
    move v0, v2

    goto :goto_2

    :cond_f
    :goto_1
    move v0, v1

    .line 27
    :goto_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 28
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->isExternal()Z

    move-result v2

    .line 29
    :cond_10
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZIZ)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 30
    :cond_11
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

.method public onMimojiCaptureCallback()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->onParallelImagePostProcStart()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->stopScreenLight()V

    :cond_1
    return-void
.end method

.method public onMimojiCreateCompleted(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    return-void
.end method

.method public onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xf9

    .line 4
    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->onMimojiSaveToLocalFinished(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setOrientation(II)V

    .line 2
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mDeviceOrientation:I

    .line 3
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onDeviceRotationChange(I)V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2, p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->onDeviceRotationChange(I)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->closeCamera()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    :cond_1
    new-instance v0, Lcom/android/camera/bluetooth/BluetoothScoManager;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/bluetooth/BluetoothScoManager;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a5

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v1, :cond_3

    .line 13
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 14
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiVideo()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/bluetooth/BluetoothScoManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreOuterAudio()V

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->stopBluetoothSco(I)V

    :cond_3
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
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

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
    sget-object p1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

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
    .locals 3

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
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x3a5

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->previewWhenSessionSuccess()V

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
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mOldOriginVolumeStream:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReviewCancelClicked: get recordState return null."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->doLaterReleaseIfNeed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->finishRestoreFocus()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->resumePreview()V

    goto :goto_0

    .line 10
    :cond_3
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->FUN_TYPES_INIT:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->startPreview()V

    :goto_0
    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void onReviewDoneClicked[]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mOldOriginVolumeStream:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    const v0, 0x7f120037

    .line 6
    invoke-static {v0}, Lcom/android/camera/module/common/ModuleUtil;->announceForAccessibility(I)V

    .line 7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0OO/OooO0o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0OO/OooO0o;-><init>(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->doLaterReleaseIfNeed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->finishRestoreFocus()V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->resumePreview()V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->startPreview()V

    :goto_0
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
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutterButtonClick"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x6e

    if-ne p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onUserInteraction()V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "speech_shutter_desc"

    .line 5
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideRecommendDescTip(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result p1

    .line 8
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiActionState()I

    move-result v1

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v3, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mIsLowLight:Z

    if-eqz p1, :cond_2

    .line 10
    sget-object p1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string v0, "mimoji create low light!: "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->onShutterButtonClick(I)V

    goto :goto_0

    :cond_3
    if-ne v1, v3, :cond_4

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mRecordTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long p1, v1, v3

    if-lez p1, :cond_6

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->stopVideoRecording(I)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->startVideoRecording()V

    .line 15
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xab

    .line 16
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz p1, :cond_6

    .line 17
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()V

    goto :goto_0

    .line 18
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->prepareCapture()V

    :cond_6
    :goto_0
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

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mDisableSingleTapUp:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hasCameraException()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    sget-object p1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onSingleTapUp: frame not available"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mTouchFocusStartingTime:J

    .line 15
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->unlockAEAF()V

    .line 18
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
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onThermalConstrained()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->stopVideoRecording(I)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onReviewCancelClicked()V

    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isDoingAction()Z

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
    sget-object p1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string p2, "ignore volume key"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onShutterButtonClick(I)V

    :cond_1
    return-void
.end method

.method public preTransferOrientation(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->preTransferOrientation(II)V

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mDeviceOrientation:I

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

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa9

    invoke-virtual {v0, v2, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 7
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_0

    .line 8
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

    .line 9
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
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->previewWhenSessionSuccess()V

    return-void
.end method

.method public setAutoFlashTargetState(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 3
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mAutoFlashTargetState:Z

    if-eq v1, p1, :cond_0

    .line 4
    sget-object v1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAutoFlashTargetState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mAutoFlashTargetState:Z

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v1, 0x0

    const/16 v2, 0xc1

    aput v2, p1, v1

    .line 6
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_0
    return-void
.end method

.method public setCameraStatePublic(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    return-void
.end method

.method public setDisableSingleTapUp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mDisableSingleTapUp:Z

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->setFrameAvailable(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setIsFrameAvailable(Z)V

    :cond_0
    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isSelectingCapturedResult()Z

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

.method public startFaceDetection()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mFaceDetectionStarted:Z

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
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mFaceDetectionStarted:Z

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->startFaceDetection()V

    .line 5
    invoke-direct {p0, v1, v1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updateFaceView(ZZ)V

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

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-static {v0}, Lcom/android/camera/Util;->convertSizeToQuality(Lcom/android/camera/CameraSize;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mQuality:I

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mSurfaceCreatedTimestamp:J

    .line 9
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string v1, "MimojiModule, startPreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->checkDisplayOrientation()V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    .line 12
    new-instance v2, Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setDynamicSkipFrame(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setExternalFrameFit(Z)V

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isSelectingCapturedResult()Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result v6

    const/4 v7, 0x0

    move-object v8, p0

    .line 19
    invoke-virtual/range {v1 .. v8}, Lcom/android/camera2/Camera2Proxy;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    :cond_1
    return-void
.end method

.method public startSaveToLocal(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isRecordStopping()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startSaveToLocal videoSavePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf9

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->getMimojiVideoSavePath()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->getMimojiVideoSaveUri()Landroid/net/Uri;

    move-result-object p2

    .line 8
    :cond_1
    new-instance v0, Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/storage/mediastore/VideoFile;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/storage/mediastore/VideoFile;->initialize(ZLandroid/content/Intent;)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->getExtraMimojiPara()Ljava/util/Map;

    move-result-object v1

    const-string v3, "key_mimoji_normal_save"

    invoke-static {v3, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiSavePara(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x2

    .line 11
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v4, v3, Lcom/android/camera/CameraSize;->width:I

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    invoke-static {v1, p1, v4, v3}, Lcom/android/camera/Util;->genContentValues(ILjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object p1

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "datetaken"

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/camera/storage/mediastore/VideoFile;->setContentValues(Landroid/content/ContentValues;)V

    .line 14
    invoke-virtual {v0, p2}, Lcom/android/camera/storage/mediastore/VideoFile;->setUri(Landroid/net/Uri;)V

    .line 15
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-ge p1, p2, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v2

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/android/camera/storage/ImageSaver;->addVideoSync(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    return-void

    .line 18
    :cond_3
    :goto_0
    sget-object p1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startSaveToLocal[] error"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopFaceDetection(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mFaceDetectionStarted:Z

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
    invoke-direct {p0, v0, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->updateFaceView(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopVideoRecording(I)V
    .locals 8

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->listenPhoneState(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraAudioRestriction(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/SoundSetting;->setNoiseReductionState(Landroid/content/Context;IZ)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/SoundSetting;->closeKaraokeState(Landroid/content/Context;I)V

    .line 6
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mIsStopKaraoke:Z

    if-eqz v1, :cond_0

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mIsStopKaraoke:Z

    .line 8
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/android/camera/AudioMonitorPlayer;->stopPlay()V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/SoundSetting;->closeKaraokeEquipment(Landroid/content/Context;I)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1, v0, v2}, Lcom/android/camera/SoundSetting;->setSCOMode(Landroid/content/Context;ZI)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v1

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_3

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mRecordTime:J

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    .line 14
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->showPreview()V

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    invoke-interface {v1, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->onShutterButtonClick(I)V

    if-eqz v0, :cond_6

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mRecordTime:J

    goto :goto_0

    .line 17
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v4, 0x3a5

    invoke-virtual {v1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->startBluetoothSco(I)V

    .line 19
    iget v4, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-interface {v1, v4}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreOuterAudio()V

    :cond_4
    if-eqz v0, :cond_5

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mRecordTime:J

    .line 22
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    invoke-interface {v0, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->onShutterButtonClick(I)V

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onReviewCancelClicked()V

    return-void

    .line 24
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mRecordTime:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->isRecordStopping()Z

    move-result v0

    if-nez v0, :cond_6

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mRecordTime:J

    .line 26
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    invoke-interface {v0, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->onShutterButtonClick(I)V

    .line 27
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->showPreview()V

    :cond_6
    :goto_0
    return-void
.end method

.method public turnOnFlash()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "camera_screen_light_wb"

    .line 3
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/android/camera/Util;->getScreenLightColor(I)I

    move-result v0

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getScreenLightBrightness()I

    move-result v1

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->startScreenLight(II)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public unRegisterModulePersistProtocol()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterModulePersistProtocol()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->requestRender()V

    .line 5
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

    const/16 v1, 0xa7

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
    sget-object v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unlockAEAF"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->m3ALocked:Z

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
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->enableFaceDetection()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v4, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mShowFace:Z

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
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mFaceDetectionEnabled:Z

    if-nez v0, :cond_4

    .line 5
    iput-boolean v3, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mFaceDetectionEnabled:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->startFaceDetection()V

    goto :goto_2

    .line 7
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p0, v3}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->stopFaceDetection(Z)V

    .line 9
    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mFaceDetectionEnabled:Z

    :cond_4
    :goto_2
    return-void
.end method

.method public updateFlashPreference()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setFlashMode(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, v0, v2}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->handleHaloFlash(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mLastFlashMode:Ljava/lang/String;

    return-void

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mLastFlashMode:Ljava/lang/String;

    if-eq v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->resetFlashStateTimeLock()V

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPreview()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v3, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0OO/OooO00o;

    invoke-direct {v3, v1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0OO/OooO00o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    :cond_2
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mLastFlashMode:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "3"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    .line 13
    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setPendingAsdScene(I)V

    .line 14
    :cond_3
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mLastFlashMode:Ljava/lang/String;

    return-void
.end method

.method public updateGifConfig(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "mimoji_click_gif"

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setModeState(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->mMiConfigChanges:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setModeState(I)V

    :goto_0
    return-void
.end method
