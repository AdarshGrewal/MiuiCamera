.class public Lcom/android/camera/module/AmbilightModule;
.super Lcom/android/camera/module/BaseModule;
.source "AmbilightModule.java"

# interfaces
.implements Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;
.implements Lcom/android/camera2/Camera2Proxy$FocusCallback;
.implements Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;
.implements Lcom/android/camera/protocol/ModeProtocol$CameraAction;
.implements Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;
.implements Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/AmbilightModule$BackgroundHandler;,
        Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;,
        Lcom/android/camera/module/AmbilightModule$SaveStateCallback;,
        Lcom/android/camera/module/AmbilightModule$MainHandler;,
        Lcom/android/camera/module/AmbilightModule$PictureCallback;,
        Lcom/android/camera/module/AmbilightModule$SaveVideoTask;
    }
.end annotation


# static fields
.field public static final ALGO_XML_FILENAME:Ljava/lang/String; = "ambilight_parameter.xml"

.field public static final ALGO_XML_FOLDER_NAME:Ljava/lang/String; = "ambilight"

.field public static final COUNTDOWN_INTERVAL:I = 0x1

.field public static final DEBUG:Z = false

.field public static final MAX_DROP_COUNT:I = 0x5

.field public static final MAX_IMAGES_COUNT:I = 0x6

.field public static final MIN_RECORD_TIME:I = 0x1b7740

.field public static final MIN_SHOOTING_TIME:I = 0x258

.field public static final SKIP_FRAME:I = 0x4

.field public static final STAR_TRACK_VIDEO_SPEED:F = 0.0027777778f

.field public static final STAT_TRACK_VIDEO_FPS:I = 0x3c

.field public static final TAG:Ljava/lang/String; = "AmbilightModule"

.field public static mSupportAutoAe:Z = false


# instance fields
.field public frameNo:I

.field public m3ALocked:Z

.field public final mAcquiredCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

.field public mAmbilightHeight:I

.field public mAmbilightRoi:Lcom/android/camera/ambilight/AmbilightRoi;

.field public mAmbilightWidth:I

.field public mAsdScenes:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

.field public mBackgroundHandler:Lcom/android/camera/module/AmbilightModule$BackgroundHandler;

.field public mBackgroundThread:Landroid/os/HandlerThread;

.field public mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field public mCaptureStartTime:J

.field public mCaptureStopTime:J

.field public mCountDownTimer:Landroid/os/CountDownTimer;

.field public mCountdownDisposable:Lio/reactivex/disposables/Disposable;

.field public mCpuBoost:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

.field public mCropRegion:Landroid/graphics/Rect;

.field public mDropCount:I

.field public mDropFrameCount:I

.field public mExposureTime:J

.field public mFocusDistance:F

.field public mImage:Lcom/android/camera/effect/MiYuvImage;

.field public mImagedata:[B

.field public mInDebugMode:Z

.field public volatile mIsPrepareSaveTask:Z

.field public mIsPrepared:Z

.field public mIsRegisterSensorListener:Z

.field public volatile mIsShooting:Z

.field public mIso:I

.field public mJpegRotation:I

.field public mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

.field public final mMediaEncoderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;

.field public volatile mMediaRecorderRecording:Z

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

.field public mPendingSaveTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/module/AmbilightModule$SaveVideoTask;",
            ">;"
        }
    .end annotation
.end field

.field public mPhotoBuffer:Ljava/nio/ByteBuffer;

.field public mPreviewHeight:I

.field public mPreviewWidth:I

.field public mReceivedPicturesCount:I

.field public mRecordingStartTime:J

.field public mRecordingTime:Ljava/lang/String;

.field public final mReleaseedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mRenderLock:Ljava/lang/Object;

.field public mRequestStartTime:J

.field public mSaveOutputImageTask:Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;

.field public mSceneMode:I

.field public mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field public mShootingStartTime:J

.field public mSkipSaveVideo:Z

.field public mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

