.class public Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;
.super Ljava/lang/Object;
.source "CircularMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;,
        Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;
    }
.end annotation


# static fields
.field public static final AUDIO_BIT_RATE:I = 0xfa00

.field public static final AUDIO_CHANNELS:I = 0x1

.field public static final AUDIO_FORMAT:I = 0x2

.field public static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final AUDIO_SAMPLE_RATE:I = 0xac44

.field public static final CAPTURE_DURATION_IN_MICROSECOND:J = 0x1e8480L

.field public static final DEBUG:Z = false

.field public static final MOVIE_FILE_FORMAT:I = 0x0

.field public static final PRE_CAPTURE_DURATION_IN_MICROSECOND:J = 0xf4240L

.field public static final TAG:Ljava/lang/String; = "CircularMediaRecorder"

.field public static final VIDEO_BIT_RATE:I = 0x2160ec0

.field public static final VIDEO_FRAME_RATE:I = 0x1e

.field public static final VIDEO_I_FRAME_INTERVAL:F = 0.1f


# instance fields
.field public final mCircularAudioEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;

.field public final mCircularVideoEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;

.field public final mMicrophoneEnabled:Z

.field public mOrientationHint:I

.field public final mSnapshotRequestScheduler:Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILandroid/opengl/EGLContext;ZLjava/util/Queue;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/opengl/EGLContext;",
            "Z",
            "Ljava/util/Queue<",
            "Lcom/xiaomi/camera/liveshot/LivePhotoResult;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 2
    iput v2, v0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mOrientationHint:I

    .line 3
    new-instance v2, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;

    .line 4
    invoke-static/range {p1 .. p2}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->createVideoFormat(II)Landroid/media/MediaFormat;

    move-result-object v4

    const-wide/32 v6, 0x1e8480

    const-wide/32 v8, 0xf4240

    move-object v3, v2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;-><init>(Landroid/media/MediaFormat;Landroid/opengl/EGLContext;JJLjava/util/Queue;)V

    iput-object v2, v0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularVideoEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;

    .line 5
    iput-boolean v1, v0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mMicrophoneEnabled:Z

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;

    const v2, 0xac44

    const/4 v3, 0x1

    .line 7
    invoke-static {v2, v3}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->createAudioFormat(II)Landroid/media/MediaFormat;

    move-result-object v11

    const-wide/32 v12, 0x1e8480

    const-wide/32 v14, 0xf4240

    const/16 v16, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;-><init>(Landroid/media/MediaFormat;JJLjava/util/Queue;)V

    iput-object v1, v0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularAudioEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularAudioEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;

    .line 9
    :goto_0
    new-instance v1, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, v0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mSnapshotRequestScheduler:Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createAudioFormat(II)Landroid/media/MediaFormat;
    .locals 3

    const-string v0, "audio/mp4a-latm"

    .line 1
    invoke-static {v0, p0, p1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    const/4 v0, 0x2

    const-string v1, "aac-profile"

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    const v2, 0xfa00

    .line 3
    invoke-virtual {p0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "channel-count"

    .line 4
    invoke-virtual {p0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "pcm-encoding"

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p0
.end method

.method public static createVideoFormat(II)Landroid/media/MediaFormat;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->isH265EncodingPreferred()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "video/hevc"

    goto :goto_0

    :cond_0
    const-string v0, "video/avc"

    .line 2
    :goto_0
    invoke-static {v0, p0, p1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    const p1, 0x7f000789

    const-string v0, "color-format"

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const p1, 0x2160ec0

    const-string v0, "bitrate"

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 p1, 0x1e

    const-string v0, "frame-rate"

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const p1, 0x3dcccccd    # 0.1f

    const-string v0, "i-frame-interval"

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public static isH265EncodingPreferred()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoEncoder()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/liveshot/MediaCodecCapability;->isH265EncodingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public isPrepared()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mMicrophoneEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularAudioEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularVideoEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularVideoEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;

    .line 4
    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularVideoEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public moduleSwitched()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->TAG:Ljava/lang/String;

    const-string v1, "moduleSwitched(): E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularVideoEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->moduleSwitched()V

    .line 4
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->TAG:Ljava/lang/String;

    const-string v1, "moduleSwitched(): X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularVideoEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->TAG:Ljava/lang/String;

    const-string v1, "release(): E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mSnapshotRequestScheduler:Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->shutdown()V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularVideoEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->release()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularAudioEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->release()V

    .line 7
    :cond_1
    sget-object v0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->TAG:Ljava/lang/String;

    const-string v1, "release(): X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCinematicEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularVideoEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->setCinematicEnable(Z)V

    :cond_0
    return-void
.end method

.method public setFilterId(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularVideoEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->setFilterId(I)V

    :cond_0
    return-void
.end method

.method public setFpsReduction(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularVideoEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;->setFpsReduction(F)V

    :cond_0
    return-void
.end method

.method public setOrientationHint(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientationHint(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mOrientationHint:I

    return-void
.end method

.method public snapshot(ILcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;Ljava/lang/Object;I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularAudioEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p4}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->snapshot(I)Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    move-result-object v0

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularVideoEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;

    if-nez v0, :cond_1

    move-object p4, v1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {v0, p4}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->snapshot(I)Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    move-result-object p4

    :goto_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mOrientationHint:I

    :cond_2
    move v3, p1

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, v2

    move-object v2, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;-><init>(Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;ILjava/lang/Object;Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$1;)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mSnapshotRequestScheduler:Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;

    invoke-virtual {p1, v7}, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->execute(Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$CancellableTask;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->TAG:Ljava/lang/String;

    const-string v1, "start(): E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularVideoEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->start()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularAudioEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->start()V

    .line 6
    :cond_1
    sget-object v0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->TAG:Ljava/lang/String;

    const-string v1, "start(): X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->TAG:Ljava/lang/String;

    const-string v1, "stop(): E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mSnapshotRequestScheduler:Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->abortRemainingTasks()V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularVideoEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularVideoEncoder;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->stop(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->mCircularAudioEncoder:Lcom/xiaomi/camera/liveshot/encoder/CircularAudioEncoder;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->stop(Z)V

    .line 7
    :cond_1
    sget-object p1, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->TAG:Ljava/lang/String;

    const-string v0, "stop(): X"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
