.class public Lcom/android/camera/module/VideoSkyModule;
.super Lcom/android/camera/module/BaseModule;
.source "VideoSkyModule.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;
.implements Lcom/android/camera2/Camera2Proxy$FocusCallback;
.implements Lcom/android/camera2/Camera2Proxy$PreviewCallback;
.implements Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;
.implements Lcom/android/camera/ui/CameraRenderEngine$RendererListener;
.implements Lcom/android/camera/protocol/ModeProtocol$CameraAction;
.implements Lcom/android/camera/protocol/ModeProtocol$VideoSkyAction;
.implements Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;
.implements Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;
.implements Lcom/android/camera/module/ILiveModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/VideoSkyModule$MainHandler;
    }
.end annotation


# static fields
.field public static final MSG_WAIT_SHUTTER_SOUND_FINISH:I = 0x100

.field public static final RECORD_TIME_COMPENSATION:J = 0x64L

.field public static final START_RECORDING_OFFSET:J = 0x12cL

.field public static final STATE_PAUSE:I = 0x4

.field public static final STATE_PREVIEW:I = 0x1

.field public static final STATE_RESUME:I = 0x3

.field public static final STATE_START:I = 0x2

.field public static final STATE_STOP:I = 0x5

.field public static final TAG:Ljava/lang/String; = "VideoSkyModule"

.field public static final TEMP_VIDEO_PATH:Ljava/lang/String;


# instance fields
.field public LIB_LOAD_CALLER:I

.field public m3ALocked:Z

.field public mAudioPos:J

.field public mBitRate:I

.field public mCanRender:Z

.field public mComposeFile:Lcom/xiaomi/magicvideosky/MediaComposeFile;

.field public mCountDownTimer:Landroid/os/CountDownTimer;

