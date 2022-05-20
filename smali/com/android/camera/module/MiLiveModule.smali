.class public Lcom/android/camera/module/MiLiveModule;
.super Lcom/android/camera/module/BaseModule;
.source "MiLiveModule.java"

# interfaces
.implements Lcom/android/camera/module/ILiveModule;
.implements Lcom/android/camera/bluetooth/IBluetoothHeadsetConnectionState;
.implements Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;
.implements Lcom/android/camera2/Camera2Proxy$FocusCallback;
.implements Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;
.implements Lcom/android/camera/protocol/ModeProtocol$CameraAction;
.implements Lcom/android/camera/protocol/ModeProtocol$KaleidoscopeProtocol;
.implements Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/MiLiveModule$LiveAsdConsumer;,
        Lcom/android/camera/module/MiLiveModule$MainHandler;
    }
.end annotation


# static fields
.field public static final CAPTURE_THRESHOLD:J = 0x1f4L

.field public static final MAS_APP_ON_HIBERNATE:I = 0x101

.field public static final MSG_WAIT_SHUTTER_SOUND_FINISH:I = 0x100

.field public static final START_RECORDING_OFFSET:J = 0x12cL

.field public static mHeldLibObjSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final TAG:Ljava/lang/String;

.field public m3ALocked:Z

.field public mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

.field public mBaseFileName:Ljava/lang/String;

.field public mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field public mCaptureTime:J

.field public mFaceDetectionEnabled:Z

.field public mFaceDetectionStarted:Z

.field public mIsPreviewing:Z

.field public mIsStopKaraoke:Z

.field public mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

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

.field public mRecorderListener:Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl$IRecorderListener;

.field public mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field public mShowFace:Z

.field public mTouchFocusStartingTime:J

.field public mVideoSize:Lcom/android/camera/CameraSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/camera/module/MiLiveModule;->mHeldLibObjSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mIsStopKaraoke:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mShowFace:Z

    const/4 v1, 0x6

    .line 5
    iput v1, p0, Lcom/android/camera/module/MiLiveModule;->mQuality:I

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mIsPreviewing:Z

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/android/camera/module/MiLiveModule;->mCaptureTime:J

    .line 8
    new-instance v0, Lcom/android/camera/module/MiLiveModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/MiLiveModule$1;-><init>(Lcom/android/camera/module/MiLiveModule;)V

    iput-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mRecorderListener:Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl$IRecorderListener;

    .line 9
    new-instance v0, Lcom/android/camera/module/MiLiveModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/MiLiveModule$2;-><init>(Lcom/android/camera/module/MiLiveModule;)V

    iput-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/MiLiveModule;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/MiLiveModule;->mOnResumeTime:J

    return-wide v0
.end method