.field public mTransform:[F

.field public mTranslateY:I

.field public mTripodMode:I

.field public mUBuffer:Ljava/nio/ByteBuffer;

.field public mVBuffer:Ljava/nio/ByteBuffer;

.field public mVideoSize:Landroid/util/Size;

.field public mYBuffer:Ljava/nio/ByteBuffer;

.field public mYuvAttribute:Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

.field public mYuvAttributeForVideo:Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

.field public mZoom:F

.field public prevOutputPTSUs:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mInDebugMode:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepareSaveTask:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mImage:Lcom/android/camera/effect/MiYuvImage;

    const/4 v2, 0x4

    .line 6
    iput v2, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    .line 7
    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mDropCount:I

    .line 8
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mAcquiredCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mReleaseedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mRenderLock:Ljava/lang/Object;

    .line 11
    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mPhotoBuffer:Ljava/nio/ByteBuffer;

    .line 12
    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsRegisterSensorListener:Z

    const/16 v2, 0x10

    new-array v2, v2, [F

    .line 13
    iput-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    .line 14
    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mYBuffer:Ljava/nio/ByteBuffer;

    .line 15
    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightRoi:Lcom/android/camera/ambilight/AmbilightRoi;

    .line 16
    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    const-wide/16 v2, 0x0

    .line 17
    iput-wide v2, p0, Lcom/android/camera/module/AmbilightModule;->mExposureTime:J

    .line 18
    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 19
    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mImagedata:[B

    const-string v1, ""

    .line 20
    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mRecordingTime:Ljava/lang/String;

    .line 21
    new-instance v1, Landroid/util/Size;

    const/16 v4, 0x5a0

    const/16 v5, 0x780

    invoke-direct {v1, v4, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mVideoSize:Landroid/util/Size;

    .line 22
    iput-wide v2, p0, Lcom/android/camera/module/AmbilightModule;->prevOutputPTSUs:J

    .line 23
    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mTripodMode:I

    .line 24
    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mDropFrameCount:I

    .line 25
    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mSkipSaveVideo:Z

    .line 26
    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->frameNo:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Lcom/android/camera/module/AmbilightModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/AmbilightModule$1;-><init>(Lcom/android/camera/module/AmbilightModule;)V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mMediaEncoderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;

    .line 29
    new-instance v0, Lcom/android/camera/module/AmbilightModule$8;

    invoke-direct {v0, p0}, Lcom/android/camera/module/AmbilightModule$8;-><init>(Lcom/android/camera/module/AmbilightModule;)V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/module/AmbilightModule;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p1
.end method

.method public static synthetic access$1000(Lcom/android/camera/module/AmbilightModule;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mReleaseedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/module/AmbilightModule;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mCountdownDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/android/camera/module/AmbilightModule;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mDropCount:I

    return p0
.end method

.method public static synthetic access$1108(Lcom/android/camera/module/AmbilightModule;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mDropCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/AmbilightModule;->mDropCount:I

    return v0
.end method

.method public static synthetic access$1200(Lcom/android/camera/module/AmbilightModule;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/AmbilightModule;->mInDebugMode:Z

    return p0
.end method

.method public static synthetic access$1300(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/module/AmbilightModule$BackgroundHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundHandler:Lcom/android/camera/module/AmbilightModule$BackgroundHandler;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopAmbilightShooting()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->onAmbilightPreviewAvailable()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->takeShot()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->clearBuffer()V

    return-void
.end method

.method public static synthetic access$1802(Lcom/android/camera/module/AmbilightModule;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/module/AmbilightModule;->mExposureTime:J

    return-wide p1
.end method

.method public static synthetic access$1900(Lcom/android/camera/module/AmbilightModule;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepared:Z

    return p0
.end method

.method public static synthetic access$1902(Lcom/android/camera/module/AmbilightModule;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepared:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/module/encoder/LiveMediaRecorder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/camera/module/AmbilightModule;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/AmbilightModule;->startSaveTask([B)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->onSaveFinish()V

    return-void
.end method

.method public static synthetic access$2300(Lcom/android/camera/module/AmbilightModule;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightWidth:I

    return p0
.end method

.method public static synthetic access$2400(Lcom/android/camera/module/AmbilightModule;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightHeight:I

    return p0
.end method

.method public static synthetic access$2500(Lcom/android/camera/module/AmbilightModule;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mJpegRotation:I

    return p0
.end method

.method public static synthetic access$2600(Lcom/android/camera/module/AmbilightModule;)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/ambilight/AmbilightEngine;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/android/camera/module/AmbilightModule;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mRenderLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/android/camera/module/AmbilightModule;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->frameNo:I

    return p0
.end method

.method public static synthetic access$2908(Lcom/android/camera/module/AmbilightModule;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->frameNo:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/AmbilightModule;->frameNo:I

    return v0
.end method

.method public static synthetic access$300(Lcom/android/camera/module/AmbilightModule;)Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method public static synthetic access$3000(Lcom/android/camera/module/AmbilightModule;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mPhotoBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/camera/module/AmbilightModule;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/camera/module/AmbilightModule;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mImagedata:[B

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/camera/module/AmbilightModule;[B)[B
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mImagedata:[B

    return-object p1
.end method

.method public static synthetic access$500(Lcom/android/camera/module/AmbilightModule;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/module/AmbilightModule;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mDropFrameCount:I

    return p0
.end method

.method public static synthetic access$608(Lcom/android/camera/module/AmbilightModule;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mDropFrameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/AmbilightModule;->mDropFrameCount:I

    return v0
.end method

.method public static synthetic access$700(Lcom/android/camera/module/AmbilightModule;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/AmbilightModule;->mReceivedPicturesCount:I

    return p0
.end method

.method public static synthetic access$708(Lcom/android/camera/module/AmbilightModule;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mReceivedPicturesCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/AmbilightModule;->mReceivedPicturesCount:I

    return v0
.end method

.method public static synthetic access$800(Lcom/android/camera/module/AmbilightModule;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/android/camera/module/AmbilightModule;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule;->mAcquiredCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private ambilightEngineInit()V
    .locals 6

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/module/AmbilightModule;->startCpuBoost(I)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    iget v2, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    iget v3, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightWidth:I

    iget v4, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightHeight:I

    iget v5, p0, Lcom/android/camera/module/AmbilightModule;->mTripodMode:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/camera/ambilight/AmbilightEngine;->init(IIII)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mPhotoBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    if-nez v1, :cond_0

    .line 4
    iget v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightWidth:I

    iget v3, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightHeight:I

    mul-int/2addr v1, v3

    mul-int/2addr v1, v0

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mPhotoBuffer:Ljava/nio/ByteBuffer;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mPhotoBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    iget-object v3, p0, Lcom/android/camera/module/AmbilightModule;->mPhotoBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3, v0}, Lcom/android/camera/ambilight/AmbilightEngine;->prepare(Ljava/nio/ByteBuffer;I)V

    .line 7
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mZoom:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mCropRegion:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/android/camera/ambilight/AmbilightEngine;->setZoomRoi(IIII)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    invoke-virtual {v0}, Lcom/android/camera/ambilight/AmbilightEngine;->getPreviewWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mPreviewWidth:I

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    invoke-virtual {v0}, Lcom/android/camera/ambilight/AmbilightEngine;->getPreviewHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mPreviewHeight:I

    .line 11
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/camera/module/AmbilightModule;->mPreviewWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget v3, p0, Lcom/android/camera/module/AmbilightModule;->mPreviewHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    const-string/jumbo v3, "update preview size [%d, %d]"

    invoke-static {v0, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 12
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-ne v0, v2, :cond_4

    .line 13
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mJpegRotation:I

    if-eqz v0, :cond_3

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    invoke-virtual {v0, v2}, Lcom/android/camera/ambilight/AmbilightEngine;->setFlipMode(I)V

    goto :goto_1

    .line 15
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    invoke-virtual {v0, v5}, Lcom/android/camera/ambilight/AmbilightEngine;->setFlipMode(I)V

    .line 16
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/AmbilightModule;->mPreviewHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/AmbilightModule;->updateBuffers(I)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mAcquiredCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mReleaseedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 19
    iput v4, p0, Lcom/android/camera/module/AmbilightModule;->mReceivedPicturesCount:I

    return-void
.end method

.method private checkShutterCondition()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBlockSnap()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

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
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

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
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string v2, "checkShutterCondition: screen is slide off"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()V

    :cond_3
    const/4 v0, 0x1

    return v0

    .line 9
    :cond_4
    :goto_0
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkShutterCondition: blockSnap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBlockSnap()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ignoreTouchEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private clearBuffer()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mYBuffer:Ljava/nio/ByteBuffer;

    .line 2
    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mUBuffer:Ljava/nio/ByteBuffer;

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mVBuffer:Ljava/nio/ByteBuffer;

    .line 4
    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mPhotoBuffer:Ljava/nio/ByteBuffer;

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mImage:Lcom/android/camera/effect/MiYuvImage;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, v0, v0, v0}, Lcom/android/camera/effect/MiYuvImage;->updateData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 7
    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mImage:Lcom/android/camera/effect/MiYuvImage;

    :cond_0
    return-void
.end method

.method private doLaterReleaseIfNeed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pauseIfNotRecording()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/Camera;->releaseAll(ZZ)V

    :cond_0
    return-void
.end method

.method private getAlgoXmlFile()Ljava/io/File;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ambilight"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "ambilight_parameter.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/camera/core/PictureInfo;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/PictureInfo;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setSensorType(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setOpMode(I)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->end()V

    return-object v0
.end method

.method private handleFocusStateChange(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onAutoFocusMoving start"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-boolean v1, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    sget-object v1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->m3ALocked:Z

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    :cond_3
    return-void
.end method

.method private initMetaParser()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/module/AmbilightModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/AmbilightModule$2;-><init>(Lcom/android/camera/module/AmbilightModule;)V

    sget-object v1, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    .line 2
    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;

    invoke-direct {v1, p0}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;-><init>(Lcom/android/camera/module/Module;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/reactivex/Flowable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mMetaDataDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private isCannotGotoGallery()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->isZooming:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isInCountDown()Z

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

.method private isInCountDown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mCountdownDisposable:Lio/reactivex/disposables/Disposable;

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

.method private isProcessingSaveTask()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mSaveOutputImageTask:Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    check-cast v0, Lcom/android/camera/module/AmbilightModule$MainHandler;

    invoke-virtual {v0}, Lcom/android/camera/module/AmbilightModule$MainHandler;->isInRendering()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mRenderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v2, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-ne v2, v1, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/camera/module/AmbilightModule;->frameNo:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_2

    .line 4
    monitor-exit v0

    return v1

    .line 5
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/AmbilightModule;->mShootingStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x258

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private needAutoHibernationScene()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private onAmbilightPreviewAvailable()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onResume()V

    :cond_0
    return-void
.end method

.method private onSaveFinish()V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string/jumbo v2, "onSaveFinish E"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopCpuBoost()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/module/AmbilightModule;->updateRecordingTimeStyle(Z)V

    .line 4
    sget-object v2, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Photo generation cost = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureStopTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 7
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mAeLockSupported:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    .line 14
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepareSaveTask:Z

    .line 15
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSaveFinish X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private registerSensorListener()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsRegisterSensorListener:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsRegisterSensorListener:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    return-void
.end method

.method private resetParameters()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/Camera2Proxy;->setExposureTime(J)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setExposureCompensation(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setISO(I)V

    .line 4
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/16 v2, 0x1e

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v1, Landroid/util/Range;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v3, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v3}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    :goto_1
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Lcom/android/camera/module/AmbilightModule;->updateAutoAeParameters(Z)Z

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->unlockAEAF()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->cancelFocus(I)V

    return-void
.end method

.method private shouldHideTimeLabel()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    sget-boolean v1, Lcom/android/camera/module/AmbilightModule;->mSupportAutoAe:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

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

.method private startAmbilightShooting()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startAmbilightShooting: recordState is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/module/AmbilightModule;->mRequestStartTime:J

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/android/camera/module/AmbilightModule;->prevOutputPTSUs:J

    .line 5
    iget v3, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->startVideoRecording()V

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/AmbilightModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {v3, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setShow(Z)V

    .line 9
    iget-object v3, p0, Lcom/android/camera/module/AmbilightModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAllTipsState()V

    .line 10
    iget-object v3, p0, Lcom/android/camera/module/AmbilightModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const v7, 0x7f120931

    const-wide/16 v8, -0x1

    invoke-interface {v3, v5, v7, v8, v9}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    .line 11
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/AmbilightModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v3, :cond_3

    .line 12
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->shouldHideTimeLabel()Z

    move-result v7

    invoke-interface {v3, v6, v7}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(IZ)V

    .line 13
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/camera/module/AmbilightModule;->updateSpeechShutter(Z)V

    .line 14
    iget-boolean v3, p0, Lcom/android/camera/module/AmbilightModule;->mInDebugMode:Z

    if-eqz v3, :cond_4

    .line 15
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x67

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 16
    :cond_4
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    iget v7, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {v3, v7}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/module/AmbilightModule;->mJpegRotation:I

    const/4 v3, 0x4

    .line 17
    sget-object v7, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startAmbilightShooting mJpegRotation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/camera/module/AmbilightModule;->mJpegRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 18
    iget v3, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v7, 0x5

    if-eq v3, v7, :cond_5

    .line 19
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->ambilightEngineInit()V

    .line 20
    :cond_5
    iput-boolean v6, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    .line 21
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->updateExposureParameters()V

    .line 22
    invoke-direct {p0, v5}, Lcom/android/camera/module/AmbilightModule;->updateAutoAeParameters(Z)Z

    .line 23
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v3, v5}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    .line 24
    sget-object v3, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "focus distance:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/camera/module/AmbilightModule;->mFocusDistance:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget v3, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-eq v3, v7, :cond_7

    if-ne v3, v4, :cond_6

    goto :goto_0

    .line 26
    :cond_6
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v8, p0, Lcom/android/camera/module/AmbilightModule;->mFocusDistance:F

    invoke-virtual {v3, v8}, Lcom/android/camera2/Camera2Proxy;->setFocusDistance(F)V

    goto :goto_1

    .line 27
    :cond_7
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/android/camera2/Camera2Proxy;->setFocusDistance(F)V

    .line 28
    :goto_1
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/camera2/Camera2Proxy;->setGpsLocation(Landroid/location/Location;)V

    .line 29
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v3, v6}, Lcom/android/camera2/Camera2Proxy;->setNeedPausePreview(Z)V

    .line 30
    iget v3, p0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mAwbLockSupported:Z

    if-eqz v3, :cond_8

    .line 31
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v3, v6}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    .line 32
    :cond_8
    iget v3, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v8, 0x0

    if-ne v3, v7, :cond_9

    .line 33
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v4, Lcom/android/camera/module/AmbilightModule$5;

    invoke-direct {v4, p0}, Lcom/android/camera/module/AmbilightModule$5;-><init>(Lcom/android/camera/module/AmbilightModule;)V

    invoke-virtual {v3, v4, v8}, Lcom/android/camera2/Camera2Proxy;->takePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V

    goto :goto_2

    .line 34
    :cond_9
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->isZslPreferred()Z

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/camera2/Camera2Proxy;->setEnableZsl(Z)V

    .line 35
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v3, v9}, Lcom/android/camera2/Camera2Proxy;->setZoomRatioForCapture(F)V

    .line 36
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/16 v9, 0xc

    invoke-virtual {v3, v9}, Lcom/android/camera2/Camera2Proxy;->setShotType(I)V

    .line 37
    iget v3, p0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    if-nez v3, :cond_b

    sget-boolean v3, Lcom/android/camera/module/AmbilightModule;->mSupportAutoAe:Z

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-eq v3, v4, :cond_b

    :cond_a
    move v5, v6

    .line 38
    :cond_b
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v3, v5}, Lcom/android/camera2/Camera2Proxy;->setMFLockAfAe(Z)V

    .line 39
    new-instance v3, Lcom/android/camera/module/AmbilightModule$PictureCallback;

    invoke-direct {v3, p0}, Lcom/android/camera/module/AmbilightModule$PictureCallback;-><init>(Lcom/android/camera/module/AmbilightModule;)V

    .line 40
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v4, v3, v8}, Lcom/android/camera2/Camera2Proxy;->takePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V

    :goto_2
    if-eqz v0, :cond_d

    .line 41
    sget-boolean v3, Lcom/android/camera/module/AmbilightModule;->mSupportAutoAe:Z

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-ne v3, v7, :cond_c

    iget-wide v3, p0, Lcom/android/camera/module/AmbilightModule;->mExposureTime:J

    cmp-long v1, v3, v1

    if-nez v1, :cond_c

    .line 42
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    const-wide v2, 0x6fc23ac00L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 43
    :cond_c
    iput-boolean v6, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepared:Z

    .line 44
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    .line 45
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onStart()V

    .line 46
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->keepScreenOn()V

    .line 47
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 48
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->m3ALocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "attr_3A_Locked"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    .line 49
    invoke-virtual/range {v4 .. v10}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(Ljava/util/Map;IZLcom/android/camera/fragment/beauty/BeautyValues;ZI)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    .line 51
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundHandler:Lcom/android/camera/module/AmbilightModule$BackgroundHandler;

    if-eqz v0, :cond_e

    const/4 v1, 0x2

    .line 52
    iget-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 53
    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepAutoHibernation()V

    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AmbilightBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v0, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/camera/module/AmbilightModule$BackgroundHandler;-><init>(Landroid/os/Looper;Lcom/android/camera/module/AmbilightModule;)V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundHandler:Lcom/android/camera/module/AmbilightModule$BackgroundHandler;

    return-void
.end method

.method private startCount(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->checkShutterCondition()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->handleCountDownSnapClickVibrator()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->tryRemoveCountDownMessage()V

    .line 5
    sget-object p2, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x1

    .line 6
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p2}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p2

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p2

    .line 7
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/android/camera/module/AmbilightModule$3;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/AmbilightModule$3;-><init>(Lcom/android/camera/module/AmbilightModule;I)V

    .line 8
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private startCpuBoost(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mCpuBoost:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mCpuBoost:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mCpuBoost:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(II)Z

    return-void
.end method

.method private startPreviewSession()V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string/jumbo v2, "startPreviewSession"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreview: camera has been closed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v1, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setDualCamWaterMarkEnable(Z)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureMaxImages(I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureFormat(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mSurfaceCreatedTimestamp:J

    .line 15
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v3, Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, p0

    .line 18
    invoke-virtual/range {v2 .. v9}, Lcom/android/camera2/Camera2Proxy;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method private startSaveTask([B)V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSaveTask stitchResult "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    .line 3
    iget-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureStopTime:J

    iget-wide v2, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureStartTime:J

    sub-long/2addr v0, v2

    .line 4
    iget v2, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    iget-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mEnterAutoHibernationCount:I

    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackAmbilightCapture(IJZI)V

    .line 5
    iget v2, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    move-wide v5, v0

    .line 6
    new-instance v0, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;

    new-instance v7, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO0OO;

    invoke-direct {v7, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO0OO;-><init>(Lcom/android/camera/module/AmbilightModule;)V

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;-><init>(Lcom/android/camera/module/AmbilightModule;[BJLcom/android/camera/module/AmbilightModule$SaveStateCallback;)V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mSaveOutputImageTask:Lcom/android/camera/module/AmbilightModule$SaveOutputImageTask;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 7
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private stopAmbilightShooting()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/module/AmbilightModule;->updateSpeechShutter(Z)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureStopTime:J

    .line 4
    iget-boolean v1, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-nez v1, :cond_1

    .line 5
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopAmbilightShooting return, is not shooting"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 8
    :cond_2
    sget-object v1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const/4 v3, 0x4

    const-string/jumbo v4, "stopAmbilightShooting"

    invoke-static {v3, v1, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 11
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/module/AmbilightModule;->mMediaRecorderRecording:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    if-eqz v1, :cond_5

    .line 12
    iget-wide v5, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureStopTime:J

    iget-wide v7, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureStartTime:J

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x1b7740

    cmp-long v1, v5, v7

    if-gez v1, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/module/AmbilightModule;->mSkipSaveVideo:Z

    .line 13
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    invoke-virtual {v1}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->stopRecorder()Z

    .line 14
    :cond_5
    iput-boolean v4, p0, Lcom/android/camera/module/AmbilightModule;->mMediaRecorderRecording:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepareSaveTask:Z

    .line 16
    iput-boolean v4, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    .line 17
    iget v1, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v4, 0x5

    if-eq v1, v4, :cond_6

    .line 18
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundHandler:Lcom/android/camera/module/AmbilightModule$BackgroundHandler;

    iget-object v5, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    invoke-virtual {v1, v0, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 19
    iget-object v5, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundHandler:Lcom/android/camera/module/AmbilightModule$BackgroundHandler;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 20
    :cond_6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->captureAbortBurst()V

    .line 21
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v5, 0xd4

    invoke-virtual {v1, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-nez v1, :cond_7

    .line 22
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPreExecute recordState is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 23
    :cond_7
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    const/4 v5, 0x3

    .line 24
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingStart(I)V

    .line 25
    iget v1, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-eq v1, v2, :cond_9

    if-eq v1, v5, :cond_9

    if-eqz v1, :cond_9

    if-eq v1, v4, :cond_9

    if-eq v1, v3, :cond_9

    if-ne v1, v0, :cond_8

    goto :goto_1

    .line 26
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->resetParameters()V

    goto :goto_2

    .line 27
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/16 v3, 0xbb

    invoke-static {v3}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v3

    .line 28
    invoke-virtual {v3, v2}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v2

    .line 29
    invoke-virtual {v2, v0}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v2

    .line 30
    invoke-virtual {v2, v0}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 32
    :goto_2
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    if-eqz v0, :cond_a

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->exitAutoHibernation()V

    :cond_a
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "thread interrupted!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 6
    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mBackgroundHandler:Lcom/android/camera/module/AmbilightModule$BackgroundHandler;

    return-void
.end method

.method private stopCpuBoost()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mCpuBoost:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mCpuBoost:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    :cond_0
    return-void
.end method

.method private takeShot()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 3
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    .line 6
    :cond_1
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutterButtonClick return, isLowStorageAtLastPoint"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->mCaptureStartTime:J

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->mShootingStartTime:J

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->mRecordingStartTime:J

    .line 10
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->startAmbilightShooting()V

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/android/camera/module/AmbilightModule;->updateRecordingTimeStyle(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->updateRecordingTime()V

    return-void
.end method

.method private unregisterSensor()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsRegisterSensorListener:Z

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/module/AmbilightModule;->mIsRegisterSensorListener:Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

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
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateASD call setASDEnable with true"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateAutoAeParameters(Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mInDebugMode:Z

    const/16 v2, 0x28

    if-eqz v0, :cond_1

    const-string v0, "ambi_auto_ae_target"

    .line 3
    invoke-static {v0, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4
    :cond_1
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v0, v3, :cond_4

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    invoke-virtual {v0, v4}, Lcom/android/camera2/Camera2Proxy;->setAmbilightMode(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAmbilightAeTarget(I)V

    :goto_2
    move v1, v5

    goto :goto_5

    :cond_4
    if-ne v0, v4, :cond_7

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    goto :goto_3

    :cond_5
    const/4 v3, 0x2

    :goto_3
    invoke-virtual {v0, v3}, Lcom/android/camera2/Camera2Proxy;->setAmbilightMode(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAmbilightAeTarget(I)V

    goto :goto_2

    .line 9
    :cond_7
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1, v1}, Lcom/android/camera2/Camera2Proxy;->setAmbilightMode(I)V

    :goto_5
    return v1
.end method

.method private updateExposureParameters()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput v1, v0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    .line 2
    iget v2, v0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    const-wide/32 v10, 0xf4240

    const/4 v12, 0x5

    const/4 v13, 0x4

    if-eqz v2, :cond_8

    if-eq v2, v6, :cond_7

    if-eq v2, v5, :cond_5

    const/16 v5, 0x320

    if-eq v2, v4, :cond_3

    if-eq v2, v13, :cond_2

    if-eq v2, v12, :cond_0

    move v2, v1

    :goto_0
    move v4, v9

    :goto_1
    const-wide/16 v14, 0x0

    goto/16 :goto_3

    .line 3
    :cond_0
    sget-boolean v2, Lcom/android/camera/module/AmbilightModule;->mSupportAutoAe:Z

    if-nez v2, :cond_1

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/AmbilightModule;->getDuration()I

    move-result v2

    int-to-long v14, v2

    mul-long/2addr v14, v10

    .line 5
    iput v5, v0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    move v2, v1

    move v4, v9

    move v1, v12

    goto :goto_3

    :cond_1
    move v2, v1

    move v4, v9

    move v1, v12

    goto :goto_1

    :cond_2
    move v2, v1

    move v1, v6

    goto :goto_0

    .line 6
    :cond_3
    sget-boolean v2, Lcom/android/camera/module/AmbilightModule;->mSupportAutoAe:Z

    if-nez v2, :cond_4

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/AmbilightModule;->getDuration()I

    move-result v2

    int-to-long v14, v2

    mul-long/2addr v14, v10

    .line 8
    iput v5, v0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    move v2, v1

    move v1, v3

    move v4, v9

    goto :goto_3

    :cond_4
    move v2, v1

    move v1, v3

    goto :goto_0

    .line 9
    :cond_5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v2

    if-eqz v2, :cond_6

    const-wide/32 v4, 0x1dcd6500

    goto :goto_2

    :cond_6
    const-wide/32 v4, 0x13de4355

    :goto_2
    move-wide v14, v4

    const/16 v2, 0x32

    .line 10
    iput v2, v0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    move v2, v1

    move v4, v9

    move v1, v13

    goto :goto_3

    :cond_7
    const/16 v1, 0xf

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_8
    const/high16 v2, -0x40400000    # -1.5f

    const-wide/32 v14, 0x2faf080

    move v4, v2

    move v2, v1

    move v1, v5

    .line 11
    :goto_3
    iget-boolean v5, v0, Lcom/android/camera/module/AmbilightModule;->mInDebugMode:Z

    if-eqz v5, :cond_c

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ambi_ev_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 14
    :try_start_0
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 15
    sget-object v6, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set ev:"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v6, v7}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 16
    :catch_0
    sget-object v6, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wrong ev:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v6, v5}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_9
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ambi_fps_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-static {v3, v5}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_a

    move v2, v3

    .line 18
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ambi_ms_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_b

    int-to-long v6, v3

    mul-long/2addr v6, v10

    move-wide v14, v6

    .line 19
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ambi_iso_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_c

    .line 20
    iput v1, v0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    :cond_c
    cmpl-float v1, v4, v9

    if-eqz v1, :cond_d

    .line 21
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationRational()Landroid/util/Rational;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v4, v3

    invoke-virtual {v1}, Landroid/util/Rational;->getNumerator()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v1

    float-to-int v1, v4

    .line 23
    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v3, v1}, Lcom/android/camera2/Camera2Proxy;->setExposureCompensation(I)V

    .line 24
    :cond_d
    iget v1, v0, Lcom/android/camera/module/AmbilightModule;->mIso:I

    if-eqz v1, :cond_e

    .line 25
    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v3, v1}, Lcom/android/camera2/Camera2Proxy;->setISO(I)V

    :cond_e
    const-wide/16 v3, 0x0

    cmp-long v1, v14, v3

    if-eqz v1, :cond_f

    .line 26
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v14, v15}, Lcom/android/camera2/Camera2Proxy;->setExposureTime(J)V

    :cond_f
    if-eqz v2, :cond_11

    .line 27
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 28
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v3, Landroid/util/Range;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v1, v3}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    goto :goto_5

    .line 29
    :cond_10
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v3, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v1, v3}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    :cond_11
    :goto_5
    return-void
.end method

.method private updateFilter()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    .line 2
    sget-object v1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

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

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo00o()Landroid/util/Size;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x1058

    const/16 v3, 0xc42

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int/2addr v2, v1

    const/16 v1, 0xbb

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    invoke-static {v0, v2, v1, v3}, Lcom/android/camera/PictureSizeManager;->initialize(Ljava/util/List;III)V

    .line 6
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const-class v2, Landroid/graphics/SurfaceTexture;

    .line 8
    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 9
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    iget v3, v0, Lcom/android/camera/CameraSize;->width:I

    iget v4, v0, Lcom/android/camera/CameraSize;->height:I

    .line 10
    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v3

    float-to-double v3, v3

    const/4 v5, 0x0

    .line 11
    invoke-static {v5, v2, v1, v3, v4}, Lcom/android/camera/Util;->getOptimalPreviewSize(ZILjava/util/List;D)Lcom/android/camera/CameraSize;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 12
    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    .line 13
    sget-object v1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pictureSize= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " previewSize="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v4, v4, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    if-nez v1, :cond_3

    const-string/jumbo v1, "ro.product.mod_device"

    .line 15
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "_"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    .line 18
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ambilight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ambilight_parameter.xml"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->getAlgoXmlFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/camera/network/util/FileUtils;->copyFileIfNeed(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->getAlgoXmlFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/camera/network/util/FileUtils;->copyFileIfNeed(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    .line 22
    :cond_2
    new-instance v1, Lcom/android/camera/ambilight/AmbilightEngine;

    invoke-direct {v1}, Lcom/android/camera/ambilight/AmbilightEngine;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    .line 23
    :cond_3
    iget v1, v0, Lcom/android/camera/CameraSize;->width:I

    iput v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightWidth:I

    .line 24
    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightHeight:I

    .line 25
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v1, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method private updateRecordingTimeStyle(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO0O0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO0O0;-><init>(Lcom/android/camera/module/AmbilightModule;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private updateSpeechShutter(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSpeechShutterOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$SpeechShutterDetect;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$SpeechShutterDetect;->processingSpeechShutter(Z)V

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingSpeechShutter(ZZ)V

    :cond_2
    return-void
.end method

.method private updateTransform(FFFFF)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget v5, v0, v3

    .line 3
    iget-object v6, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    add-int/lit8 v7, v4, 0x1

    aput v5, v6, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    const/4 v1, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    invoke-static {v0, v2, p4, p5, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 6
    iget-object p4, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-static {p4, v2, p3, p3, p5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 7
    iget-object p3, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    neg-float p1, p1

    neg-float p2, p2

    invoke-static {p3, v2, p1, p2, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttribute:Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    if-eqz p1, :cond_1

    .line 9
    iget-object p2, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->updateZoom([F)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttributeForVideo:Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    if-eqz p1, :cond_2

    .line 11
    iget-object p2, p0, Lcom/android/camera/module/AmbilightModule;->mTransform:[F

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->updateZoom([F)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttributeForVideo:Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    invoke-virtual {p1, v2, v2}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->updatePosition(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRecordingTimeStyle(Z)V

    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSaveCompleted"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->onSaveFinish()V

    return-void
.end method

.method public addSaveTask(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2
    new-instance v0, Lcom/android/camera/module/AmbilightModule$SaveVideoTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/camera/module/AmbilightModule$SaveVideoTask;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public applyZoomRatio()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomRatio:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/AmbilightModule;->applyZoomRatio(F)V

    return-void
.end method

.method public applyZoomRatio(F)V
    .locals 7

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getDeviceBasedZoomRatio()F

    move-result p1

    .line 4
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyZoomRatio(): apply zoom ratio to device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->setZoomRatio(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    div-float v4, v0, p1

    .line 6
    iput v4, p0, Lcom/android/camera/module/AmbilightModule;->mZoom:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/android/camera/module/AmbilightModule;->updateTransform(FFFFF)V

    .line 8
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightWidth:I

    iget v2, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    invoke-static {p1, v0}, Lcom/android/camera/HybridZoomingSystem;->toCropRegion(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mCropRegion:Landroid/graphics/Rect;

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
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/reactivex/Emitter;->onComplete()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mMetaDataDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setASDEnable(Z)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->releaseCameraPreviewCallback(Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setMetaDataCallback(Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;)V

    .line 14
    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopCpuBoost()V

    .line 16
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera: end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs consumePreference([I)V
    .locals 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_e

    aget v3, p1, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_d

    const/4 v5, 0x2

    if-eq v3, v5, :cond_c

    const/4 v5, 0x3

    if-eq v3, v5, :cond_b

    const/16 v5, 0x9

    if-eq v3, v5, :cond_a

    const/16 v5, 0xa

    if-eq v3, v5, :cond_9

    const/16 v5, 0xc

    if-eq v3, v5, :cond_8

    const/16 v5, 0xe

    if-eq v3, v5, :cond_7

    const/16 v5, 0x13

    if-eq v3, v5, :cond_6

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_5

    const/16 v4, 0x37

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x46

    if-eq v3, v4, :cond_2

    const/16 v4, 0x18

    if-eq v3, v4, :cond_1

    const/16 v4, 0x19

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->focusCenter()V

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->applyZoomRatio()V

    goto :goto_1

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->updateASD()V

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->updateOnTripMode()V

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateModuleRelated()V

    goto :goto_1

    .line 7
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateExposureMeteringMode()V

    goto :goto_1

    .line 8
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/camera/module/AmbilightModule;->updateAutoAeParameters(Z)Z

    goto :goto_1

    .line 9
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->updateFocusMode()V

    goto :goto_1

    .line 10
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setEvValue()V

    goto :goto_1

    .line 11
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->updateFlashPreference()V

    goto :goto_1

    .line 12
    :cond_a
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->updateAntiBanding(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_b
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateFocusArea(Z)V

    goto :goto_1

    .line 14
    :cond_c
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->updateFilter()V

    goto :goto_1

    .line 15
    :cond_d
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->updatePictureAndPreviewSize()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_e
    return-void
.end method

.method public executeRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->release()V

    :cond_0
    return-void
.end method

.method public executeSaveTask(Z)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    iget-boolean v1, p0, Lcom/android/camera/module/AmbilightModule;->mSkipSaveVideo:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->handleVideoFile(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/AmbilightModule$SaveVideoTask;

    .line 6
    sget-object v1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeSaveTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera/module/AmbilightModule$SaveVideoTask;->videoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/AmbilightModule$SaveVideoTask;->uri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/camera/module/AmbilightModule$SaveVideoTask;->videoPath:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/camera/module/AmbilightModule$SaveVideoTask;->contentValues:Landroid/content/ContentValues;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/storage/ImageSaver;->addVideo(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;ZZLjava/util/List;)Landroid/net/Uri;

    .line 8
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackAmbilightGenerateVideo()V

    if-eqz p1, :cond_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    invoke-virtual {p1}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->release()V

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->doLaterReleaseIfNeed()V

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public exitAutoHibernation()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->exitAutoHibernation()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->needAutoHibernationScene()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const v2, 0x7f120931

    const-wide/16 v3, -0x1

    .line 4
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_0
    return-void
.end method

.method public getAutoFinish()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

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

.method public getDuration()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v1, 0x3

    const/16 v2, 0x7d0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-boolean v0, Lcom/android/camera/module/AmbilightModule;->mSupportAutoAe:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->mExposureTime:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/camera/constant/DurationConstant;->DURATION_AMBILIGHT_MAGIC_STAR_CAPTURE:I

    :goto_0
    move v2, v0

    goto :goto_1

    .line 3
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mInDebugMode:Z

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    const-string v1, "ambi_crowd_duration"

    .line 4
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_4

    move v2, v1

    goto :goto_1

    .line 5
    :cond_3
    sget v2, Lcom/android/camera/constant/DurationConstant;->DURATION_AMBILIGHT_STAR_TRACK_CAPTURE:I

    :cond_4
    :goto_1
    return v2
.end method

.method public getModuleDeviceParam()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/module/AmbilightModule;->mSupportAutoAe:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPTSUs()J
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2
    iget-wide v2, p0, Lcom/android/camera/module/AmbilightModule;->prevOutputPTSUs:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sub-long/2addr v2, v0

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public getPressAnimationEnabled()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/camera/module/AmbilightModule;->mSupportAutoAe:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public handleFrameProcessDone()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mRenderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightEngine:Lcom/android/camera/ambilight/AmbilightEngine;

    iget-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mYBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/camera/module/AmbilightModule;->mUBuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/android/camera/module/AmbilightModule;->mVBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightRoi:Lcom/android/camera/ambilight/AmbilightRoi;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/camera/ambilight/AmbilightEngine;->updatePreview(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/android/camera/ambilight/AmbilightRoi;)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightRoi:Lcom/android/camera/ambilight/AmbilightRoi;

    iget v3, v1, Lcom/android/camera/ambilight/AmbilightRoi;->xOffset:F

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightRoi:Lcom/android/camera/ambilight/AmbilightRoi;

    iget v4, v1, Lcom/android/camera/ambilight/AmbilightRoi;->yOffset:F

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightRoi:Lcom/android/camera/ambilight/AmbilightRoi;

    iget v1, v1, Lcom/android/camera/ambilight/AmbilightRoi;->zoomRatio:F

    iget v2, p0, Lcom/android/camera/module/AmbilightModule;->mZoom:F

    mul-float v5, v1, v2

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightRoi:Lcom/android/camera/ambilight/AmbilightRoi;

    iget v6, v1, Lcom/android/camera/ambilight/AmbilightRoi;->xTrans:F

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightRoi:Lcom/android/camera/ambilight/AmbilightRoi;

    iget v7, v1, Lcom/android/camera/ambilight/AmbilightRoi;->yTrans:F

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/module/AmbilightModule;->updateTransform(FFFFF)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestRender()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDoingAction()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->isZooming:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isInCountDown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isProcessingSaveTask()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepareSaveTask:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

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

.method public isProcessorReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    check-cast v0, Lcom/android/camera/module/AmbilightModule$MainHandler;

    invoke-virtual {v0}, Lcom/android/camera/module/AmbilightModule$MainHandler;->isInRendering()Z

    move-result v0

    return v0
.end method

.method public isRecorderRecording()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepareSaveTask:Z

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

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result v0

    return v0
.end method

.method public isZslPreferred()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v0

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

.method public onActionStop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

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

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopAmbilightShooting()V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->doLaterReleaseIfNeed()V

    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isProcessingSaveTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopAmbilightShooting()V

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 4
    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v0

    return v0
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
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "on Receive speech shutter broadcast action intent"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-nez v0, :cond_1

    const/16 v0, 0x6e

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/module/AmbilightModule;->onShutterButtonClick(I)V

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCameraOpened()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "Ambilight Moduleon CameraOpened"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onCameraOpened()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeFocusManager()V

    .line 4
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->FUN_TYPES_INIT:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->startPreviewSession()V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->initMetaParser()V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->updateAutoHibernation()V

    return-void
.end method

.method public onCreate(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isSupportAmbilightAutoAeTag()Z

    move-result p1

    sput-boolean p1, Lcom/android/camera/module/AmbilightModule;->mSupportAutoAe:Z

    .line 3
    new-instance p1, Lcom/android/camera/module/AmbilightModule$MainHandler;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/camera/module/AmbilightModule$MainHandler;-><init>(Landroid/os/Looper;Lcom/android/camera/module/AmbilightModule;)V

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigAmbilight()Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentConfigAmbilight;->getAmbilightModeIndex()I

    move-result p2

    .line 6
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigAmbilight;->getSceneModeByIndex(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->onCameraOpened()V

    .line 8
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    sget p2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 9
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttribute:Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    .line 10
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttributeForVideo:Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    return-void
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZ)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/ui/RenderEngineAdapter;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->prepareYuvRenders()V

    .line 3
    iget-object p4, p0, Lcom/android/camera/module/AmbilightModule;->mRenderLock:Ljava/lang/Object;

    monitor-enter p4

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttribute:Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    iget v1, p0, Lcom/android/camera/module/AmbilightModule;->mTranslateY:I

    invoke-virtual {v0, p3, v1}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->updatePosition(II)V

    .line 5
    iget-object p3, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttribute:Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mImage:Lcom/android/camera/effect/MiYuvImage;

    new-instance v1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p3, v0, v1}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->init(Lcom/android/camera/effect/MiYuvImage;Landroid/util/Size;)Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->getPTSUs()J

    move-result-wide p1

    .line 7
    iget-boolean p3, p0, Lcom/android/camera/module/AmbilightModule;->mMediaRecorderRecording:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->prevOutputPTSUs:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x900b0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    .line 8
    iget-object p3, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttributeForVideo:Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mImage:Lcom/android/camera/effect/MiYuvImage;

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p3, v0, v1}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->init(Lcom/android/camera/effect/MiYuvImage;Landroid/util/Size;)Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    move-result-object p3

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 10
    iput-wide p1, p0, Lcom/android/camera/module/AmbilightModule;->prevOutputPTSUs:J

    .line 11
    :cond_0
    monitor-exit p4

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return p3
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

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/module/AmbilightModule;->handleFocusStateChange(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    goto/16 :goto_0

    .line 5
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getElapsedTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "AutoFocusTime=%1$dms focused=%2$b"

    .line 8
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_4
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isIsDepthFocus()Z

    move-result v0

    if-nez v0, :cond_8

    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/module/AmbilightModule;->handleFocusStateChange(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    goto/16 :goto_0

    .line 11
    :cond_5
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getElapsedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v6, "FocusTime=%1$dms focused=%2$b"

    .line 13
    invoke-static {v5, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 16
    invoke-virtual {p0, v4}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 19
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/camera/module/AmbilightModule;->m3ALocked:Z

    if-eqz p1, :cond_8

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomRatioBetweenUltraAndWide()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mUltraCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz p1, :cond_7

    .line 21
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isAFRegionSupported()Z

    move-result p1

    .line 22
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFocusStateChanged: isUltraFocusAreaSupported = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_7

    .line 23
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1, v2}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setFocusDistance(F)V

    .line 25
    :cond_7
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1, v4}, Lcom/android/camera2/Camera2Proxy;->lockExposure(Z)V

    :cond_8
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

    const v3, 0x7f1207c6

    if-eq p1, v0, :cond_7

    const/16 v0, 0x42

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2bc

    if-eq p1, v0, :cond_6

    const/16 v0, 0x57

    const/16 v4, 0x58

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 3
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_a

    const/16 p1, 0x32

    .line 4
    invoke-static {v3}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    .line 6
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/AmbilightModule;->performKeyClicked(ILjava/lang/String;IZ)V

    return v1

    :cond_2
    :pswitch_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    if-ne p1, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    .line 7
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->isExternal()Z

    move-result v2

    .line 9
    :cond_5
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZIZ)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 10
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz v0, :cond_a

    .line 11
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopAmbilightShooting()V

    goto :goto_3

    .line 12
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 13
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFingerprintCaptureEnable()Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x1e

    .line 15
    invoke-static {v3}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    .line 17
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/AmbilightModule;->performKeyClicked(ILjava/lang/String;IZ)V

    goto :goto_2

    :cond_8
    const/16 p1, 0x28

    .line 18
    invoke-static {v3}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    .line 20
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/AmbilightModule;->performKeyClicked(ILjava/lang/String;IZ)V

    :cond_9
    :goto_2
    return v1

    .line 21
    :cond_a
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
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

.method public onPause()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopBackgroundThread()V

    .line 2
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->unregisterSensor()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetScreenOn()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onPreviewLayoutChanged(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getTranslateY()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/AmbilightModule;->mTranslateY:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mYuvAttribute:Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->updatePosition(II)V

    return-void
.end method

.method public onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V

    .line 3
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mFocusDistance:F

    .line 5
    :cond_1
    sget-boolean v0, Lcom/android/camera/module/AmbilightModule;->mSupportAutoAe:Z

    if-eqz v0, :cond_2

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 6
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AMBILIGHT_AE_EXPOSURE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 8
    sget-object v1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPreviewMetaDataUpdate] exposureTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/module/AmbilightModule;->mExposureTime:J

    .line 10
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public onPreviewSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    const-string/jumbo v1, "onPreviewSessionClosed"

    invoke-static {v0, p1, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x6

    const-string/jumbo v1, "onPreviewSessionFailed"

    invoke-static {v0, p1, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isTextureExpired()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->retryOnceIfCameraError(Landroid/os/Handler;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "sessionFailed due to surfaceTexture expired, retry"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x33

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string/jumbo v2, "onPreviewSessionSuccess"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    .line 5
    sget-object p1, Lcom/android/camera/constant/UpdateConstant;->AMBILIGHT_TYPES_ON_PREVIEW_SUCCESS:[I

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    .line 2
    invoke-static {}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->clearInitASDScenes()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mTripodMode:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mImagedata:[B

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepared:Z

    .line 6
    iput v0, p0, Lcom/android/camera/module/AmbilightModule;->mDropFrameCount:I

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->startBackgroundThread()V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->registerSensorListener()V

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

.method public onSceneModeSelect(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSceneModeSelect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->pausePreview()V

    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/module/AmbilightModule;->updateAutoAeParameters(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Ooooo00()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->resumePreview()V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->updateAutoHibernation()V

    return-void
.end method

.method public onShineChanged(I)V
    .locals 2

    const/16 v0, 0xc4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x2

    aput v1, p1, v0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->updateEffectViewVisible()V

    :goto_0
    return-void
.end method

.method public onShutterAnimationEnd()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isShootingTooShort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "shooting is too short, ignore this animationEnd."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/AmbilightModule$7;

    invoke-direct {v1, p0}, Lcom/android/camera/module/AmbilightModule$7;-><init>(Lcom/android/camera/module/AmbilightModule;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->getDuration()I

    move-result v2

    int-to-long v2, v2

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopAmbilightShooting()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepareSaveTask:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isProcessingSaveTask()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onUserInteraction()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onUserInteraction()V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_4

    const-string/jumbo v1, "speech_shutter_desc"

    .line 9
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideRecommendDescTip(Ljava/lang/String;)V

    .line 10
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    .line 11
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShutterButtonClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-nez v0, :cond_6

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result v0

    if-lez v0, :cond_5

    .line 15
    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/AmbilightModule;->startCount(II)V

    return-void

    .line 16
    :cond_5
    sget-object p1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick takeShot"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->takeShot()V

    goto :goto_1

    .line 18
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isShootingTooShort()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    sget-object p1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "shooting is too short, ignore this click"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 20
    :cond_7
    iget p1, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    if-ne p1, v2, :cond_8

    goto :goto_1

    .line 21
    :cond_8
    sget-object p1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick stopAmbilightShooting"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->stopAmbilightShooting()V

    :cond_9
    :goto_1
    return-void

    .line 23
    :cond_a
    :goto_2
    sget-object p1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onShutterButtonClick return, mIsPrepareSaveTask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/AmbilightModule;->mIsPrepareSaveTask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
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
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/AmbilightModule;->onShutterButtonFocus(ZI)V

    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/BaseModule;->onSingleTapUp(IIZ)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_4

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

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-nez v0, :cond_4

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isInCountDown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    sget-object p1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onSingleTapUp: frame not available"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 11
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    .line 15
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->unlockAEAF()V

    .line 18
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    iget p2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onSingleTapUp(IIZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isProcessingSaveTask()Z

    move-result p1

    if-nez p1, :cond_2

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
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isCannotGotoGallery()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onThumbnailClicked: CannotGotoGallery..."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->gotoGallery()V

    :cond_2
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

    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->needAutoHibernationScene()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepAutoHibernation()V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onWindowFocusChanged(Z)V

    .line 2
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 3
    iget-boolean p1, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepAutoHibernation()V

    :cond_0
    return-void
.end method

.method public pausePreview()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    const-string/jumbo v2, "pausePreview"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

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

    if-nez p3, :cond_2

    if-eqz p4, :cond_2

    .line 1
    iget-object p3, p0, Lcom/android/camera/module/AmbilightModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideAlert()V

    :cond_0
    const p3, 0x7f1207c7

    .line 3
    invoke-static {p3}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x2

    const/16 p2, 0x14

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/AmbilightModule;->startCount(II)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/AmbilightModule;->onShutterButtonClick(I)V

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

    const/16 v1, 0xea

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 6
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

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    return-void

    nop

    :array_0
    .array-data 4
        0xa4
        0xea
        0xd4
    .end array-data
.end method

.method public releaseRender()V
    .locals 0

    return-void
.end method

.method public resumePreview()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    const-string/jumbo v2, "resumePreview"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    return-void
.end method

.method public setAsdScenes([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mAsdScenes:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    return-void
.end method

.method public shouldDisableStopButton()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldReleaseLater()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->isRecording()Z

    move-result v0

    return v0
.end method

.method public startPreview()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public startVideoRecording()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string v1, "initializeRecorder: null camera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/android/camera/module/encoder/LiveMediaRecorder;

    invoke-direct {v0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f1209d6

    .line 6
    invoke-static {v1}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/android/camera/Util;->genVideoPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mVideoSize:Landroid/util/Size;

    .line 8
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/AmbilightModule;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->genContentValues(ILjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v5

    const/4 v0, 0x0

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a5

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isAudioSourceCamcorder(I)Z

    move-result v0

    .line 12
    :cond_2
    iget-object v4, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    iget v6, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/RenderEngineAdapter;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/camera/module/AmbilightModule;->mMediaEncoderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;

    const/4 v10, 0x0

    const v11, 0x3b360b61

    const/16 v12, 0x3c

    .line 14
    invoke-virtual/range {v4 .. v12}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->init(Landroid/content/ContentValues;ILandroid/opengl/EGLContext;Ljava/lang/String;Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;ZFI)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mLiveMediaRecorder:Lcom/android/camera/module/encoder/LiveMediaRecorder;

    iget-wide v2, p0, Lcom/android/camera/module/AmbilightModule;->mRequestStartTime:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->startRecorder(JZ)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mMediaRecorderRecording:Z

    .line 17
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startVideoRecording process done"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public tryRemoveCountDownMessage()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->isInCountDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mCountdownDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mCountdownDisposable:Lio/reactivex/disposables/Disposable;

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/AmbilightModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/module/AmbilightModule$4;-><init>(Lcom/android/camera/module/AmbilightModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public unRegisterModulePersistProtocol()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterModulePersistProtocol()V

    .line 2
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->tryRemoveCountDownMessage()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xea

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    :cond_0
    return-void
.end method

.method public unlockAEAF()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unlockAEAF"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->m3ALocked:Z

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

.method public updateAutoHibernation()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getAutoHibernationUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAutoHibernationOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->needAutoHibernationScene()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

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
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mRecordingTime:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->updateAutoHibernationFirstRecordingTime(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateBuffers(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mYBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mYBuffer:Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mUBuffer:Ljava/nio/ByteBuffer;

    .line 4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mVBuffer:Ljava/nio/ByteBuffer;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightRoi:Lcom/android/camera/ambilight/AmbilightRoi;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Lcom/android/camera/ambilight/AmbilightRoi;

    invoke-direct {p1}, Lcom/android/camera/ambilight/AmbilightRoi;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mAmbilightRoi:Lcom/android/camera/ambilight/AmbilightRoi;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mImage:Lcom/android/camera/effect/MiYuvImage;

    if-nez p1, :cond_2

    .line 8
    new-instance p1, Lcom/android/camera/effect/MiYuvImage;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/module/AmbilightModule;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/module/AmbilightModule;->mPreviewHeight:I

    const/16 v3, 0x23

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/camera/effect/MiYuvImage;-><init>([BIII)V

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mImage:Lcom/android/camera/effect/MiYuvImage;

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule;->mImage:Lcom/android/camera/effect/MiYuvImage;

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mYBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mUBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/android/camera/module/AmbilightModule;->mVBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/effect/MiYuvImage;->updateData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

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

.method public updateOnTripMode()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mAsdScenes:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    if-eqz v0, :cond_1

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 4
    iget v3, v3, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->value:I

    iput v3, p0, Lcom/android/camera/module/AmbilightModule;->mTripodMode:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateRecordingTime()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/AmbilightModule;->mIsShooting:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/camera/module/AmbilightModule;->shouldHideTimeLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/module/AmbilightModule;->mSceneMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 5
    :cond_1
    new-instance v0, Lcom/android/camera/module/AmbilightModule$6;

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->getDuration()I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    const-wide/16 v5, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/module/AmbilightModule$6;-><init>(Lcom/android/camera/module/AmbilightModule;JJ)V

    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 6
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 8
    iget-wide v2, p0, Lcom/android/camera/module/AmbilightModule;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/camera/module/AmbilightModule;->mRecordingTime:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/android/camera/module/AmbilightModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    .line 13
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    if-eqz v1, :cond_4

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a8

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;

    if-eqz v1, :cond_4

    const-string v2, ""

    .line 15
    invoke-interface {v1, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->updateAutoHibernationRecordingTimeOrCaptureCount(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-wide/16 v0, 0x1f4

    .line 16
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_0
    return-void
.end method