.field public mCurGyroscope:[F

.field public mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

.field public mEffectCameraNotifier:Lcom/xiaomi/magicvideosky/EffectCameraNotifier;

.field public mFrameRate:I

.field public mInitRender:Z

.field public mIsFinished:Z

.field public mIsRecording:Z

.field public mIsVideoSaved:Z

.field public mLibLoaded:I

.field public final mLock:Ljava/lang/Object;

.field public mMaxDuration:J

.field public mMediaEffectGraph:Lcom/xiaomi/magicvideosky/MediaEffectGraph;

.field public mOnResumeTime:J

.field public mQuality:I

.field public mRenderRect:Landroid/graphics/Rect;

.field public mSegments:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation
.end field

.field public mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field public mStartTime:J

.field public mState:I

.field public mTouchFocusStartingTime:J

.field public mVideoFileName:Ljava/lang/String;

.field public mVideoFilePath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->ROOT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".video_sky"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/VideoSkyModule;->TEMP_VIDEO_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/camera/module/VideoSkyModule;->mState:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/android/camera/module/VideoSkyModule;->mStartTime:J

    const/4 v3, 0x0

    .line 4
    iput-boolean v3, p0, Lcom/android/camera/module/VideoSkyModule;->mIsRecording:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->mIsVideoSaved:Z

    const-wide/16 v4, 0x3afc

    .line 6
    iput-wide v4, p0, Lcom/android/camera/module/VideoSkyModule;->mMaxDuration:J

    .line 7
    iput-wide v1, p0, Lcom/android/camera/module/VideoSkyModule;->mAudioPos:J

    .line 8
    iput v3, p0, Lcom/android/camera/module/VideoSkyModule;->mBitRate:I

    .line 9
    iput v3, p0, Lcom/android/camera/module/VideoSkyModule;->mFrameRate:I

    .line 10
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mSegments:Ljava/util/Stack;

    .line 11
    iput-boolean v3, p0, Lcom/android/camera/module/VideoSkyModule;->mInitRender:Z

    .line 12
    iput-boolean v3, p0, Lcom/android/camera/module/VideoSkyModule;->mCanRender:Z

    const/4 v1, 0x6

    .line 13
    iput v1, p0, Lcom/android/camera/module/VideoSkyModule;->mQuality:I

    const/4 v1, 0x4

    new-array v1, v1, [F

    .line 14
    iput-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mCurGyroscope:[F

    .line 15
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    .line 17
    new-instance v1, Lcom/android/camera/module/VideoSkyModule$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoSkyModule$1;-><init>(Lcom/android/camera/module/VideoSkyModule;)V

    iput-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCameraNotifier:Lcom/xiaomi/magicvideosky/EffectCameraNotifier;

    .line 18
    iput v3, p0, Lcom/android/camera/module/VideoSkyModule;->mLibLoaded:I

    .line 19
    iput v0, p0, Lcom/android/camera/module/VideoSkyModule;->LIB_LOAD_CALLER:I

    .line 20
    new-instance v0, Lcom/android/camera/module/VideoSkyModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoSkyModule$4;-><init>(Lcom/android/camera/module/VideoSkyModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    return-void
.end method

.method public static synthetic OooO00o(Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a7

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;->onSaveFinish(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/xiaomi/magicvideosky/MediaEffectCamera;)V
    .locals 2

    .line 3
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v1, "DestructRender start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->RenderRelease()V

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->DestructRender()V

    .line 6
    sget-object p0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v0, "DestructRender end"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO0o()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a7

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;->stopCaptureToPreviewResult(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0o0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    :cond_0
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1000(Lcom/android/camera/module/VideoSkyModule;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/VideoSkyModule;->mTouchFocusStartingTime:J

    return-wide v0
.end method

.method public static synthetic access$102(Lcom/android/camera/module/VideoSkyModule;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/VideoSkyModule;->mIsVideoSaved:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/camera/module/VideoSkyModule;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/VideoSkyModule;->mCurGyroscope:[F

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/module/VideoSkyModule;)Ljava/util/Stack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/VideoSkyModule;->mSegments:Ljava/util/Stack;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/module/VideoSkyModule;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/VideoSkyModule;->mState:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/module/VideoSkyModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->showVideoPreview()V

    return-void
.end method

.method public static synthetic access$502(Lcom/android/camera/module/VideoSkyModule;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/VideoSkyModule;->mCanRender:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/android/camera/module/VideoSkyModule;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/VideoSkyModule;->mOnResumeTime:J

    return-wide v0
.end method

.method public static synthetic access$700(Lcom/android/camera/module/VideoSkyModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->setOrientationParameter()V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/camera/module/VideoSkyModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->startVideoRecording()V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/camera/module/VideoSkyModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->onVideoSaveFinish()V

    return-void
.end method

.method private canRecordingStop()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/VideoSkyModule;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkShutterCondition()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->mInitRender:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->canRecordingStop()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v2, "checkShutterCondition: recording duration so short"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkShutterCondition: ignoreTouchEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v2, "checkShutterCondition: low storage"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 8
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0x2a7

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;

    if-eqz v0, :cond_6

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;->canSnap()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_5

    .line 12
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()V

    :cond_5
    const/4 v0, 0x1

    return v0

    .line 13
    :cond_6
    :goto_0
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v2, "checkShutterCondition: can\'t snap"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 14
    :cond_7
    :goto_1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkShutterCondition: mInitRender:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/module/VideoSkyModule;->mInitRender:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mEffectCamera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
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

.method private hiddenTopRecordingTime()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    :cond_0
    return-void
.end method

.method private initVideoSkyRender()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v1, "initVideoSkyRender E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->ConstructRender()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->SetCurrentGLContext()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->BindRender()Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->StartPreviewRecord()V

    .line 7
    iget-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->mInitRender:Z

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    iget-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mRenderRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->InitRender(IIII)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->mInitRender:Z

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->updateVideoSky()V

    .line 11
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v1, "initVideoSkyRender X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private initVideoSkyResource()V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v1, "initVideoSkyResource E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->VIDEO_SKY_RESOURCE_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v3, "video_sky_resource_version.txt"

    invoke-static {v2, v3}, Lcom/android/camera/module/impl/component/FileUtils;->readStringFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoSkyResourceVersion()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    :goto_0
    move v1, v4

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initVideoSkyResource needCopy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " assetVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " currentVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v1, "video_sky.zip"

    sget-object v3, Lcom/android/camera/module/impl/component/FileUtils;->VIDEO_SKY_RESOURCE_DIR:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/android/camera/module/impl/component/FileUtils;->UnZipAssetFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setVideoSkyResourceVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 10
    sget-object v1, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnZipFileFolder failed, error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_2
    :goto_2
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v1, "initVideoSkyResource X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initVideoSkySDK()V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v1, "initVideoSkySDK E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0x2a7

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v1, "initVideoSkySDK failed, videoSkyProcess is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera/module/VideoSkyModule;->mQuality:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    const/high16 v0, 0x1400000

    goto :goto_0

    :cond_1
    const/high16 v0, 0xf00000

    :goto_0
    iput v0, p0, Lcom/android/camera/module/VideoSkyModule;->mBitRate:I

    const/16 v0, 0x1e

    .line 5
    iput v0, p0, Lcom/android/camera/module/VideoSkyModule;->mFrameRate:I

    .line 6
    new-instance v2, Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    invoke-direct {v2}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v3, v0, Lcom/android/camera/CameraSize;->width:I

    iget v4, v0, Lcom/android/camera/CameraSize;->height:I

    iget v5, p0, Lcom/android/camera/module/VideoSkyModule;->mBitRate:I

    iget v6, p0, Lcom/android/camera/module/VideoSkyModule;->mFrameRate:I

    iget-object v7, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCameraNotifier:Lcom/xiaomi/magicvideosky/EffectCameraNotifier;

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->ConstructMediaEffectCamera(IIIILcom/xiaomi/magicvideosky/EffectCameraNotifier;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->SetCameraId(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->EnableSegAlgorithms(Z)V

    .line 10
    iput-boolean v2, p0, Lcom/android/camera/module/VideoSkyModule;->mInitRender:Z

    .line 11
    iput-boolean v2, p0, Lcom/android/camera/module/VideoSkyModule;->mCanRender:Z

    .line 12
    iput-boolean v2, p0, Lcom/android/camera/module/VideoSkyModule;->mIsRecording:Z

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/RenderEngineAdapter;->setRendererListener(Lcom/android/camera/ui/CameraRenderEngine$RendererListener;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    .line 15
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isEisOn()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/VideoSkyModule;->mQuality:I

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

.method private onVideoSaveFinish()V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSaveFinish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/VideoSkyModule;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mVideoFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/camera/Util;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v2}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Landroid/content/ContentValues;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v4, "title"

    .line 7
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_display_name"

    .line 8
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    .line 9
    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mVideoFilePath:Ljava/lang/String;

    const-string v1, "_data"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v1, v1, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "resolution"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmpl-double v1, v1, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_1

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 15
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 16
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a7

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;

    if-eqz v0, :cond_2

    .line 17
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;->onPreviewPrepare(Landroid/content/ContentValues;)V

    .line 18
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->resetToPreview()V

    .line 19
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mVideoFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/storage/ImageSaver;->addVideo(Ljava/lang/String;Landroid/content/ContentValues;Z)V

    return-void
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
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pauseVideoRecording formRelease "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->canRecordingStop()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    sget-object p1, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "too fast to pause recording."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd4

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz p1, :cond_4

    .line 8
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPause()V

    goto :goto_1

    .line 9
    :cond_4
    sget-object p1, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "recordState pause fail~"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->stopRecordingTime()V

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/VideoSkyModule;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    .line 13
    iput v0, p0, Lcom/android/camera/module/VideoSkyModule;->mState:I

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->StopRecording()V

    .line 15
    :cond_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/android/camera/module/VideoSkyModule;->mIsRecording:Z

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private prepareEffectGraph()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getVideoSkySegmentData()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;

    invoke-interface {v4}, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mMediaEffectGraph:Lcom/xiaomi/magicvideosky/MediaEffectGraph;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/MediaEffectGraph;->DestructMediaEffectGraph()V

    .line 7
    :cond_1
    new-instance v0, Lcom/xiaomi/magicvideosky/MediaEffectGraph;

    invoke-direct {v0}, Lcom/xiaomi/magicvideosky/MediaEffectGraph;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mMediaEffectGraph:Lcom/xiaomi/magicvideosky/MediaEffectGraph;

    .line 8
    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/MediaEffectGraph;->ConstructMediaEffectGraph()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mMediaEffectGraph:Lcom/xiaomi/magicvideosky/MediaEffectGraph;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v2

    invoke-virtual {v0, v1, v4}, Lcom/xiaomi/magicvideosky/MediaEffectGraph;->AddSourcesAndEffectBySourcesPath([Ljava/lang/String;[F)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mMediaEffectGraph:Lcom/xiaomi/magicvideosky/MediaEffectGraph;

    invoke-virtual {v0, v3}, Lcom/xiaomi/magicvideosky/MediaEffectGraph;->SetAudioMute(Z)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mMediaEffectGraph:Lcom/xiaomi/magicvideosky/MediaEffectGraph;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/magicvideosky/MediaEffectGraph;->AddAudioTrack(Ljava/lang/String;Z)J

    return-void
.end method

.method private previewWhenSessionSuccess()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 2
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->MI_LIVE_TYPES_ON_PREVIEW_SUCCESS:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method private releaseVideoSkySDK()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseVideoSkySDK E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v2, "DestructMediaEffectCamera start"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->StopPreviewRecord()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->DestructMediaEffectCamera()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    .line 8
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, LOooO00o/OooO0O0/OooO00o/o000oOoO/oo0o0Oo;

    invoke-direct {v3, v0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/oo0o0Oo;-><init>(Lcom/xiaomi/magicvideosky/MediaEffectCamera;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->mInitRender:Z

    .line 10
    iput-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    .line 11
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v2, "DestructMediaEffectCamera end"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mComposeFile:Lcom/xiaomi/magicvideosky/MediaComposeFile;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/MediaComposeFile;->CancelCompose()V

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mComposeFile:Lcom/xiaomi/magicvideosky/MediaComposeFile;

    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/MediaComposeFile;->DestructMediaComposeFile()V

    .line 15
    iput-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mComposeFile:Lcom/xiaomi/magicvideosky/MediaComposeFile;

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mMediaEffectGraph:Lcom/xiaomi/magicvideosky/MediaEffectGraph;

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/MediaEffectGraph;->DestructMediaEffectGraph()V

    .line 18
    iput-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mMediaEffectGraph:Lcom/xiaomi/magicvideosky/MediaEffectGraph;

    .line 19
    :cond_2
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseVideoSkySDK X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetAndUnlock3A()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetAndUnlock3A"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->mIsRecording:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v1, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetAndUnlock3A, mCamera2Device is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mAeLockSupported:Z

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    .line 7
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mAwbLockSupported:Z

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    return-void
.end method

.method private resetToPreview()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/android/camera/module/VideoSkyModule;->mStartTime:J

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/camera/module/VideoSkyModule;->mState:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->mIsRecording:Z

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/extra/DataItemLive;->setVideoSkySegmentData(Ljava/util/List;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    .line 8
    :cond_0
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetToPreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resumePreviewIfNeeded()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumePreviewIfNeeded"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->mIsFinished:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->resumePreview()V

    return-void
.end method

.method private resumeVideoRecording()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    if-eqz v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mSegments:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoSkyModule;->mSegments:Ljava/util/Stack;

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/extra/DataItemLive;->fillVideoSkySegmentData(Ljava/util/Stack;)V

    .line 7
    :cond_2
    sget-object v1, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeVideoRecording segments size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/VideoSkyModule;->mSegments:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-wide v1, p0, Lcom/android/camera/module/VideoSkyModule;->mMaxDuration:J

    iget-object v3, p0, Lcom/android/camera/module/VideoSkyModule;->mSegments:Ljava/util/Stack;

    invoke-static {v3}, Lcom/android/camera/module/impl/component/ILive;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v3

    sub-long v7, v1, v3

    const/4 v1, 0x3

    .line 9
    iput v1, p0, Lcom/android/camera/module/VideoSkyModule;->mState:I

    .line 10
    iget-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mSegments:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;

    invoke-interface {v1}, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;->getNextPos()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/module/VideoSkyModule;->mAudioPos:J

    .line 11
    sget-object v1, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeVideoRecording duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " audioPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/camera/module/VideoSkyModule;->mAudioPos:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v5, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    sget-object v6, Lcom/android/camera/module/VideoSkyModule;->TEMP_VIDEO_PATH:Ljava/lang/String;

    iget-wide v9, p0, Lcom/android/camera/module/VideoSkyModule;->mAudioPos:J

    invoke-virtual/range {v5 .. v10}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->StartRecording(Ljava/lang/String;JJ)V

    .line 13
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->mIsRecording:Z

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->startRecordingTime()V

    .line 16
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_4

    .line 18
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onResume()V

    goto :goto_0

    .line 19
    :cond_4
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recordState resume fail~"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setOrientation(II)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 2
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "orientation change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 5
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-eq p1, p2, :cond_2

    .line 6
    iput p2, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->setOrientationParameter()V

    :cond_2
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

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o000000;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o000000;-><init>(Lcom/android/camera/module/VideoSkyModule;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_0
    return-void
.end method

.method private showVideoPreview()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startPreviewSession()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->startFaceDetection()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mSurfaceCreatedTimestamp:J

    .line 9
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v3, Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->getOperatingMode()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, p0

    .line 12
    invoke-virtual/range {v2 .. v9}, Lcom/android/camera2/Camera2Proxy;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method private startRecordingTime()V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRecordingCount"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/module/VideoSkyModule;->mMaxDuration:J

    iget-object v2, p0, Lcom/android/camera/module/VideoSkyModule;->mSegments:Ljava/util/Stack;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/ILive;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 5
    new-instance v2, Lcom/android/camera/module/VideoSkyModule$2;

    const-wide/16 v8, 0x3e8

    move-object v4, v2

    move-object v5, p0

    move-wide v6, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/module/VideoSkyModule$2;-><init>(Lcom/android/camera/module/VideoSkyModule;JJ)V

    iput-object v2, p0, Lcom/android/camera/module/VideoSkyModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/VideoSkyModule;->mStartTime:J

    .line 7
    iget-object v2, p0, Lcom/android/camera/module/VideoSkyModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 8
    sget-object v2, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRecordingTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startVideoRecording()V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a7

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;->processingPrepare()V

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;->processingStart()V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    if-eqz v2, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->updateVideoSky()V

    .line 11
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    add-int/lit8 v2, v2, 0x5a

    rem-int/lit16 v2, v2, 0x168

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit16 v2, v2, 0xb4

    .line 13
    rem-int/lit16 v2, v2, 0x168

    :cond_0
    const/4 v3, 0x2

    .line 14
    iput v3, p0, Lcom/android/camera/module/VideoSkyModule;->mState:I

    const-wide/16 v3, 0x0

    .line 15
    iput-wide v3, p0, Lcom/android/camera/module/VideoSkyModule;->mAudioPos:J

    .line 16
    iget-object v3, p0, Lcom/android/camera/module/VideoSkyModule;->mSegments:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->clear()V

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/VideoSkyModule;->mSegments:Ljava/util/Stack;

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/extra/DataItemLive;->setVideoSkySegmentData(Ljava/util/List;)V

    .line 18
    sget-object v3, Lcom/android/camera/module/VideoSkyModule;->TEMP_VIDEO_PATH:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/module/impl/component/FileUtils;->deleteSubFiles(Ljava/lang/String;)Z

    .line 19
    iget-object v3, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    invoke-virtual {v3, v2}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->SetOrientation(I)V

    .line 20
    iget-object v4, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    sget-object v5, Lcom/android/camera/module/VideoSkyModule;->TEMP_VIDEO_PATH:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/camera/module/VideoSkyModule;->mMaxDuration:J

    iget-wide v8, p0, Lcom/android/camera/module/VideoSkyModule;->mAudioPos:J

    invoke-virtual/range {v4 .. v9}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->StartRecording(Ljava/lang/String;JJ)V

    .line 21
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->startRecordingTime()V

    .line 23
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onStart()V

    return-void

    :catchall_0
    move-exception v0

    .line 24
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private stopRecordingTime()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v1, "cancelRecordingCount"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private stopVideoRecording()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "skip stopVideoRecording & remove startVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lcom/android/camera/module/VideoSkyModule;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->showVideoPreview()V

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->stopRecordingTime()V

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x2a7

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;->processingFinish()V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    .line 13
    iput v2, p0, Lcom/android/camera/module/VideoSkyModule;->mState:I

    .line 14
    iget-object v2, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    invoke-virtual {v2}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->StopRecording()V

    .line 15
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 17
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostPreview()V

    return-void

    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateDeviceOrientation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setDeviceOrientation(I)V

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

.method private updateLiveRelated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera2/Camera2Proxy;->startPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferLiveVideoQuality(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/VideoSkyModule;->mQuality:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v1, 0x2d0

    const/16 v2, 0x500

    invoke-direct {v0, v2, v1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 3
    new-instance v0, Lcom/android/camera/CameraSize;

    invoke-direct {v0, v2, v1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v1, 0x438

    const/16 v2, 0x780

    invoke-direct {v0, v2, v1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 5
    new-instance v0, Lcom/android/camera/CameraSize;

    invoke-direct {v0, v2, v1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    .line 7
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePictureAndPreviewSize previewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePictureAndPreviewSize mAlgorithmPreviewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v1, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method private updateVideoSky()V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateVideoSky E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v1, "mEffectCamera is null, updateMagicVideoSky failed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningVideoSky()Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->getMagicVideoSkyValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->getVideoSkyParamsById(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveMusic()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 9
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 10
    aget-object v3, v3, v4

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    const-string v4, "audio_name"

    .line 11
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v4, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    invoke-virtual {v4, v0}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->SetParams(Ljava/util/Map;)Z

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    invoke-virtual {v0, v2}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->EnableSegAlgorithms(Z)V

    .line 14
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateVideoSky X, enable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " musicPath:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->isEisOn()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

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
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

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
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->releaseVideoSkySDK()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->stopPreviewCallback(Z)V

    .line 7
    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setAeAwbLock(Z)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->destroy()V

    .line 11
    :cond_1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs consumePreference([I)V
    .locals 7

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    sparse-switch v3, :sswitch_data_0

    .line 2
    sget-object v4, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no consumer for this updateType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->updateVideoSky()V

    goto :goto_1

    .line 4
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateThermalLevel()V

    goto :goto_1

    .line 5
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateBackSoftLightPreference()V

    goto :goto_1

    .line 6
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateModuleRelated()V

    goto :goto_1

    .line 7
    :sswitch_4
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->updateLiveRelated()V

    goto :goto_1

    .line 8
    :sswitch_5
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->updateDeviceOrientation()V

    goto :goto_1

    .line 9
    :sswitch_6
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->updateVideoStabilization()V

    goto :goto_1

    .line 10
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateExposureMeteringMode()V

    goto :goto_1

    .line 11
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->focusCenter()V

    goto :goto_1

    .line 12
    :sswitch_9
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->updateFocusMode()V

    goto :goto_1

    .line 13
    :sswitch_a
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->updateAntiBanding(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :sswitch_b
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateFocusArea(Z)V

    goto :goto_1

    .line 15
    :sswitch_c
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->updatePictureAndPreviewSize()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x3 -> :sswitch_b
        0x9 -> :sswitch_a
        0xe -> :sswitch_9
        0x19 -> :sswitch_8
        0x1d -> :sswitch_7
        0x1f -> :sswitch_6
        0x23 -> :sswitch_5
        0x36 -> :sswitch_4
        0x37 -> :sswitch_3
        0x3a -> :sswitch_2
        0x42 -> :sswitch_1
        0x57 -> :sswitch_0
    .end sparse-switch
.end method

.method public doReverse()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v1, "doReverse"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getOperatingMode()I
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->isEisOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8004

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000oo0o()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x8030

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    .line 3
    sget-object v2, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOperatingMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getProcessorType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getRecordSpeed()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getStartRecordingTime()J
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStartRecordingTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/module/VideoSkyModule;->mStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-wide v0, p0, Lcom/android/camera/module/VideoSkyModule;->mStartTime:J

    return-wide v0
.end method

.method public getTotalRecordingTime()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mSegments:Ljava/util/Stack;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/ILive;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 2
    :goto_0
    sget-object v2, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTotalRecordingTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public is3ALocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->m3ALocked:Z

    return v0
.end method

.method public isAEAFLockSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDoingAction()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

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

.method public isProcessorReady()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->mIsRecording:Z

    return v0
.end method

.method public isSelectingCapturedResult()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowAeAfLockIndicator()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->m3ALocked:Z

    return v0
.end method

.method public isUnIncorruptible()Z
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

.method public loadLibs(Landroid/content/Context;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLibs start mLibLoaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/VideoSkyModule;->mLibLoaded:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/module/VideoSkyModule;->mLibLoaded:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "vvc++_shared"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "vvc++_shared loaded"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ffmpeg"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v1, "ffmpeg loaded"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "QnnHtpAltPrepStub"

    .line 7
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v1, "QnnHtpAltPrepStub loaded"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mace"

    .line 9
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v1, "mace loaded"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "vidsegment"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "vidsegment loaded"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "magicvideosky"

    .line 13
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v1, "magicvideosky loaded"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0xc35c

    .line 15
    invoke-static {p1, v0}, Lcom/xiaomi/magicvideosky/SystemUtil;->Init(Landroid/content/Context;I)V

    .line 16
    sget-object p1, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v0, "SystemUtil Init"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->VIDEO_SKY_RESOURCE_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "extern_libs/mace_video_sky.cache.bin"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "libmagicvideosky.so"

    invoke-static {v0, p1}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->InitSegment(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string v0, "InitSegment"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    iget p1, p0, Lcom/android/camera/module/VideoSkyModule;->mLibLoaded:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/camera/module/VideoSkyModule;->mLibLoaded:I

    .line 20
    sget-object p1, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadLibs end mLibLoaded : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/VideoSkyModule;->mLibLoaded:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public lockAEAF()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

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
    iput-boolean v1, p0, Lcom/android/camera/module/VideoSkyModule;->m3ALocked:Z

    return-void
.end method

.method public notifyAfterFirstFrameArrived()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAfterFirstFrameArrived.m3ALocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoSkyModule;->m3ALocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->m3ALocked:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->unlockAEAF()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->cancelFocus()V

    :cond_0
    return-void
.end method

.method public onActionStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onActionStop()V

    .line 2
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHostStopAndNotifyActionStop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoSkyModule;->mIsFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->mIsRecording:Z

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->stopVideoRecording()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->resumePreviewIfNeeded()V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->doLaterReleaseIfNeed()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a7

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->isRecording()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-wide v3, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 5
    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f1208b6

    invoke-static {v0, v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->stopVideoRecording()V

    :goto_0
    return v2

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;->onBackPressed()V

    return v2

    .line 9
    :cond_2
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v0

    return v0
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
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->startPreviewSession()V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->initVideoSkySDK()V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoSkyModule;->mOnResumeTime:J

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/SoundSetting;->setHeadsetDefaultValue(Landroid/content/Context;I)V

    return-void
.end method

.method public onCancelClicked()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->resetAndUnlock3A()V

    return-void
.end method

.method public onCreate(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->initVideoSkyResource()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/android/camera/module/VideoSkyModule;->LIB_LOAD_CALLER:I

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/VideoSkyModule;->loadLibs(Landroid/content/Context;I)V

    .line 4
    new-instance p1, Lcom/android/camera/module/VideoSkyModule$MainHandler;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/camera/module/VideoSkyModule$MainHandler;-><init>(Lcom/android/camera/module/VideoSkyModule;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/VideoSkyModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {p1, p2}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->onCameraOpened()V

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
    sget-object p1, Lcom/android/camera/module/VideoSkyModule;->TEMP_VIDEO_PATH:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    .line 11
    sget-object p1, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onCreate make path:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TEMP_VIDEO_PATH:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o000000O;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o000000O;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x2d

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setRotationVectorEnabled(Z)V

    .line 7
    iget v0, p0, Lcom/android/camera/module/VideoSkyModule;->LIB_LOAD_CALLER:I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoSkyModule;->unloadLibs(I)V

    return-void
.end method

.method public onExitClicked()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onExitClicked"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->stopRecordingTime()V

    return-void
.end method

.method public onFocusStateChanged(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_8

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

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isFocusing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "onAutoFocusMoving start"

    .line 4
    :cond_2
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 5
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result p1

    goto/16 :goto_0

    .line 8
    :cond_4
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getElapsedTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "AutoFocusTime=%1$dms focused=%2$b"

    .line 11
    invoke-static {v3, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_5
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isIsDepthFocus()Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 13
    :cond_6
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 14
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

    .line 15
    invoke-static {v5, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_7

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 18
    invoke-virtual {p0, v4}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 21
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/camera/module/VideoSkyModule;->m3ALocked:Z

    if-eqz p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1, v4}, Lcom/android/camera2/Camera2Proxy;->lockExposure(Z)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onFragmentResume()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFragmentResume, cameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->resumePreview()V

    :cond_0
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

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0x2a7

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;->canSnap()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    const/16 v0, 0x58

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-eq p1, v2, :cond_4

    const/16 v4, 0x19

    if-eq p1, v4, :cond_4

    const/16 v4, 0x1b

    if-eq p1, v4, :cond_2

    const/16 v4, 0x42

    if-eq p1, v4, :cond_2

    const/16 v4, 0x57

    if-eq p1, v4, :cond_4

    if-eq p1, v0, :cond_4

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x28

    const v0, 0x7f1207c6

    .line 5
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    .line 7
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/android/camera/module/VideoSkyModule;->performKeyClicked(ILjava/lang/String;IZ)V

    :cond_3
    return v3

    :cond_4
    if-eq p1, v2, :cond_6

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    :goto_0
    move v0, v3

    .line 8
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->isExternal()Z

    move-result v1

    .line 10
    :cond_7
    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZIZ)Z

    move-result v0

    if-eqz v0, :cond_8

    return v3

    .line 11
    :cond_8
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_9
    :goto_3
    return v1
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
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/module/VideoSkyModule;->onSingleTapUp(IIZ)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->isAEAFLockSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAEAFLockSupport()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->lockAEAF()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->performHapticFeedback(I)V

    return-void
.end method

.method public onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o000000o;

    invoke-direct {v0, p1}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o000000o;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoSkyModule;->setOrientation(II)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    .line 2
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->closeCamera()V

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
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPauseButtonClick pauseVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoSkyModule;->pauseVideoRecording(Z)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPauseButtonClick resumeVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->resumeVideoRecording()V

    :goto_0
    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/android/camera/module/VideoSkyModule;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object p3, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    if-eqz p3, :cond_1

    .line 3
    iget-boolean p3, p0, Lcom/android/camera/module/VideoSkyModule;->mInitRender:Z

    if-eqz p3, :cond_0

    const-string/jumbo p3, "video_sky_no_algorithm"

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_0

    .line 4
    iget-object p3, p0, Lcom/android/camera/module/VideoSkyModule;->mEffectCamera:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mCurGyroscope:[F

    invoke-virtual {p3, p1, v0}, Lcom/xiaomi/magicvideosky/MediaEffectCamera;->PushExtraYAndUVFrame(Landroid/media/Image;[F)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestRender()V

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string p3, "mEffectCamera is null, PushExtraYAndUVFrame fail"

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 8
    sget-object p2, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addPreviewFrame fail, "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V

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
    sget-object p1, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

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
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->previewWhenSessionSuccess()V

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
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->resetToPreview()V

    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->resetToPreview()V

    return-void
.end method

.method public onSaveClicked()V
    .locals 7

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f1209d6

    .line 2
    invoke-static {v1}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/camera/Util;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mVideoFileName:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mVideoFilePath:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->prepareEffectGraph()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mComposeFile:Lcom/xiaomi/magicvideosky/MediaComposeFile;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/MediaComposeFile;->DestructMediaComposeFile()V

    .line 9
    :cond_0
    new-instance v1, Lcom/xiaomi/magicvideosky/MediaComposeFile;

    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mMediaEffectGraph:Lcom/xiaomi/magicvideosky/MediaEffectGraph;

    invoke-direct {v1, v0}, Lcom/xiaomi/magicvideosky/MediaComposeFile;-><init>(Lcom/xiaomi/magicvideosky/MediaEffectGraph;)V

    iput-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mComposeFile:Lcom/xiaomi/magicvideosky/MediaComposeFile;

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v2, v0, Lcom/android/camera/CameraSize;->width:I

    iget v3, v0, Lcom/android/camera/CameraSize;->height:I

    iget v4, p0, Lcom/android/camera/module/VideoSkyModule;->mBitRate:I

    iget v5, p0, Lcom/android/camera/module/VideoSkyModule;->mFrameRate:I

    new-instance v6, Lcom/android/camera/module/VideoSkyModule$3;

    invoke-direct {v6, p0}, Lcom/android/camera/module/VideoSkyModule$3;-><init>(Lcom/android/camera/module/VideoSkyModule;)V

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/magicvideosky/MediaComposeFile;->ConstructMediaComposeFile(IIIILcom/xiaomi/magicvideosky/EffectNotifier;)Z

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mComposeFile:Lcom/xiaomi/magicvideosky/MediaComposeFile;

    iget-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/magicvideosky/MediaComposeFile;->SetComposeFileName(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mComposeFile:Lcom/xiaomi/magicvideosky/MediaComposeFile;

    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/MediaComposeFile;->BeginCompose()V

    .line 13
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepare save video"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->checkShutterCondition()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/16 v1, 0x6e

    if-ne p1, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->onUserInteraction()V

    if-eqz v0, :cond_1

    const-string/jumbo v1, "speech_shutter_desc"

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideRecommendDescTip(Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/module/VideoSkyModule;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->startVideoRecording()V

    .line 12
    :goto_0
    sget-object p1, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick startVideoRecording"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 13
    :cond_3
    sget-object p1, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick stopVideoRecording"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/camera/module/VideoSkyModule;->mIsVideoSaved:Z

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->stopVideoRecording()V

    .line 16
    :goto_1
    iget-boolean p1, p0, Lcom/android/camera/module/VideoSkyModule;->mIsRecording:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/module/VideoSkyModule;->mIsRecording:Z

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
    sget-object p1, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

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

    iput-wide v0, p0, Lcom/android/camera/module/VideoSkyModule;->mTouchFocusStartingTime:J

    .line 14
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->unlockAEAF()V

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

.method public onStopClicked()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopClicked"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/VideoSkyModule;->mRenderRect:Landroid/graphics/Rect;

    .line 3
    iput p1, v1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    const v2, 0x3fe38e39

    mul-float/2addr p1, v2

    float-to-int p1, p1

    .line 4
    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    .line 5
    iput v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p1

    .line 6
    iget p1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    iput p2, v1, Landroid/graphics/Rect;->top:I

    .line 7
    sget-object p1, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSurfaceChanged mRenderRect:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/VideoSkyModule;->mRenderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 0

    return-void
.end method

.method public onThermalConstrained()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onThermalConstrained()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->onReviewCancelClicked()V

    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->isDoingAction()Z

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

.method public pausePreview()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pausePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->pausePreview()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->mIsFinished:Z

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    return-void
.end method

.method public performKeyClicked(ILjava/lang/String;IZ)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p2, p2}, Lcom/android/camera/module/VideoSkyModule;->onShutterButtonFocus(ZI)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoSkyModule;->onShutterButtonClick(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, p1}, Lcom/android/camera/module/VideoSkyModule;->onShutterButtonFocus(ZI)V

    :cond_2
    :goto_0
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

    const/16 v1, 0x2a6

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe8

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xa4
        0xd4
    .end array-data
.end method

.method public releaseRender()V
    .locals 0

    return-void
.end method

.method public resumePreview()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->previewWhenSessionSuccess()V

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->setFrameAvailable(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/VideoSkyModule;->resumePreviewIfNeeded()V

    :cond_0
    return-void
.end method

.method public setMaxDuration(J)V
    .locals 0

    return-void
.end method

.method public setRecordSpeed(I)V
    .locals 0

    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->mIsFinished:Z

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

.method public startPreview()V
    .locals 2

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
    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->checkDisplayOrientation()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setDisplayOrientation(I)V

    .line 5
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mAeLockSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    return-void
.end method

.method public unRegisterModulePersistProtocol()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterModulePersistProtocol()V

    .line 2
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

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
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a6

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe8

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method

.method public unloadLibs(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/VideoSkyModule;->mLibLoaded:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/module/VideoSkyModule;->mLibLoaded:I

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unloadLibs mLibLoaded : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/VideoSkyModule;->mLibLoaded:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoSkyModule"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget p1, p0, Lcom/android/camera/module/VideoSkyModule;->mLibLoaded:I

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Lcom/xiaomi/magicvideosky/SystemUtil;->UnInit()V

    :cond_0
    return-void
.end method

.method public unlockAEAF()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoSkyModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unlockAEAF"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/VideoSkyModule;->m3ALocked:Z

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
