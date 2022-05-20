.class public Lcom/android/camera/module/VideoModule;
.super Lcom/android/camera/module/VideoBase;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/bluetooth/IBluetoothHeadsetConnectionState;
.implements Lcom/android/camera/module/video/RecorderController$ModuleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/VideoModule$VideoCaptureRunnable;
    }
.end annotation


# instance fields
.field public final mAiAudio:Lcom/android/camera/module/video/AiAudioController;

.field public final mAutoZoom:Lcom/android/camera/module/video/AutoZoomController;

.field public final mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

.field public mCountDownTimer:Landroid/os/CountDownTimer;

.field public final mDecibelControler:Lcom/android/camera/module/video/DecibelController;

.field public mEnableVideoSnapshot:Z

.field public mFovcEnabled:Z

.field public mFutureRecorder:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/android/camera/module/video/InitRecorderResult;",
            ">;"
        }
    .end annotation
.end field

.field public final mKaraoke:Lcom/android/camera/module/video/KaraokeController;

.field public mOverheatTipAlreadyShown:Z

.field public mPicCallback:Lcom/android/camera2/Camera2Proxy$PictureCallback;

.field public mQuickCapture:Z

.field public final mRecorderController:Lcom/android/camera/module/video/RecorderController;

.field public mRecorderListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

.field public mRecordingSecondTime:Ljava/lang/String;

.field public final mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

.field public mTopConfigProtocol:Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;

.field public final mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