.method public static synthetic access$100(Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->setOrientationParameter()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetZoomPreview()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/android/camera/module/MiLiveModule;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/MiLiveModule;->mTouchFocusStartingTime:J

    return-wide v0
.end method

.method public static synthetic access$200(Lcom/android/camera/module/MiLiveModule;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/MiLiveModule;->handleUpdateFaceView(ZZ)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->startVideoRecording()V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/camera/module/MiLiveModule;)Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/module/MiLiveModule;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetToIdle()V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->trackLiveVideoParams()V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/camera/module/MiLiveModule;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/MiLiveModule;->initReview(Ljava/util/List;Ljava/lang/String;)V

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

    iput-object p1, p0, Lcom/android/camera/module/MiLiveModule;->mBaseFileName:Ljava/lang/String;

    return-object p1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->mBaseFileName:Ljava/lang/String;

    return-object p1
.end method

.method private disableReduceNoise()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/SoundSetting;->setNoiseReductionState(Landroid/content/Context;IZ)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/SoundSetting;->closeKaraokeState(Landroid/content/Context;I)V

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mIsStopKaraoke:Z

    if-eqz v0, :cond_0

    .line 4
    iput-boolean v2, p0, Lcom/android/camera/module/MiLiveModule;->mIsStopKaraoke:Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/AudioMonitorPlayer;->stopPlay()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/SoundSetting;->closeKaraokeEquipment(Landroid/content/Context;I)V

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

.method private enableReduceNoise()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/SoundSetting;->setNoiseReductionState(Landroid/content/Context;IZ)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/SoundSetting;->isSupportKaraoke(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/SoundSetting;->isStartKaraoke(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/camera/AudioMonitorPlayer;

    invoke-direct {v0}, Lcom/android/camera/AudioMonitorPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/SoundSetting;->openKaraokeEquipment(Landroid/content/Context;I)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundSetting.isStartKaraoke121"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/camera/SoundSetting;->isStartKaraoke(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isStartKaraoke"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iput-boolean v2, p0, Lcom/android/camera/module/MiLiveModule;->mIsStopKaraoke:Z

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/AudioMonitorPlayer;->startPlay()V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/SoundSetting;->openKaraokeState(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method

.method private genContentValues(IIZ)Landroid/content/ContentValues;
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-direct {p0, v0, v1, p2}, Lcom/android/camera/module/MiLiveModule;->createName(JI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    .line 3
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    const-string p2, "_%d"

    invoke-static {v2, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/Util;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p1}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x2f

    if-eqz p3, :cond_1

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/storage/Storage;->CAMERA_TEMP_DIRECTORY:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 8
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/storage/Storage;->CAMERA_TEMP_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/camera/Util;->createFile(Ljava/io/File;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genContentValues: path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v2, Landroid/content/ContentValues;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v3, "title"

    .line 12
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_display_name"

    .line 13
    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mime_type"

    .line 14
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_data"

    .line 15
    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v0, v0, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "resolution"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 18
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_3

    .line 19
    :cond_2
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v3, "latitude"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 20
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v0, "longitude"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 21
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string/jumbo v0, "save_cover"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 22
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_4

    const-string/jumbo p1, "relative_path"

    const-string p2, "DCIM/Camera/"

    .line 23
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "is_pending"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 25
    :cond_4
    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v2
.end method

.method private handleUpdateFaceView(ZZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v3

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p2, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionStarted:Z

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

.method private initLiveConfig()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    iput-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    aput v1, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/module/impl/ImplFactory;->initModulePersistent(Lcom/android/camera/ActivityBase;[I)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    iput-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveGenericControl;->prepare()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveGenericControl;->initResource()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->mRecorderListener:Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl$IRecorderListener;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl;->setRecorderListener(Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl$IRecorderListener;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    invoke-interface {v0, v1, v3, v2}, Lcom/android/camera/protocol/ModeProtocol$LiveGenericControl;->onOrientationChanged(III)V

    return-void
.end method

.method private initMetaParser()V
    .locals 3

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/Oooooo;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/Oooooo;-><init>(Lcom/android/camera/module/MiLiveModule;)V

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

    new-instance v1, Lcom/android/camera/module/MiLiveModule$LiveAsdConsumer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/MiLiveModule$LiveAsdConsumer;-><init>(Lcom/android/camera/module/MiLiveModule;Lcom/android/camera/module/MiLiveModule$1;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mMetaDataDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initReview(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-direct {p0, v1, v0, v0}, Lcom/android/camera/module/MiLiveModule;->genContentValues(IIZ)Landroid/content/ContentValues;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xf2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;->prepare(Landroid/content/ContentValues;Ljava/util/List;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/Camera;->onUserInteraction()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "show review fail~"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetToIdle()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/module/MiLiveModule;->mIsPreviewing:Z

    return-void
.end method

.method private isEisOn()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/MiLiveModule;->mQuality:I

    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 2
    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraSettings;->isCurrentQualitySupportEis(IILcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isEISPreviewSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSaving()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized loadLibs(Landroid/content/Context;I)V
    .locals 2

    const-class v0, Lcom/android/camera/module/MiLiveModule;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/camera/module/MiLiveModule;->mHeldLibObjSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "vvc++_shared"

    .line 2
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "ffmpeg"

    .line 3
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v1, "record_video"

    .line 4
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const v1, 0xc35b

    .line 5
    invoke-static {p0, v1}, Lcom/xiaomi/recordmediaprocess/SystemUtil;->Init(Landroid/content/Context;I)V

    .line 6
    :cond_0
    sget-object p0, Lcom/android/camera/module/MiLiveModule;->mHeldLibObjSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string p0, "MiLiveModule"

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadLibs held lib objects : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/camera/module/MiLiveModule;->mHeldLibObjSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->Version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private pauseVideoRecording(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pauseVideoRecording formRelease "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordState;->canRecordingStop()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "too fast to pause recording."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_0
    const-string p1, "mi_live_pause_recording"

    .line 6
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd4

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz p1, :cond_4

    .line 9
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPause()V

    goto :goto_1

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "recordState pause fail~"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_1
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl;->pauseRecording()V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetZoomPreview()V

    :goto_2
    return-void
.end method

.method private previewWhenSessionSuccess()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 2
    sget-object v1, Lcom/android/camera/constant/UpdateConstant;->MI_LIVE_TYPES_ON_PREVIEW_SUCCESS:[I

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x47

    aput v2, v0, v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method private resetToIdle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetToIdle"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveGenericControl;->reset()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;->hide()V

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/extra/DataItemLive;->setMiLiveSegmentData(Ljava/util/List;)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/MiLiveModule;->mOldOriginVolumeStream:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mIsPreviewing:Z

    .line 12
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetZoomPreview()V

    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->doLaterReleaseIfNeed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReviewDoneClicked -- "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->resumePreview()V

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->startPreview()V

    :cond_5
    :goto_0
    return-void
.end method

.method private resetZoomPreview()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecordingPaused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updateZoomRatioToggleButtonState(Z)V

    .line 3
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 6
    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_2

    .line 7
    :cond_2
    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setVideoMaxZoomRatioByTele()V

    :cond_3
    :goto_2
    return-void
.end method

.method private resetZoomRecoding()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updateZoomRatioToggleButtonState(Z)V

    .line 2
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isAuxCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setVideoMaxZoomRatioByTele()V

    goto :goto_0

    .line 9
    :cond_1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraTeleCamera(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setVideoMaxZoomRatioByTele()V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    const/high16 v0, 0x40c00000    # 6.0f

    .line 13
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method private resumeVideoRecording()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetZoomRecoding()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl;->resumeRecording()V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onResume()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recordState resume fail~"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
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
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->setOrientationParameter()V

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

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/OoooooO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/OoooooO;-><init>(Lcom/android/camera/module/MiLiveModule;)V

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

.method private showReview()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;->show()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show review fail~"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetToIdle()V

    :goto_0
    return-void
.end method

.method private startVideoRecording()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "MiLive startVideoRecording"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraAudioRestriction(Z)V

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-boolean v1, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "attr_3A_Locked"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v5, p0, Lcom/android/camera/module/MiLiveModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(Ljava/util/Map;IZLcom/android/camera/fragment/beauty/BeautyValues;ZI)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOn()V

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    if-nez v1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xd4

    .line 9
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 10
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->initBluetoothSco()V

    .line 12
    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl;->startRecording()V

    new-array v2, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0x5a

    aput v4, v2, v3

    .line 13
    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    const-string v2, "mi_live_start_recording"

    .line 14
    invoke-static {v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/MiLiveModule;->mOldOriginVolumeStream:I

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-static {v2}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v2, v0, v3}, Lcom/android/camera/SoundSetting;->setSCOMode(Landroid/content/Context;ZI)V

    .line 19
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onStart()V

    .line 20
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetZoomRecoding()V

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->listenPhoneState(Z)V

    return-void
.end method

.method private trackLiveVideoParams()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordState;->getSegmentSize()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveMusic()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 4
    aget-object v2, v0, v2

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v3

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveSpeed()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 7
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getCurrentKaleidoscope()Ljava/lang/String;

    move-result-object v8

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateBeauty()V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v5

    iget-object v6, p0, Lcom/android/camera/module/MiLiveModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    iget v7, p0, Lcom/android/camera/module/MiLiveModule;->mQuality:I

    .line 11
    invoke-static/range {v1 .. v8}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveRecordingParams(ILjava/lang/String;IIZLcom/android/camera/fragment/beauty/BeautyValues;ILjava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized unloadLibs(I)V
    .locals 3

    const-class v0, Lcom/android/camera/module/MiLiveModule;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/camera/module/MiLiveModule;->mHeldLibObjSet:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const-string p0, "MiLiveModule"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unloadLibs held lib objects : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/module/MiLiveModule;->mHeldLibObjSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object p0, Lcom/android/camera/module/MiLiveModule;->mHeldLibObjSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    if-nez p0, :cond_0

    .line 4
    invoke-static {}, Lcom/xiaomi/recordmediaprocess/SystemUtil;->UnInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private updateBeauty()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->initBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBeauty(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

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
    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

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

.method private updateKaleidoscope()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningKaleidoscope()Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;->getKaleidoscopeValue()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setKaleidoscope(Ljava/lang/String;)V

    return-void
.end method

.method private updateLiveRelated()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/Camera2Proxy;->startPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    :cond_0
    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const-class v1, Landroid/graphics/SurfaceTexture;

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveGenericControl;->getPreviewRatio()F

    move-result v0

    .line 4
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->getPreferLiveVideoQuality(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/MiLiveModule;->mQuality:I

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/android/camera/module/MiLiveModule;->mVideoSize:Lcom/android/camera/CameraSize;

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    .line 6
    new-instance v1, Lcom/android/camera/CameraSize;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera/module/MiLiveModule;->mVideoSize:Lcom/android/camera/CameraSize;

    :goto_0
    move-object v7, v1

    goto :goto_1

    .line 7
    :cond_0
    new-instance v1, Lcom/android/camera/CameraSize;

    const/16 v3, 0x780

    const/16 v5, 0x438

    invoke-direct {v1, v3, v5}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera/module/MiLiveModule;->mVideoSize:Lcom/android/camera/CameraSize;

    .line 8
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->mVideoSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    .line 10
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    float-to-double v5, v0

    invoke-static/range {v2 .. v7}, Lcom/android/camera/Util;->getOptimalPreviewSize(ZILjava/util/List;DLcom/android/camera/CameraSize;)Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "previewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    .line 13
    iget v1, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method private updateUltraWideLDC()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->shouldApplyUltraWideLDC()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setUltraWideLDC(Z)V

    return-void
.end method

.method private updateVideoBokeh()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehRatio()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frontVideoBokeh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoBokehLevelFront(F)V

    goto :goto_0

    :cond_0
    float-to-int v0, v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backVideoBokeh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoBokehLevelBack(I)V

    :goto_0
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
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->isEisOn()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

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
.method public synthetic OooO00o(Lio/reactivex/FlowableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/MiLiveModule;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;->getSaveContentValues()Landroid/content/ContentValues;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v2, "title"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_data"

    .line 5
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v3, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-interface {v0, p2, v1}, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;->onLiveSaveToLocalFinished(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO0Oo()V
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
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/Emitter;->onComplete()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mMetaDataDisposable:Lio/reactivex/disposables/Disposable;

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
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    sparse-switch v3, :sswitch_data_0

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
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->disableReduceNoise()V

    goto/16 :goto_1

    .line 4
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->enableReduceNoise()V

    goto/16 :goto_1

    .line 5
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateKaleidoscope()V

    goto/16 :goto_1

    .line 6
    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateVideoBokeh()V

    goto :goto_1

    .line 7
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateThermalLevel()V

    goto :goto_1

    .line 8
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateBackSoftLightPreference()V

    goto :goto_1

    .line 9
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateModuleRelated()V

    goto :goto_1

    .line 10
    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateLiveRelated()V

    goto :goto_1

    .line 11
    :sswitch_8
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateUltraWideLDC()V

    goto :goto_1

    .line 12
    :sswitch_9
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateDeviceOrientation()V

    goto :goto_1

    .line 13
    :sswitch_a
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateVideoStabilization()V

    goto :goto_1

    .line 14
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateExposureMeteringMode()V

    goto :goto_1

    .line 15
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->focusCenter()V

    goto :goto_1

    .line 16
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->applyZoomRatio()V

    goto :goto_1

    .line 17
    :sswitch_e
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateFpsRange()V

    goto :goto_1

    .line 18
    :sswitch_f
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateFocusMode()V

    goto :goto_1

    .line 19
    :sswitch_10
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateBeauty()V

    goto :goto_1

    .line 20
    :sswitch_11
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setEvValue()V

    goto :goto_1

    .line 21
    :sswitch_12
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->updateFlashPreference()V

    goto :goto_1

    .line 22
    :sswitch_13
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->updateAntiBanding(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :sswitch_14
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->updateFace()V

    goto :goto_1

    .line 24
    :sswitch_15
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateFocusArea(Z)V

    goto :goto_1

    .line 25
    :sswitch_16
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateFilter()V

    goto :goto_1

    .line 26
    :sswitch_17
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updatePictureAndPreviewSize()V

    :goto_1
    :sswitch_18
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_16
        0x3 -> :sswitch_15
        0x5 -> :sswitch_14
        0x9 -> :sswitch_13
        0xa -> :sswitch_12
        0xb -> :sswitch_18
        0xc -> :sswitch_11
        0xd -> :sswitch_10
        0xe -> :sswitch_f
        0x13 -> :sswitch_e
        0x14 -> :sswitch_18
        0x18 -> :sswitch_d
        0x19 -> :sswitch_c
        0x1d -> :sswitch_b
        0x1e -> :sswitch_18
        0x1f -> :sswitch_a
        0x22 -> :sswitch_18
        0x23 -> :sswitch_9
        0x2a -> :sswitch_18
        0x2b -> :sswitch_18
        0x2e -> :sswitch_18
        0x2f -> :sswitch_8
        0x30 -> :sswitch_18
        0x32 -> :sswitch_18
        0x36 -> :sswitch_7
        0x37 -> :sswitch_6
        0x3a -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_3
        0x47 -> :sswitch_2
        0x4f -> :sswitch_18
        0x57 -> :sswitch_18
        0x5a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method public doReverse()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string v1, "doReverse"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl;->deleteLastFragment()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordState;->getSegmentSize()I

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromKeyBack()Z

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetZoomPreview()V

    :cond_2
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetZoomPreview()V

    :cond_3
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

.method public getModuleDeviceParam()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;-><init>(IIILcom/android/camera2/CameraCapabilities;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->isEisOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->setEisOn(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->build()Lcom/android/camera/features/mode/VideoModuleDeviceParam;

    move-result-object v0

    return-object v0
.end method

.method public is3ALocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    return v0
.end method

.method public isAEAFLockSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCameraSwitchingDuringZoomingAllowed()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDoingAction()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;->isShowing()Z

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

.method public isFaceDetectStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionStarted:Z

    return v0
.end method

.method public isNeedMute()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl;->getCurState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isRecordingPaused()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl;->getCurState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectingCapturedResult()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowAeAfLockIndicator()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    return v0
.end method

.method public isShowCaptureButton()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isSupportFocusShoot()Z

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

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

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
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

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
    iput-boolean v1, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    return-void
.end method

.method public notifyAfterFirstFrameArrived()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAfterFirstFrameArrived.m3ALocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->unlockAEAF()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->cancelFocus()V

    :cond_0
    return-void
.end method

.method public onActionStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "skip stopVideoRecording & remove startVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/module/MiLiveModule;->pauseVideoRecording(Z)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->isSaving()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->doLaterReleaseIfNeed()Z

    return-void
.end method

.method public onBackPressed()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isSelectingCapturedResult()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetToIdle()V

    .line 6
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v0

    return v0

    .line 7
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    iget-wide v2, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-lez v2, :cond_4

    .line 9
    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f1208b6

    invoke-static {v0, v1, v3}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p0, v3, v3}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

    :goto_1
    return v3
.end method

.method public onBluetoothHeadsetConnected()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

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
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->onBluetoothHeadsetConnected()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->onBluetoothHeadsetDisconnected()V

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
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

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
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->initLiveConfig()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeFocusManager()V

    .line 4
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->FUN_TYPES_INIT:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->startPreview()V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isFirstShowCTAConCollect()Z

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/MiLiveModule;->mOnResumeTime:J

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->initMetaParser()V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/SoundSetting;->setHeadsetDefaultValue(Landroid/content/Context;I)V

    return-void
.end method

.method public onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->requestFullReadPixels()V

    const-string p1, "mi_live_click_kaleidoscope_capture"

    .line 2
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackKaleidoscopeClick(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 2
    new-instance p1, Lcom/android/camera/module/MiLiveModule$MainHandler;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2, p0}, Lcom/android/camera/module/MiLiveModule$MainHandler;-><init>(Lcom/android/camera/module/MiLiveModule;Landroid/os/Looper;Lcom/android/camera/module/MiLiveModule;)V

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/MiLiveModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {p1, p2}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->onCameraOpened()V

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
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

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
    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    if-nez v0, :cond_9

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    goto :goto_0

    .line 15
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

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

    iget-boolean p1, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    if-eqz p1, :cond_9

    .line 24
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1, v4}, Lcom/android/camera2/Camera2Proxy;->lockExposure(Z)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onHibernate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onKaleidoscopeChanged(Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x47

    aput v1, p1, v0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

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
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

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
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

    goto/16 :goto_3

    :cond_3
    return v2

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

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
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

    goto/16 :goto_3

    :cond_5
    return v2

    .line 9
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_f

    .line 10
    iget-boolean p1, p0, Lcom/android/camera/module/MiLiveModule;->mIsPreviewing:Z

    if-eqz p1, :cond_7

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xf2

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;

    if-eqz p1, :cond_9

    .line 12
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;->startLiveRecordSaving()V

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
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/MiLiveModule;->performKeyClicked(ILjava/lang/String;IZ)V

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
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/MiLiveModule;->performKeyClicked(ILjava/lang/String;IZ)V

    :cond_9
    :goto_0
    return v1

    .line 21
    :cond_a
    iget-boolean v4, p0, Lcom/android/camera/module/MiLiveModule;->mIsPreviewing:Z

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

    .line 22
    :goto_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 23
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->isExternal()Z

    move-result v2

    .line 24
    :cond_e
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZIZ)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 25
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
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/module/MiLiveModule;->onSingleTapUp(IIZ)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isAEAFLockSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAEAFLockSupport()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->lockAEAF()V

    :cond_1
    return-void
.end method

.method public onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/Ooooooo;

    invoke-direct {v1, p0, p2, p1}, LOooO00o/OooO0O0/OooO00o/o000oOoO/Ooooooo;-><init>(Lcom/android/camera/module/MiLiveModule;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/MiLiveModule;->setOrientation(II)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

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
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/MiLiveModule;->setOrientation(II)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->removeMessages()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetScreenOn()V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->closeCamera()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    :cond_1
    new-instance v0, Lcom/android/camera/bluetooth/BluetoothScoManager;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/bluetooth/BluetoothScoManager;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a5

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/bluetooth/BluetoothScoManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreOuterAudio()V

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->stopBluetoothSco(I)V

    :cond_2
    return-void
.end method

.method public onPauseButtonClick()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPauseButtonClick pauseVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/module/MiLiveModule;->pauseVideoRecording(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPauseButtonClick resumeVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resumeVideoRecording()V

    :goto_0
    return-void
.end method

.method public onPictureTakenFinished(ZJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iget p2, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {p1, p2}, Lcom/android/camera/CameraScreenNail;->animateCaptureWithDraw(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera/CameraScreenNail;->setPreviewSaveListener(Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

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
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onPreviewRelease(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onPreviewRelease(II)V

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
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

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
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->previewWhenSessionSuccess()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReviewCancelClicked"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl;->finishReview()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetToIdle()V

    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReviewDoneClicked"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl;->finishReview()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetToIdle()V

    return-void
.end method

.method public onShineChanged(I)V
    .locals 3

    const/16 v0, 0xc4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xef

    if-ne p1, v0, :cond_0

    new-array p1, v2, [I

    const/16 v0, 0xd

    aput v0, p1, v1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unknown configItem changed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-array p1, v2, [I

    const/4 v0, 0x2

    aput v0, p1, v1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :goto_0
    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "skip shutter caz preview paused."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl;->getCurState()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onShutterButtonClick "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    .line 6
    iget-object v3, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const-string/jumbo v1, "onShutterButtonClick mode=%d, state=%d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eq v0, v6, :cond_3

    if-eq v0, v4, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick stopVideoRecording"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0, v6, v6}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkCallingState()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string v0, "ignore in calling state"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0, v4}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick startVideoRecording"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->startVideoRecording()V

    .line 17
    :goto_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_6

    .line 18
    invoke-virtual {p1}, Lcom/android/camera/Camera;->onUserInteraction()V

    :cond_6
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
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

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

    iput-wide v0, p0, Lcom/android/camera/module/MiLiveModule;->mTouchFocusStartingTime:J

    .line 14
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->unlockAEAF()V

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

.method public onSurfaceTextureReleased()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl;->onSurfaceTextureReleased()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl;->onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    :cond_0
    return-void
.end method

.method public onThermalConstrained()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onThermalConstrained()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->onReviewCancelClicked()V

    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isDoingAction()Z

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
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string p2, "ignore volume key"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/MiLiveModule;->onShutterButtonClick(I)V

    :cond_1
    return-void
.end method

.method public registerProtocol()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerProtocol"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xec

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 6
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

    return-void

    :array_0
    .array-data 4
        0xa4
        0xae
        0xea
        0xd4
    .end array-data
.end method

.method public resumePreview()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->previewWhenSessionSuccess()V

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

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    :cond_0
    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->isSaving()Z

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
    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionStarted:Z

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
    iput-boolean v1, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionStarted:Z

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->startFaceDetection()V

    .line 5
    invoke-direct {p0, v1, v1}, Lcom/android/camera/module/MiLiveModule;->updateFaceView(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startPreview()V
    .locals 10

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
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mSurfaceCreatedTimestamp:J

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string v1, "LiveModule, startPreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->checkDisplayOrientation()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v2, v1, Lcom/android/camera/CameraSize;->width:I

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$LiveModuleSub;->initPreview(IIILcom/android/camera/CameraScreenNail;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveModuleSub;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputSurfaceTexture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    .line 13
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v3, v0

    goto :goto_0

    .line 14
    :cond_1
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v3, v1

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, p0

    .line 17
    invoke-virtual/range {v2 .. v9}, Lcom/android/camera2/Camera2Proxy;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method public stopFaceDetection(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionStarted:Z

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
    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/MiLiveModule;->updateFaceView(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopVideoRecording(ZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "MiLive stopVideoRecording"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraAudioRestriction(Z)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "skip stopVideoRecording & remove startVideoRecording"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x5b

    aput v2, v1, v0

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopVideoRecording checkRecordingTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", showReview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xd4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 12
    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordState;->canRecordingStop()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez p1, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "too fast to stop recording."

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    :goto_0
    if-eqz p2, :cond_6

    if-eqz v1, :cond_5

    .line 14
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostPreview()V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->showReview()V

    goto :goto_1

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "record state post preview fail~"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-static {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 18
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl;->stopRecording()V

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->listenPhoneState(Z)V

    const/4 p1, 0x3

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p1, v0, p2}, Lcom/android/camera/SoundSetting;->setSCOMode(Landroid/content/Context;ZI)V

    .line 22
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0x3a5

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz p1, :cond_7

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->startBluetoothSco(I)V

    .line 24
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isBluetoothScoOn()Z

    move-result v0

    :cond_7
    if-eqz v0, :cond_8

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "attr_bluetooth_sco"

    const-string/jumbo v0, "on"

    .line 26
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "M_miLive_"

    .line 27
    invoke-static {p2, p1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public takePreviewSnapShoot()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/MiLiveModule;->mCaptureTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, -0x8

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setShotType(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/camera2/Camera2Proxy;->takeSimplePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/CameraScreenNail;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/MiLiveModule;->mCaptureTime:J

    :cond_1
    :goto_0
    return-void
.end method

.method public unRegisterModulePersistProtocol()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterModulePersistProtocol()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterModulePersistProtocol"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
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
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

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

    const/16 v1, 0xec

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
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unlockAEAF"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

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
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->enableFaceDetection()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v4, p0, Lcom/android/camera/module/MiLiveModule;->mShowFace:Z

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
    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionEnabled:Z

    if-nez v0, :cond_4

    .line 5
    iput-boolean v3, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionEnabled:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->startFaceDetection()V

    goto :goto_2

    .line 7
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p0, v3}, Lcom/android/camera/module/MiLiveModule;->stopFaceDetection(Z)V

    .line 9
    iput-boolean v2, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionEnabled:Z

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