.field public mVideoCaptureRunnable:Lcom/android/camera/module/VideoModule$VideoCaptureRunnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoBase;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mEnableVideoSnapshot:Z

    .line 3
    new-instance v0, Lcom/android/camera/module/video/AutoZoomController;

    invoke-direct {v0}, Lcom/android/camera/module/video/AutoZoomController;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoom:Lcom/android/camera/module/video/AutoZoomController;

    .line 4
    new-instance v0, Lcom/android/camera/module/video/DecibelController;

    invoke-direct {v0}, Lcom/android/camera/module/video/DecibelController;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mDecibelControler:Lcom/android/camera/module/video/DecibelController;

    .line 5
    new-instance v0, Lcom/android/camera/module/video/CameraDeviceController;

    invoke-direct {v0}, Lcom/android/camera/module/video/CameraDeviceController;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    .line 6
    new-instance v0, Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    invoke-direct {v0}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    .line 7
    new-instance v0, Lcom/android/camera/module/video/KaraokeController;

    invoke-direct {v0}, Lcom/android/camera/module/video/KaraokeController;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mKaraoke:Lcom/android/camera/module/video/KaraokeController;

    .line 8
    new-instance v0, Lcom/android/camera/module/VideoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$1;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mTopConfigProtocol:Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;

    .line 9
    new-instance v0, Lcom/android/camera/module/VideoModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$2;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mPicCallback:Lcom/android/camera2/Camera2Proxy$PictureCallback;

    .line 10
    new-instance v0, Lcom/android/camera/module/VideoModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$3;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    .line 11
    invoke-static {}, Lcom/android/camera/module/video/MediaRecorderCreator;->getInstance()Lcom/android/camera/module/video/MediaRecorderCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video/MediaRecorderCreator;->getAndResetResult()Lcom/android/camera/module/video/CreateRecorderResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/module/video/CreateRecorderResult;->getFutureMediaRecorder()Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mFutureRecorder:Ljava/util/concurrent/Future;

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/module/video/CreateRecorderResult;->getAiAudioController()Lcom/android/camera/module/video/AiAudioController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/module/video/CreateRecorderResult;->getRecorderTrackInfoBuilder()Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/module/video/CreateRecorderResult;->getRecorderUserSetting()Lcom/android/camera/module/video/UserRecordSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/module/video/CreateRecorderResult;->getRecorderRuntimeInfo()Lcom/android/camera/module/video/RecordRuntimeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/module/video/CreateRecorderResult;->getRecorderController()Lcom/android/camera/module/video/RecorderController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/android/camera/module/video/AiAudioController;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-direct {v0, v1}, Lcom/android/camera/module/video/AiAudioController;-><init>(Lcom/android/camera/module/video/RecordRuntimeInfo;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    .line 19
    invoke-static {}, Lcom/android/camera/module/video/VideoTrackInfo;->builder()Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 20
    new-instance v0, Lcom/android/camera/module/video/RecorderController;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/module/video/RecorderController;-><init>(Lcom/android/camera/module/video/UserRecordSetting;Lcom/android/camera/module/video/RecordRuntimeInfo;Lcom/android/camera/module/video/VideoTrackInfo$Builder;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/video/RecorderController;->setModuleCallback(Lcom/android/camera/module/video/RecorderController$ModuleCallback;)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/RecorderController;->setStateListener(Lcom/android/camera/module/video/RecorderController$RecorderStateListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/video/AutoZoomController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoom:Lcom/android/camera/module/video/AutoZoomController;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/module/VideoModule;ZZ)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->saveVideo(ZZ)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private captureAnim(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x3b1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->animateCapture()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->getCameraRotation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    :cond_1
    return-void
.end method

.method private captureIntentRelated()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->isThirdPartyUri()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, v1, v1}, Lcom/android/camera/module/VideoModule;->saveVideo(ZZ)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mIntentVideoUri:Landroid/net/Uri;

    .line 4
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMediaRecorderReleased: outputUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mIntentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mIntentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mQuickCapture:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoBase;->doReturnToCaller(Z)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->showAlert()V

    :cond_3
    :goto_1
    return-void
.end method

.method private checkLapseError()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    const-string v1, "fast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    const-string v1, "film_exposuredelay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-boolean v1, v0, Lcom/android/camera/module/video/UserRecordSetting;->mCaptureTimeLapse:Z

    if-eqz v1, :cond_2

    .line 3
    iget v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    const/16 v1, 0x3e8

    add-int/2addr v0, v1

    if-lt v0, v1, :cond_1

    const/16 v1, 0x3f0

    if-le v0, v1, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0Oo0oo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0Oo0oo;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private countDownForVideoBokeh()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    :cond_1
    new-instance v0, Lcom/android/camera/module/VideoModule$5;

    const-wide/16 v3, 0x76f2

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/module/VideoModule$5;-><init>(Lcom/android/camera/module/VideoModule;JJ)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private exitAutoHibernationRelated()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->exitAutoHibernation()V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a8

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->dismissAutoHibernation()V

    :cond_0
    return-void
.end method

.method private genVideoCover([BII)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->supportVideoCover()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const-string v1, "_data"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreviewPixelsRead E , path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->needMirrorForCover()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget v3, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mOrientationCompensationAtRecordStart:I

    if-eqz v3, :cond_2

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_2

    add-int/2addr v3, v4

    .line 7
    rem-int/lit16 v3, v3, 0x168

    iput v3, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mOrientationCompensationAtRecordStart:I

    .line 8
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 9
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 10
    invoke-static {p2}, Lcom/android/camera/Util;->isBitmapLikelyBlack(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onPreviewPixelsRead\uff0c bitmap invalid."

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget p1, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mOrientationCompensationAtRecordStart:I

    invoke-static {p2, p1, v1}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 p3, 0x64

    .line 13
    invoke-static {p1, p3}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object p3

    .line 14
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 15
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "video_cover_data"

    .line 16
    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo p3, "video_path"

    .line 17
    invoke-virtual {v2, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 19
    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 22
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onPreviewPixelsRead X , path = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private getJpegPictureCallback()Lcom/android/camera/module/video/JpegPictureCallback;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance v1, Lcom/android/camera/module/video/JpegPictureCallback;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/camera/module/video/JpegPictureCallback;-><init>(Landroid/location/Location;Lcom/android/camera/CameraSize;Lcom/android/camera/module/video/RecordRuntimeInfo;Lcom/android/camera/storage/ImageSaver;)V

    return-object v1
.end method

.method private getNextUpdateDelay(Ljava/lang/String;)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->isNormalMode()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    const-string v3, "fast"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "film_exposuredelay"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    .line 3
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v0

    double-to-long v4, v4

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-object v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v0, 0xa9

    if-ne p1, v0, :cond_1

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    .line 7
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    cmp-long p1, v4, v1

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    move-wide v1, v4

    :cond_4
    :goto_0
    return-wide v1
.end method

.method private getOnTagsListener(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)Lcom/android/camera/module/VideoBase$OnTagsListener;
    .locals 7

    .line 1
    new-instance v6, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOOo;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOOo;-><init>(Lcom/android/camera/module/VideoModule;Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)V

    return-object v6
.end method

.method private getRecordState()Lcom/android/camera/protocol/ModeProtocol$RecordState;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    return-object v0
.end method

.method private getTextOfShowTime(JJ)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->isNormalMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    const-wide/16 v2, 0x3e8

    div-long v2, p3, v2

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setDuration(J)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 3
    invoke-static {p3, p4, v1}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    const-string v2, "fast"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "film_exposuredelay"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p3, p4, v1}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget p3, p3, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double p3, p3

    .line 8
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xa9

    if-ne v0, v3, :cond_3

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/camera/module/video/VideoUtil;->getSpeedRecordVideoLength(JDI)J

    move-result-wide p1

    .line 12
    invoke-static {p1, p2, v1}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/camera/module/video/VideoUtil;->getSpeedRecordVideoLength(JDI)J

    move-result-wide p1

    const/4 p3, 0x1

    .line 15
    invoke-static {p1, p2, p3}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
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

.method private initRecorder()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFutureRecorder:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mFutureRecorder:Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/video/InitRecorderResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    :try_start_1
    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mFutureRecorder:Ljava/util/concurrent/Future;

    .line 6
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCameraOpened: wait recorder cost "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    :goto_0
    move-object v4, v0

    move-object v0, v2

    .line 7
    :goto_1
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v4, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 9
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/video/RecorderController;->setupRecorderParameter(Landroid/content/Context;I)Lcom/android/camera/module/video/MediaRecorderParameter;

    move-result-object v0

    .line 10
    iget-object v2, v4, Lcom/android/camera/module/video/InitRecorderResult;->recorderParameter:Lcom/android/camera/module/video/MediaRecorderParameter;

    invoke-virtual {v0, v2}, Lcom/android/camera/module/video/MediaRecorderParameter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_3

    .line 11
    :cond_0
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCameraOpened: preparedParam = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/camera/module/video/InitRecorderResult;->recorderParameter:Lcom/android/camera/module/video/MediaRecorderParameter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCameraOpened: currentParam = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    :goto_3
    if-nez v0, :cond_3

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->parseIntent(Landroid/content/Intent;)V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    new-instance v4, Lcom/android/camera/storage/mediastore/VideoFile;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v4, v5}, Lcom/android/camera/storage/mediastore/VideoFile;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/storage/mediastore/VideoFile;->initialize(ZLandroid/content/Intent;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    iget v5, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/module/video/UserRecordSetting;->initVideoOrientation(II)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v6, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/camera/module/video/RecorderController;->initializeRecorder(ZLcom/android/camera/module/video/AiAudioController;Landroid/content/Context;I)Lcom/android/camera/module/video/InitRecorderResult;

    move-result-object v0

    .line 20
    iget-boolean v0, v0, Lcom/android/camera/module/video/InitRecorderResult;->succeed:Z

    .line 21
    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCameraOpened: prepare recorder cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, v0

    .line 22
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v2, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOO0;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOO0;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 23
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    iput v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mOrientationCompensationAtRecordStart:I

    :cond_4
    return v1
.end method

.method private is60FPSSupported()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->is1080P60FpsEISSupported(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->is4K60FpsEISSupported()Z

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    const/16 v5, 0x3c

    invoke-virtual {v3, v4, v5}, Lcom/android/camera2/CameraCapabilities;->isCurrentQualitySupportEis(II)Z

    move-result v3

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private needMirrorForCover()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOo0o()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xa2

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xcf

    if-ne v1, v2, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method private onStartRecordButtonClick(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderWorking:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mIsSatFallback:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->shouldCheckSatFallbackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "video record check: sat fallback"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkCallingState()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 6
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    .line 8
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSupportDelayRecord(I)Z

    move-result v0

    const/16 v1, 0x37

    if-nez v0, :cond_4

    .line 9
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x2

    .line 10
    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 11
    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/FocusManager2;->canRecord()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    .line 12
    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterButtonClick: startVideoRecording"

    invoke-static {v1, v2}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 13
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string/jumbo p1, "startVideoRecording mode = %d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x190

    .line 14
    invoke-static {p1, v4}, Lcom/android/camera/module/video/Boost;->startBoost(II)V

    if-nez v0, :cond_5

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startVideoRecording()V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->delayTriggerShooting()V

    .line 17
    :goto_0
    invoke-static {}, Lcom/android/camera/module/video/Boost;->stopBoost()V

    goto :goto_1

    .line 18
    :cond_6
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "wait for autoFocus"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iput-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    .line 20
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method

.method private onStartRecorderFail()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x5

    const-string/jumbo v2, "onStartRecorderFail"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 5
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 6
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreOuterAudio()V

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->updateVideoTagState(I)V

    return-void
.end method

.method private pauseRecording()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/RecorderController;->pauseVideoRecording()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->updateVideoTagState(I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPauseOrResumeVideoRecording(ZZ)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->subtitlePause()V

    .line 5
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPauseButtonClick onPause"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getRecordState()Lcom/android/camera/protocol/ModeProtocol$RecordState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPause()V

    return-void
.end method

.method private reCheckFastMotionConfig()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-boolean v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_1

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckFastMotion(Z)V

    :cond_1
    return-void
.end method

.method private readVideoPreferences()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/module/video/UserRecordSetting;->readVideoPreferences(IILcom/android/camera/CameraIntentManager;I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->checkLapseError()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setFrameRate(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    return-void
.end method

.method private requestVideoCover()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->supportVideoCover()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 3
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->requestReadPixels(I)V

    :cond_1
    return-void
.end method

.method private resetFocusState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    const-string v1, "continuous-video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocusStateIfNeeded()V

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/VideoBase;->setVideoFocusMode(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0xe

    aput v2, v1, v0

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_0
    return-void
.end method

.method private resumeRecording()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPauseButtonClick resumeVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getRecordState()Lcom/android/camera/protocol/ModeProtocol$RecordState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/video/RecorderController;->resumeVideoRecording(Lcom/android/camera/protocol/ModeProtocol$RecordState;Lcom/android/camera/module/video/RecordRuntimeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->subtitleResume()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->updateVideoTagState(I)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPauseOrResumeVideoRecording(ZZ)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->updateVideoTagState(I)V

    :goto_0
    return-void
.end method

.method private saveVideo(ZZ)Landroid/net/Uri;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x5

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/storage/mediastore/VideoFile;->setDateTaken(J)V

    const/4 v1, 0x0

    .line 4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    const-string v5, ", isSync= "

    const-string v6, " isFinal="

    if-ge v3, v4, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v1

    .line 6
    sget-object v3, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saveVideo: path="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    sget-object v3, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saveVideo: uri="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez p2, :cond_1

    .line 8
    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p2, p2, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/android/camera/module/VideoModule;->getOnTagsListener(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)Lcom/android/camera/module/VideoBase$OnTagsListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->applyTags(Lcom/android/camera/module/VideoBase$OnTagsListener;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p2, p2, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/android/camera/storage/ImageSaver;->addVideoSync(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_2
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveVideo: failed to save "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method private setAiAudioZoomLv()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/AiAudioController;->setCurrentAiAudioZoomLv()V

    :cond_1
    return-void
.end method

.method private showPostProcessIfNeed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderPostProcessing:Z

    if-eqz v0, :cond_0

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
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    :cond_0
    return-void
.end method

.method private startBluetoothSco()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->startBluetoothSco(I)V

    :cond_1
    return-void
.end method

.method private startVideoRecordingIfNeeded()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraIntentManager;->isOpenOnly(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getTimerDurationSeconds()I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "Video mode doesn\'t support Time duration!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isIntentPhotoDone()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/VideoModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$4;-><init>(Lcom/android/camera/module/VideoModule;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setIntnetPhotoDone(Z)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private supportVideoCover()Z
    .locals 10

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OoOo()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v3}, Lcom/android/camera/module/video/UserRecordSetting;->is4KCamcorder()Z

    move-result v3

    .line 3
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v4}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v4

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v5

    if-nez v5, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v5

    if-nez v5, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v1

    .line 7
    :goto_2
    sget-wide v6, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v8, 0x6

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5

    if-nez v5, :cond_4

    if-eqz v0, :cond_3

    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :cond_4
    :goto_3
    return v1

    :cond_5
    if-nez v5, :cond_8

    if-eqz v0, :cond_7

    .line 8
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isVhdrOn(I)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v3, :cond_8

    :cond_6
    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :cond_8
    :goto_4
    return v1
.end method

.method private takePreviewSnapShoot()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mPicCallback:Lcom/android/camera2/Camera2Proxy$PictureCallback;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/module/video/CameraDeviceController;->takePreviewShot(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/CameraScreenNail;)V

    return-void
.end method

.method private trackProVideoInfo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    const v1, 0x7f1207cc

    .line 2
    invoke-static {v1}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pref_qc_pro_video_whitebalance_k_value_key"

    .line 3
    invoke-static {v2, v1}, Lcom/android/camera/module/video/VideoUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setWhiteBalance(Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    const v1, 0x7f120688

    .line 6
    invoke-static {v1}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pref_qc_camera_pro_video_exposuretime_key"

    .line 7
    invoke-static {v2, v1}, Lcom/android/camera/module/video/VideoUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setExposureTime(Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    const v1, 0x7f1206fb

    .line 10
    invoke-static {v1}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pref_qc_pro_video_camera_iso_key"

    .line 11
    invoke-static {v3, v2}, Lcom/android/camera/module/video/VideoUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setISO(Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 14
    invoke-static {v1}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pref_qc_camera_pro_video_exposure_value_key"

    .line 15
    invoke-static {v2, v1}, Lcom/android/camera/module/video/VideoUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setEV(Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setVideoQuality(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 18
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    invoke-static {}, Lcom/android/camera/module/video/VideoUtil;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setIsBluetoothScoOn(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 19
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    invoke-virtual {v0}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->build()Lcom/android/camera/module/video/VideoTrackInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRecordVideoInProMode(Lcom/android/camera/module/video/VideoTrackInfo;)V

    return-void
.end method

.method private trackVideoInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setIsAutoZoom(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setIsSuperEis(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    .line 3
    invoke-static {v1}, Lcom/android/camera/module/video/VideoTrackUtil;->getVideoMode(Lcom/android/camera/module/video/UserRecordSetting;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setVideoMode(Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/android/camera/module/video/VideoUtil;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setIsBluetoothScoOn(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setIsUltraWide(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setVideoQuality(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/module/video/CameraDeviceController;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setFlashMode(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setLapseCaptureTime(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    .line 10
    invoke-virtual {v1}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->isSubtitleSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setSubtitleSupported(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    .line 11
    invoke-virtual {v1}, Lcom/android/camera/module/video/AiAudioController;->getAIAudioTrackParams()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setAiAudioTrackParams([Ljava/lang/String;)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setAutoHibernation(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mEnterAutoHibernationCount:I

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setAutoHibernationCount(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 14
    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setVideoHdr(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    invoke-virtual {v0}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->build()Lcom/android/camera/module/video/VideoTrackInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoRecorded(Lcom/android/camera/module/video/VideoTrackInfo;)V

    return-void
.end method

.method private trigerScanFile(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0OO00O;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0OO00O;-><init>(Lcom/android/camera/module/VideoModule;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private triggerNextRecordTimeUpdate(Lcom/android/camera/module/video/RecordRuntimeInfo;JLjava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean p1, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0, p4}, Lcom/android/camera/module/VideoModule;->getNextUpdateDelay(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    rem-long/2addr p2, v0

    sub-long/2addr v0, p2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x2a

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateEvValue()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const-string v1, "0"

    const/16 v2, 0xa9

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "pref_qc_camera_fastmotion_pro_exposure_value_key"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/module/video/VideoUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "pref_qc_camera_pro_video_exposure_value_key"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/module/video/VideoUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationStep()F

    move-result v1

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mEvValue:I

    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mEvState:I

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setEvValue()V

    return-void
.end method

.method private updateMutexModePreference()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    :cond_0
    return-void
.end method

.method private updatePictureSize(DLcom/android/camera/CameraSize;)V
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000oo()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    .line 2
    iget v1, p3, Lcom/android/camera/CameraSize;->width:I

    .line 3
    iget p3, p3, Lcom/android/camera/CameraSize;->height:I

    goto :goto_0

    :cond_0
    move p3, v1

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/16 v2, 0x100

    .line 5
    invoke-virtual {v0, v2}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(I)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-static {v0, p1, p2, v1, p3}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Lcom/android/camera/CameraSize;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    const/4 p1, 0x4

    .line 8
    sget-object p2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "pictureSize: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePreviewSize(DLcom/android/camera/CameraSize;)V
    .locals 5

    .line 1
    iget v0, p3, Lcom/android/camera/CameraSize;->width:I

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p3, Lcom/android/camera/CameraSize;->width:I

    const/16 v1, 0x2d0

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p3, p3, Lcom/android/camera/CameraSize;->height:I

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p3

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0O()[I

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 p3, 0x0

    .line 7
    aget p3, v1, p3

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x1

    .line 8
    aget v0, v1, v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    move v4, v0

    move v0, p3

    move p3, v4

    .line 9
    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const-class v2, Landroid/graphics/SurfaceTexture;

    .line 10
    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 11
    invoke-static {v1, p1, p2, v0, p3}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 12
    iget p2, p1, Lcom/android/camera/CameraSize;->width:I

    iget p1, p1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, p2, p1}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method private updateRecordStateWhenStopRecording()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v1, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderPostProcessing:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingStart(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    const-string v2, "film_exposuredelay"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateVideoSize(D)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const-class v1, Landroid/media/MediaRecorder;

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v0, p1, p2, v2, v1}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Lcom/android/camera/CameraSize;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iput-object p1, p2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    .line 5
    sget-object p2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "videoSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0, p2, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateWhiteBalance()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const-string v1, "1"

    const/16 v2, 0xa9

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "pref_camera_fastmotion_pro_whitebalance_key"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/module/video/VideoUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "pref_camera_video_whitebalance_key"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/module/video/VideoUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setAWBMode(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoOverheatHint(I)V

    return-void
.end method

.method public synthetic OooO00o(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;ZLjava/util/List;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/storage/ImageSaver;->addVideo(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;ZZLjava/util/List;)Landroid/net/Uri;

    return-void
.end method

.method public synthetic OooO00o(Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0o()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const v2, 0x7f12096c

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    return-void
.end method

.method public synthetic OooO0oO()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "video_rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public synthetic OooO0oo()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->handlePendingScreenSlide()V

    return-void
.end method

.method public synthetic OooOO0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)V

    return-void
.end method

.method public synthetic OooOO0O()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "video_rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public applyTags(Lcom/android/camera/module/VideoBase$OnTagsListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->getTagsListener(Lcom/android/camera/module/VideoBase$OnTagsListener;)Lcom/android/camera/module/VideoBase$OnTagsListener;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->applyTags(Lcom/android/camera/module/VideoBase$OnTagsListener;)V

    return-void
.end method

.method public applyZoomRatio()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomRatio:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->applyZoomRatio(F)V

    return-void
.end method

.method public applyZoomRatio(F)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->applyZoomRatio(F)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->setAiAudioZoomLv()V

    return-void
.end method

.method public checkRecordTimeValid(Z)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v2, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 2
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "stopVideoRecording fail. Should record less 1s."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v1
.end method

.method public closeCamera()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->closeCamera()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/CameraDeviceController;->release()V

    return-void
.end method

.method public varargs consumePreference([I)V
    .locals 7

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_b

    aget v3, p1, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    const/4 v4, 0x6

    if-eq v3, v4, :cond_5

    const/16 v4, 0x18

    if-eq v3, v4, :cond_4

    const/16 v4, 0x19

    if-eq v3, v4, :cond_3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_2

    const/16 v4, 0x43

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    sparse-switch v3, :sswitch_data_0

    .line 2
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v4, v3}, Lcom/android/camera/module/video/CameraDeviceController;->consumePreference(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 3
    sget-object v4, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no consumer for this updateType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateTrackFocus()V

    goto/16 :goto_2

    .line 5
    :sswitch_1
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-virtual {v4, v5}, Lcom/android/camera/module/video/UserRecordSetting;->is4K60FpsCamcorder(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/module/video/CameraDeviceController;->updateASD(Z)V

    goto/16 :goto_2

    .line 6
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateEvValue()V

    goto/16 :goto_2

    .line 7
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateBackSoftLightPreference()V

    goto/16 :goto_2

    .line 8
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateModuleRelated()V

    goto/16 :goto_2

    .line 9
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 10
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v3}, Lcom/android/camera/module/video/CameraDeviceController;->updateAutoZoomMode()V

    goto/16 :goto_2

    .line 11
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateDeviceOrientation()V

    goto/16 :goto_2

    .line 12
    :sswitch_7
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v3, v4}, Lcom/android/camera/module/video/CameraDeviceController;->setVideoSnapshotSize(Lcom/android/camera/CameraSize;)V

    goto/16 :goto_2

    .line 13
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 14
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isEisOn()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/module/video/CameraDeviceController;->updateVideoStabilization(Lcom/android/camera/CameraScreenNail;Z)V

    goto/16 :goto_2

    .line 15
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateExposureMeteringMode()V

    goto/16 :goto_2

    .line 16
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateFpsRange()V

    goto/16 :goto_2

    .line 17
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateExposureTime()V

    goto/16 :goto_2

    .line 18
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateVideoFocusMode()V

    goto :goto_2

    .line 19
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateBeauty()V

    goto :goto_2

    .line 20
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setEvValue()V

    goto :goto_2

    .line 21
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateHDRPreference()V

    goto :goto_2

    .line 22
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateFlashPreference()V

    goto :goto_2

    .line 23
    :pswitch_5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000ooO()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "0"

    goto :goto_1

    .line 24
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v3

    .line 25
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->updateAntiBanding(Ljava/lang/String;)V

    goto :goto_2

    .line 26
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehColorRetentionTag(Z)Z

    move-result v3

    .line 27
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v4, v3}, Lcom/android/camera/module/video/CameraDeviceController;->updateVideoBokeh(Z)V

    goto :goto_2

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateThermalLevel()V

    goto :goto_2

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->focusCenter()V

    goto :goto_2

    .line 30
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->applyZoomRatio()V

    goto :goto_2

    .line 31
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateWhiteBalance()V

    goto :goto_2

    .line 32
    :cond_6
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mFaceDetectMgr:Lcom/android/camera/module/video/FaceDetectManager;

    invoke-virtual {v3}, Lcom/android/camera/module/video/FaceDetectManager;->updateFace()V

    goto :goto_2

    .line 33
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateFocusArea(Z)V

    goto :goto_2

    .line 34
    :cond_8
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    goto :goto_2

    .line 35
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updatePictureAndPreviewSize()V

    :cond_a
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_b
        0x13 -> :sswitch_a
        0x1d -> :sswitch_9
        0x1f -> :sswitch_8
        0x21 -> :sswitch_7
        0x23 -> :sswitch_6
        0x33 -> :sswitch_5
        0x37 -> :sswitch_4
        0x3a -> :sswitch_3
        0x3f -> :sswitch_2
        0x46 -> :sswitch_1
        0x56 -> :sswitch_0
    .end sparse-switch
.end method

.method public doVideoInfoTrack()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/video/VideoTrackUtil;->trackMacroMode(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->trackProVideoInfo()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->trackVideoInfo()V

    .line 5
    :goto_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoom:Lcom/android/camera/module/video/AutoZoomController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/AutoZoomController;->trackLostCount()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setDuration(J)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    return-void
.end method

.method public doVideoPostProcess(J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public enableFaceDetection()Z
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oo0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const-string/jumbo v3, "pref_camera_facedetection_key"

    .line 4
    invoke-virtual {v0, v3, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public enterAutoHibernation()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->enterAutoHibernation()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mEnterAutoHibernationCount:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setAutoHibernationCount(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    return-void
.end method

.method public getHighSpeedRecordOperationMode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/UserRecordSetting;->is4K120FpsCamcorder(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getOperatingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
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
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isEisOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->setEisOn(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    .line 3
    invoke-virtual {v2}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->setIs8KCamcorder(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;

    move-result-object v1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->is60FPSSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->setIs60FPSSupported(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/module/video/UserRecordSetting;->needChooseVideoBeauty(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->setNeedChooseVideoBeauty(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    .line 6
    invoke-virtual {v2}, Lcom/android/camera/module/video/CameraDeviceController;->needDisableEISAndOIS()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->setNeedDisableEISAndOIS(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->setQuality(I)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->build()Lcom/android/camera/features/mode/VideoModuleDeviceParam;

    move-result-object v0

    return-object v0
.end method

.method public getOperatingMode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isFovcSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mFovcEnabled:Z

    :cond_1
    return v0
.end method

.method public isAEAFLockSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    if-nez v0, :cond_0

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

.method public isCameraSwitchingDuringZoomingAllowed()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/module/video/CameraDeviceController;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEisOn()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/module/video/UserRecordSetting;->needChooseVideoBeauty(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/module/video/UserRecordSetting;->isEisOn(IIZ)Z

    move-result v0

    return v0
.end method

.method public isEnableScreenShot()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureRepeatingOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-virtual {v0, v2}, Lcom/android/camera/module/video/UserRecordSetting;->is4K120FpsCamcorder(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    move v1, v2

    goto :goto_1

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeautyScreenshot()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 5
    invoke-virtual {v0, v3, v4}, Lcom/android/camera/module/video/UserRecordSetting;->needChooseVideoBeauty(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 6
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    :goto_1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnableScreenShot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isNeedAlertAudioZoomIndicator()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/AiAudioController;->isNeedAlertAudioZoomIndicator(Lcom/android/camera/module/video/RecordRuntimeInfo;)Z

    move-result v0

    return v0
.end method

.method public isNeedHapticFeedback()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-virtual {v0}, Lcom/android/camera/module/video/RecordRuntimeInfo;->isTrueRecording()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isNeedMute()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-virtual {v0}, Lcom/android/camera/module/video/RecordRuntimeInfo;->isTrueRecording()Z

    move-result v0

    return v0
.end method

.method public isPostProcessing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderPostProcessing:Z

    return v0
.end method

.method public isReceiveDoubleTap()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsTrackFocusOn:Z

    return v0
.end method

.method public isUnIncorruptible()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->isUnIncorruptible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->isNormalMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderWorking:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "recorder release"

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

.method public isZoomEnabled()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xd0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->isZoomEnabled()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->useBackToStopRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoom:Lcom/android/camera/module/video/AutoZoomController;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/AutoZoomController;->stopTracking(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 5
    :cond_3
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onBackPressed()Z

    move-result v0

    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method public onBluetoothHeadsetConnected()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startBluetoothSco()V

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
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onBluetoothHeadsetConnected()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onBluetoothHeadsetDisconnected()V

    :goto_0
    return-void
.end method

.method public onCameraOpened()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraOpened: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onCameraOpened()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateBeauty()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->updateVideoSubtitle(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->updateVideoTag(IZ)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateAutoHibernation()V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeFocusManager()V

    .line 9
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->VIDEO_TYPES_INIT:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initRecorder()Z

    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isEnableScreenShot()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mEnableVideoSnapshot:Z

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->startCameraSession(Z)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/module/video/VideoUtil;->boostSystemForRecord(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoom:Lcom/android/camera/module/video/AutoZoomController;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v1}, Lcom/android/camera/module/video/CameraDeviceController;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/video/AutoZoomController;->initAutoZoom(Lcom/android/camera2/Camera2Proxy;Landroid/os/Handler;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mDecibelControler:Lcom/android/camera/module/video/DecibelController;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/video/DecibelController;->onCameraOpened(ILandroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/SoundSetting;->setHeadsetDefaultValue(Landroid/content/Context;I)V

    .line 17
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraOpened: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mUltraWideAELocked:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setCharacteristics(Lcom/android/camera2/CameraCapabilities;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v1, p1}, Lcom/android/camera/module/video/CameraDeviceController;->onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackFocus()Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/16 v1, 0x56

    aput v1, p1, v0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    :cond_1
    return-void
.end method

.method public onCreate(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 2
    iget-object p2, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    invoke-virtual {p2, p1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setModuleIndex(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setIsFrontCamera(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    move-result-object p1

    iget p2, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setActualCameraId(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mDeviceLock:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/camera/module/video/CameraDeviceController;->init(Lcom/android/camera2/Camera2Proxy;IILjava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/camera/module/video/AiAudioController;->onCreate(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 7
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    sget p2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {p1, p2}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isQuickCapture()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mQuickCapture:Z

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    const-string p1, "continuous-video"

    .line 11
    iput-object p1, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    invoke-virtual {p1}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->initSubtitle()V

    .line 13
    new-instance p1, Lcom/android/camera/module/VideoModule$VideoCaptureRunnable;

    invoke-direct {p1, p0}, Lcom/android/camera/module/VideoModule$VideoCaptureRunnable;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mVideoCaptureRunnable:Lcom/android/camera/module/VideoModule$VideoCaptureRunnable;

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpened()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/RecorderController;->releaseRecordSurface()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/AiAudioController;->onDestroy()V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDoubleTap"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/module/video/CameraDeviceController;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hasCameraException()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mSnapshotInProgress:Z

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsTrackFocusOn:Z

    if-nez v0, :cond_1

    return v1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocusState(Z)V

    .line 8
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCropRegionConsiderZoomRatio()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v4

    .line 12
    invoke-virtual {p1, v2, v0, v3, v4}, Lcom/android/camera/module/loader/camera2/FocusManager2;->calculateTrackFocusArea(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 13
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDoubleTap rect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/video/CameraDeviceController;->startTrackFocus(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    .line 3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onInterceptZoomingEvent(FFI)Z
    .locals 2

    if-eqz p3, :cond_0

    const/4 v0, 0x6

    if-eq p3, v0, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->m3ALocked:Z

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onInterceptZoomingEvent: unlockAEAF by toggle or slider bar button."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    :cond_1
    if-nez p3, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFocusViewVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isFocusing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onInterceptZoomingEvent: restore continuous center focus by toggle button."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocusState(Z)V

    .line 9
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oOo0()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 12
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 13
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    return p1

    .line 15
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/BaseModule;->onInterceptZoomingEvent(FFI)Z

    move-result p1

    return p1
.end method

.method public onMediaRecorderReleased(Z)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaRecorderReleased>>"

    invoke-static {v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/module/video/AiAudioController;->setCurrentAiAudioParameters(Z)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v4, 0x3a5

    invoke-virtual {v2, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v2, :cond_0

    .line 5
    iget v4, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 6
    invoke-interface {v2, v4}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreOuterAudio()V

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->captureIntentRelated()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->trySaveVidoeFile(Z)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showPostProcessIfNeed()V

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.stop_video_recording"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 12
    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->listenPhoneState(Z)V

    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resetFocusState()V

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    .line 15
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMediaRecorderReleased<<time="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackStopVideoRecordEnd()V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->doLaterReleaseIfNeed()V

    .line 18
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean v3, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderPostProcessing:Z

    .line 19
    iput-boolean v3, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderWorking:Z

    .line 20
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00oO0o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00oO0o;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/module/video/Boost;->stopBoost()V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string p1, "VID"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 p2, 0xd0

    if-eq p1, p2, :cond_0

    const/16 p2, 0xcf

    if-ne p1, p2, :cond_1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/camera/module/VideoModule$6;

    invoke-direct {p2, p0}, Lcom/android/camera/module/VideoModule$6;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mFovcEnabled:Z

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isEisOn()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/video/CameraDeviceController;->notifyVideoStreamEnd(ZZ)V

    .line 2
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onPause()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->releaseResources()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->stopFaceDetection(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetScreenOn()V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/camera/CameraSettings;->setAudioMapParameter(Landroid/content/Context;IZ)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->removeMessages()V

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 13
    :cond_1
    new-instance v0, Lcom/android/camera/bluetooth/BluetoothScoManager;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/bluetooth/BluetoothScoManager;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a5

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/bluetooth/BluetoothScoManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreOuterAudio()V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->stopBluetoothSco(I)V

    :cond_2
    return-void
.end method

.method public onPauseButtonClick()V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPauseButtonClick: isRecordingPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v2, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v2, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v2, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v3, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-wide v0, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    .line 5
    iget-boolean v0, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resumeRecording()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->pauseRecording()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoom:Lcom/android/camera/module/video/AutoZoomController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/AutoZoomController;->isAutoZoomTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoom:Lcom/android/camera/module/video/AutoZoomController;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/video/AutoZoomController;->onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mOverheatTipAlreadyShown:Z

    if-nez v0, :cond_2

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oo0O()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->is4KCamcorder()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0, p1}, Lcom/android/camera2/CaptureResultParser;->showThermalOverheatTipNeeded(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mOverheatTipAlreadyShown:Z

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOoO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0ooOoO;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onPreviewPixelsRead([BIIIZ)V
    .locals 1

    const/4 v0, 0x3

    if-eq p4, v0, :cond_1

    const/4 v0, 0x4

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/VideoModule;->genVideoCover([BII)V

    return-void

    .line 2
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/android/camera/module/BaseModule;->onPreviewPixelsRead([BIIIZ)V

    return-void
.end method

.method public onPreviewRelease(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00oO0O;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00oO0O;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onPreviewRelease(II)V

    return-void
.end method

.method public onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/CameraDeviceController;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onPreviewSessionSuccess: module is not ready"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    return-void

    .line 6
    :cond_1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreviewSessionSuccess: session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mFaceDetectMgr:Lcom/android/camera/module/video/FaceDetectManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/module/video/FaceDetectManager;->setFaceDetectionEnabled(Z)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isVideoBokehEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/module/video/CameraDeviceController;->setVideoBokehEnabled(Z)V

    .line 9
    sget-object p1, Lcom/android/camera/constant/UpdateConstant;->VIDEO_TYPES_ON_PREVIEW_SUCCESS:[I

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x3a5

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public onPreviewStart()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMutexModePreference()V

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/VideoBase;->onShutterButtonFocus(ZI)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startVideoRecordingIfNeeded()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isSelectingCapturedResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/CameraDeviceController;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 4
    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 6
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v3, v1, :cond_2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-eq v2, v0, :cond_3

    .line 7
    :cond_2
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const/4 v0, 0x2

    iget-object v6, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    const/4 v0, 0x3

    iget-object v6, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    const-string/jumbo v0, "profile size changed [%d %d]->[%d %d]"

    .line 9
    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v1, [I

    aput v1, v0, v5

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShutterButtonClick isRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v2, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " inStartingFocusRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick: ignore touch event"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v1, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_3

    .line 9
    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterButtonClick: stop"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    .line 10
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string/jumbo p1, "onShutterButtonClick: stop mode=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->onStartRecordButtonClick(I)V

    :goto_0
    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/module/video/CameraDeviceController;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hasCameraException()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mSnapshotInProgress:Z

    if-nez v0, :cond_6

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onSingleTapUp: frame not available"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_6

    .line 10
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoom:Lcom/android/camera/module/video/AutoZoomController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/AutoZoomController;->isAutoZoomTracking()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 12
    :cond_4
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xd0

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoBase;->mTouchFocusStartingTime:J

    .line 16
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    iget p2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onSingleTapUp(IIZ)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onStartRecorderSucceed()V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string/jumbo v2, "onStartRecorderSucceed"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.start_video_recording"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean v1, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderWorking:Z

    .line 6
    iput-boolean v1, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoom:Lcom/android/camera/module/video/AutoZoomController;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v2, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-virtual {v0, v2}, Lcom/android/camera/module/video/AutoZoomController;->setIsRecording(Z)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->setAiAudioZoomLv()V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackZoomValue()V

    .line 11
    :cond_1
    invoke-static {}, Lcom/android/camera/module/video/VideoUtil;->hideHint()V

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->subtitileStart()V

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->processingStart()V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/AiAudioController;->handleAiAudioTipsState(Z)V

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateZoomRatioToggleButtonState(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/CameraDeviceController;->resetZoomForRecording()V

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xb1

    .line 19
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ZoomActive;

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getMinZoomRatio()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getMaxZoomRatio()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$ZoomActive;->updateZoomRatio(FF)V

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    .line 23
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mPauseClickTime:J

    .line 24
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const-string v2, ""

    iput-object v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingTime:Ljava/lang/String;

    .line 25
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->listenPhoneState(Z)V

    .line 26
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->countDownForVideoBokeh()V

    goto :goto_0

    .line 28
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOn()V

    .line 30
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    .line 31
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 32
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->m3ALocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "attr_3A_Locked"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xd6

    if-ne v0, v2, :cond_5

    .line 34
    invoke-static {v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackCaptureSuperNightVideo(Ljava/util/Map;)V

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 35
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v0, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(Ljava/util/Map;IZLcom/android/camera/fragment/beauty/BeautyValues;ZI)V

    .line 36
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->reCheckFastMotionConfig()V

    .line 37
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_6

    .line 38
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_6

    .line 39
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateProVideoRecordingSimpleView(Z)V

    .line 40
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->keepPowerSave()V

    .line 41
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepAutoHibernation()V

    .line 42
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->requestVideoCover()V

    .line 43
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureRepeatingOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 44
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoCaptureRunnable:Lcom/android/camera/module/VideoModule$VideoCaptureRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoCaptureRunnable:Lcom/android/camera/module/VideoModule$VideoCaptureRunnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->exitSavePowerMode()V

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->exitAutoHibernation()V

    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onUserInteraction()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->keepPowerSave()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepAutoHibernation()V

    :cond_0
    return-void
.end method

.method public onVideoCoverCreated([BLjava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onVideoCoverCreated([BLjava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->supportVideoCover()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 4
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onVideoCoverCreated: mCurrentVideoValues == null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "_data"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVideoCoverCreated , videoPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", curPath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p2, p2, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v0, "custom_video_cover"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_1
    return-void
.end method

.method public onWaitStopCallbackTimeout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/RecorderController;->stopRecorder(I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreviewAfterRecord()V

    return-void
.end method

.method public onZoomingActionEnd(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onZoomingActionEnd(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/ui/zoom/ZoomingAction;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " @hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v3, v3, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v3, :cond_1

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "attr_ai_audio_new_video_to_zoom"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v3, "key_video_common_click"

    .line 7
    invoke-static {v3, v1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomPanelVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->updateZoomIndexsButton()V

    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p1, :cond_5

    .line 11
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFocusViewVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isFocusing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 13
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onZoomingActionEnd: restore continuous center focus by slider bar button."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v2, [I

    const/4 v0, 0x0

    const/16 v1, 0x19

    aput v1, p1, v0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_5
    return-void
.end method

.method public onZoomingActionStart(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onZoomingActionStart(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/ui/zoom/ZoomingAction;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " @hash: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    :cond_0
    return-void
.end method

.method public pausePreview()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pausePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/CameraDeviceController;->pausePreview()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocused()V

    :cond_0
    return-void
.end method

.method public registerMetaDataFunction()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/IFuncPreviewMetadataListener;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackFocus()Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/android/camera/trackfocus/FunctionTrackFocus;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/android/camera/trackfocus/FunctionTrackFocus;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
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

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mAutoZoom:Lcom/android/camera/module/video/AutoZoomController;

    const/16 v2, 0xd7

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTopConfigProtocol:Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->registerProtocol()V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x5

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
        0xe3
    .end array-data
.end method

.method public releaseResources()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoom:Lcom/android/camera/module/video/AutoZoomController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/AutoZoomController;->release()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mDecibelControler:Lcom/android/camera/module/video/DecibelController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/DecibelController;->release()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 4
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_1

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOoo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isFastmotionLongExpose(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    :cond_2
    return-void
.end method

.method public restartPreviewSession()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startPreviewAfterRecord()V

    return-void
.end method

.method public resumePreview()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/CameraDeviceController;->resumePreview()V

    return-void
.end method

.method public set3DAudioParameter()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->set3DAudioParameter()V

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0oO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->is3DAudioOn()Z

    move-result v0

    .line 7
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set3DAudioParameter -> enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/AiAudioController;->setCurrentAiAudioParameters(Z)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v0

    .line 10
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentRecType(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/AiAudioController;->setCurrentAiAudioParameters(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setMaxZoomRatio(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getMaxZoomRatio()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/module/video/AiAudioController;->setMaxZoomRatio(F)V

    return-void
.end method

.method public setOrientationParameter()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->setOrientationParameter()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/AiAudioController;->setOrientation(I)V

    return-void
.end method

.method public setZoomRatio(F)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->setZoomRatio(F)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getDeviceBasedZoomRatio()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/module/video/AiAudioController;->setBaseZoomRatio(D)V

    return-void
.end method

.method public shouldCheckSatFallbackState()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActualCameraId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public startCameraSession(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-virtual {p1, v0}, Lcom/android/camera/module/video/UserRecordSetting;->is4K120FpsCamcorder(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startHighSpeedRecordSession()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startRecordSession()V

    :goto_0
    return-void
.end method

.method public startHighSpeedRecordSession()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->checkDisplayOrientation()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getHighSpeedRecordOperationMode()I

    move-result v1

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/RecorderController;->getRecordSurface()Landroid/view/Surface;

    move-result-object v3

    .line 4
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startHighSpeedRecordSession: recordSurface = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/camera/Util;->getSurfaceInfo(Landroid/view/Surface;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/module/BaseModule;->mSurfaceCreatedTimestamp:J

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    new-instance v2, Landroid/view/Surface;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 7
    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget-object v7, v4, Lcom/android/camera/module/video/UserRecordSetting;->mHfrFPSRange:Landroid/util/Range;

    iget-object v8, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

    iget-boolean v10, p0, Lcom/android/camera/module/BaseModule;->mAELockOnlySupported:Z

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, p0

    move-object v9, p0

    .line 8
    invoke-virtual/range {v0 .. v10}, Lcom/android/camera/module/video/CameraDeviceController;->startHighSpeedRecordSession(ILandroid/view/Surface;Landroid/view/Surface;ILcom/android/camera/CameraSize;Landroid/util/Range;Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;Lcom/android/camera2/Camera2Proxy$FocusCallback;Z)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocused()V

    return-void
.end method

.method public startPreview()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreview: previewing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->checkDisplayOrientation()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    return-void
.end method

.method public startPreviewAfterRecord()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/UserRecordSetting;->is4K120FpsCamcorder(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/CameraDeviceController;->startPreviewAfterRecord(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startRecordSession()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->checkDisplayOrientation()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mSurfaceCreatedTimestamp:J

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getOperatingMode()I

    move-result v9

    .line 4
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mEnableVideoSnapshot:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v13, 0x1

    aput-object v3, v2, v13

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string/jumbo v3, "startRecordSession: operatingMode = 0x%x enableVideoSnapshot = %b mode = %s"

    .line 6
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/RecorderController;->getRecordSurface()Landroid/view/Surface;

    move-result-object v4

    .line 8
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecordSession: recordSurface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/camera/Util;->getSurfaceInfo(Landroid/view/Surface;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateFpsRange()V

    .line 10
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    new-instance v3, Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget-object v8, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    iget-boolean v10, p0, Lcom/android/camera/module/VideoModule;->mEnableVideoSnapshot:Z

    iget-boolean v11, p0, Lcom/android/camera/module/BaseModule;->mAELockOnlySupported:Z

    move-object v6, p0

    move-object v12, p0

    .line 12
    invoke-virtual/range {v2 .. v12}, Lcom/android/camera/module/video/CameraDeviceController;->startRecordSession(Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;Lcom/android/camera2/Camera2Proxy$FocusCallback;Lcom/android/camera/CameraSize;Lcom/android/camera/CameraSize;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocused()V

    .line 14
    iput-boolean v13, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    return-void
.end method

.method public startVideoRecording()V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startVideoRecording: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/CameraDeviceController;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "RECORDING_START"

    .line 4
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xd4

    .line 7
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    .line 9
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    invoke-virtual {v3, v1}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->updateVideoTagState(I)V

    .line 10
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v3}, Lcom/android/camera/module/video/CameraDeviceController;->resetZoomForRecording()V

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xb1

    .line 12
    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$ZoomActive;

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getMinZoomRatio()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getMaxZoomRatio()F

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/camera/protocol/ModeProtocol$ZoomActive;->updateZoomRatio(FF)V

    :cond_2
    const/4 v3, 0x1

    .line 14
    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->setCameraAudioRestriction(Z)V

    .line 15
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mKaraoke:Lcom/android/camera/module/video/KaraokeController;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/module/video/KaraokeController;->openKaraoke(Landroid/content/Context;I)V

    .line 16
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackStartVideoRecordStart(Ljava/lang/String;Z)V

    .line 17
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, -0x1

    goto :goto_0

    :cond_3
    move v5, v1

    :goto_0
    iput v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:I

    .line 18
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initBluetoothSco()V

    .line 19
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v4}, Lcom/android/camera/module/video/UserRecordSetting;->cleanupEmptyFile()V

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 21
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoBase;->parseIntent(Landroid/content/Intent;)V

    .line 22
    :cond_4
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    new-instance v5, Lcom/android/camera/storage/mediastore/VideoFile;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v5, v6}, Lcom/android/camera/storage/mediastore/VideoFile;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    .line 23
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v5

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/storage/mediastore/VideoFile;->initialize(ZLandroid/content/Intent;)V

    .line 24
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    iget v6, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/module/video/UserRecordSetting;->initVideoOrientation(II)V

    .line 25
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/android/camera/module/video/RecorderController;->initializeRecorder(ZLcom/android/camera/module/video/AiAudioController;Landroid/content/Context;I)Lcom/android/camera/module/video/InitRecorderResult;

    move-result-object v4

    .line 26
    iget-boolean v4, v4, Lcom/android/camera/module/video/InitRecorderResult;->succeed:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    iget-object v5, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v6, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/module/video/RecorderController;->startRecorder(Lcom/android/camera/module/video/UserRecordSetting;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 27
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v4

    new-instance v5, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0OOO0o;

    invoke-direct {v5, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0OOO0o;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v4, v5}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 28
    iget-object v4, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget v5, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    iput v5, v4, Lcom/android/camera/module/video/RecordRuntimeInfo;->mOrientationCompensationAtRecordStart:I

    .line 29
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-virtual {v4}, Lcom/android/camera/module/video/AiAudioController;->startAiAudio()V

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-static {v4}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    if-eqz v2, :cond_5

    .line 31
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onStart()V

    .line 32
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    invoke-virtual {v2, v3}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->updateVideoTagState(I)V

    .line 33
    :cond_5
    sget-object v2, Lcom/android/camera/constant/UpdateConstant;->VIDEO_TYPES_RECORD:[I

    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v2

    if-nez v2, :cond_6

    return-void

    .line 35
    :cond_6
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 36
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->startHighSpeedRecording()V

    goto :goto_2

    .line 37
    :cond_7
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v4, 0xa9

    if-ne v2, v4, :cond_8

    .line 38
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOoo()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 39
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v2, v4}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isFastmotionLongExpose(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    move v3, v1

    .line 40
    :goto_1
    invoke-virtual {v0, v1, v3}, Lcom/android/camera2/Camera2Proxy;->startRecording(ZZ)V

    .line 41
    :goto_2
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startVideoRecording process done"

    invoke-static {v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 43
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoom:Lcom/android/camera/module/video/AutoZoomController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/AutoZoomController;->resetTrackLostCount()V

    .line 44
    invoke-static {}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackStartVideoRecordEnd()V

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onStartRecorderSucceed()V

    .line 46
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 48
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onStartRecorderFail()V

    .line 49
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0000()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    .line 50
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 51
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-static {v0}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v0

    if-gtz v0, :cond_a

    .line 52
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 53
    :cond_a
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {v1, v0}, Lcom/android/camera/ThermalHelper;->notifyThermalRecordStop(II)V

    :cond_b
    return-void

    .line 54
    :cond_c
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onStartRecorderFail()V

    return-void
.end method

.method public stopVideoRecording(Z)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopVideoRecording>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v2, v2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoCaptureRunnable:Lcom/android/camera/module/VideoModule$VideoCaptureRunnable;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v1, 0x47

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "skip stopVideoRecording & remove startVideoRecording"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "RECORDING_STOP"

    .line 8
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraAudioRestriction(Z)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->checkRecordTimeValid(Z)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 11
    :cond_3
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mOverheatTipAlreadyShown:Z

    .line 12
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mAutoZoom:Lcom/android/camera/module/video/AutoZoomController;

    invoke-virtual {v1, v0}, Lcom/android/camera/module/video/AutoZoomController;->stopTracking(I)Z

    .line 13
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mAutoZoom:Lcom/android/camera/module/video/AutoZoomController;

    invoke-virtual {v1, v0}, Lcom/android/camera/module/video/AutoZoomController;->setIsRecording(Z)V

    .line 14
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mKaraoke:Lcom/android/camera/module/video/KaraokeController;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/module/video/KaraokeController;->closeKaraoke(Landroid/content/Context;I)V

    .line 15
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean v0, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    .line 16
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean v0, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 18
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v7, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x7d0

    sub-long/2addr v7, v5

    const-wide/16 v5, 0x64

    cmp-long v1, v7, v5

    const/4 v5, 0x1

    if-gtz v1, :cond_4

    move v1, v5

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    if-eqz v1, :cond_5

    .line 20
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean v5, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderPostProcessing:Z

    .line 21
    :cond_5
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v5, 0xb4

    if-ne v1, v5, :cond_6

    .line 22
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_6

    .line 23
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateProVideoRecordingSimpleView(Z)V

    .line 24
    :cond_6
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    invoke-virtual {v1}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->subtitleStop()V

    .line 25
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v1, :cond_7

    .line 26
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->processingFinish()V

    .line 27
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mSubtitilAndTag:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->updateVideoTagState(I)V

    .line 28
    :cond_7
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mAiAudio:Lcom/android/camera/module/video/AiAudioController;

    invoke-virtual {v1, v0}, Lcom/android/camera/module/video/AiAudioController;->handleAiAudioTipsState(Z)V

    .line 29
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v1, p0}, Lcom/android/camera/module/video/CameraDeviceController;->restoreZoomAfterRecording(Lcom/android/camera/module/Module;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 32
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v1}, Lcom/android/camera/module/video/CameraDeviceController;->stopRecording()V

    .line 33
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 34
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 35
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordStateWhenStopRecording()V

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updateZoomRatioToggleButtonState(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->doVideoInfoTrack()V

    .line 38
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderController:Lcom/android/camera/module/video/RecorderController;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/RecorderController;->stopRecorder(I)V

    .line 40
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 41
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->restartPreviewSession()V

    .line 42
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    .line 43
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->reCheckFastMotionConfig()V

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->exitSavePowerMode()V

    .line 45
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->exitAutoHibernationRelated()V

    .line 46
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startBluetoothSco()V

    .line 47
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1, v0, v2}, Lcom/android/camera/SoundSetting;->setSCOMode(Landroid/content/Context;ZI)V

    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->trigerScanFile(Z)V

    .line 49
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopVideoRecording<<time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public takeVideoSnapShoot(Z)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v2, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mSnapshotInProgress:Z

    if-nez v2, :cond_5

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)V

    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object p1

    const v0, 0x7f12097f

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    return v1

    .line 7
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mEnableVideoSnapshot:Z

    if-nez v0, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->takePreviewSnapShoot()V

    return v1

    .line 9
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->captureAnim(Z)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getJpegPictureCallback()Lcom/android/camera/module/video/JpegPictureCallback;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/module/video/CameraDeviceController;->captureVideoSnapshot(ILcom/android/camera/module/video/JpegPictureCallback;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mSnapshotInProgress:Z

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public trySaveVidoeFile(Z)V
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1e

    if-ge v0, v3, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3
    :goto_0
    sget-object v4, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMediaRecorderReleased  path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 5
    :goto_1
    sget-object v4, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMediaRecorderReleased  uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v0, 0x0

    if-eqz v3, :cond_7

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v3

    if-nez v3, :cond_6

    .line 7
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v4, 0xa9

    const/16 v5, 0x50

    const v6, 0x7f12051c

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    .line 8
    invoke-virtual {v3}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object v3

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    .line 9
    invoke-virtual {v3}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->getDuration(Landroid/net/Uri;)J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-nez v3, :cond_4

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    .line 10
    invoke-virtual {v3}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->getDuration(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-nez v3, :cond_4

    .line 11
    :goto_3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1, v6, v5}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {p1}, Lcom/android/camera/module/video/UserRecordSetting;->deleteInvalidFile()V

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    goto :goto_4

    :cond_4
    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1, v6, v5}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {p1}, Lcom/android/camera/module/video/UserRecordSetting;->deleteInvalidFile()V

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    goto :goto_4

    .line 17
    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/VideoModule;->saveVideo(ZZ)Landroid/net/Uri;

    .line 18
    :goto_4
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iput-object v0, p1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    goto :goto_5

    .line 19
    :cond_6
    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_9

    .line 20
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    const-string p1, "VID"

    .line 21
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/module/VideoModule;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_5

    .line 22
    :cond_7
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xd0

    if-eq p1, v1, :cond_8

    const/16 v1, 0xcf

    if-ne p1, v1, :cond_9

    .line 23
    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xa4

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_9

    .line 24
    invoke-interface {p1, v0, v2, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V

    :cond_9
    :goto_5
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mAutoZoom:Lcom/android/camera/module/video/AutoZoomController;

    const/16 v2, 0xd7

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTopConfigProtocol:Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;->unRegisterProtocol()V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method

.method public updateAutoHibernation()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->updateAutoHibernation()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTrackInfoBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setAutoHibernation(Z)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    return-void
.end method

.method public updateAutoHibernationFirstRecordingTime()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a8

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-object v1, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingTime:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mRecordingSecondTime:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->updateAutoHibernationFirstRecordingTime(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateExposureTime()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    const v1, 0x7f120688

    invoke-static {v1}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/CameraDeviceController;->updateExposureTime(Ljava/lang/String;)V

    return-void
.end method

.method public updateFpsRange()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/UserRecordSetting;->is4K120FpsCamcorder(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mHfrFPSRange:Landroid/util/Range;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/video/CameraDeviceController;->updateFpsRange(ZLandroid/util/Range;)V

    return-void
.end method

.method public updateHDRPreference()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v0}, Lcom/android/camera/module/video/CameraDeviceController;->applyVideoHdrMode()V

    return-void
.end method

.method public updatePictureAndPreviewSize()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/VideoModule;->updateVideoSize(D)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/module/VideoModule;->updatePictureSize(DLcom/android/camera/CameraSize;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/module/VideoModule;->updatePreviewSize(DLcom/android/camera/CameraSize;)V

    return-void
.end method

.method public updateRecordingTime()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->updateRecordingTime()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-virtual {v0}, Lcom/android/camera/module/video/RecordRuntimeInfo;->getRecordedTime()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/module/video/UserRecordSetting;->getTimeForShow(J)J

    move-result-wide v2

    .line 6
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/module/VideoModule;->getTextOfShowTime(JJ)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7
    invoke-static {v0, v1, v4, v4, v3}, Lcom/android/camera/Util;->millisecondToTimeString(JZZZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mRecordingSecondTime:Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/camera/module/VideoModule;->updateRecordingTimeUI(Lcom/android/camera/module/video/UserRecordSetting;JLjava/lang/String;)V

    .line 9
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-object v2, v3, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingTime:Ljava/lang/String;

    .line 10
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/camera/module/VideoModule;->triggerNextRecordTimeUpdate(Lcom/android/camera/module/video/RecordRuntimeInfo;JLjava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-boolean v3, v2, Lcom/android/camera/module/video/UserRecordSetting;->mCaptureTimeLapse:Z

    if-eqz v3, :cond_3

    iget-wide v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-lez v2, :cond_3

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo0()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 14
    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)V

    .line 15
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRecordingTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mTimeLapseDuration "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public updateRecordingTimeUI(Lcom/android/camera/module/video/UserRecordSetting;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0x3b1

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    .line 2
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p2, :cond_2

    .line 3
    invoke-interface {p2, p4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-interface {p1, p4, p2}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->updateRecordingTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    if-eqz p1, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0x3a8

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;

    .line 7
    iget p2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 p3, 0xa2

    if-eq p2, p3, :cond_1

    const/16 p3, 0xb4

    if-ne p2, p3, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    const-string p2, ""

    .line 8
    invoke-interface {p1, p4, p2}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->updateAutoHibernationRecordingTimeOrCaptureCount(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public updateSATZooming(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isInVideoSAT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDeviceController:Lcom/android/camera/module/video/CameraDeviceController;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/video/CameraDeviceController;->updateSATZooming(Z)V

    :cond_0
    return-void
.end method

.method public useBackToStopRecording()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    iget-wide v4, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xbb8

    cmp-long v0, v4, v6

    const/4 v4, 0x1

    if-lez v0, :cond_0

    .line 4
    iput-wide v2, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f1208b6

    invoke-static {v0, v1, v4}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)V

    :goto_0
    return v4

    :cond_1
    return v1
.end method
