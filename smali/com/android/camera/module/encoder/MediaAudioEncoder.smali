.class public Lcom/android/camera/module/encoder/MediaAudioEncoder;
.super Lcom/android/camera/module/encoder/MediaEncoder;
.source "MediaAudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;,
        Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;
    }
.end annotation


# static fields
.field public static final AUDIO_SOURCES:[I

.field public static final BIT_RATE:I = 0xfa00

.field public static final FRAMES_PER_BUFFER:I = 0x19

.field public static final MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final SAMPLES_PER_FRAME:I = 0x400

.field public static final SAMPLE_RATE:I = 0xac44

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAudioEffectThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;

.field public mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

.field public final mMediaCodecLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->AUDIO_SOURCES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/encoder/MediaEncoder;-><init>(Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    .line 3
    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioEffectThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mMediaCodecLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/camera/module/encoder/MediaAudioEncoder;)Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioEffectThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;

    return-object p0
.end method

.method private initAudioRecord(Z)Landroid/media/AudioRecord;
    .locals 9

    const/4 v0, 0x2

    const v1, 0xac44

    const/16 v2, 0x10

    .line 1
    invoke-static {v1, v2, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    const/16 v2, 0x6400

    if-ge v2, v1, :cond_0

    .line 2
    div-int/lit16 v1, v1, 0x400

    add-int/lit8 v1, v1, 0x1

    mul-int/lit16 v1, v1, 0x400

    mul-int/lit8 v2, v1, 0x2

    :cond_0
    move v8, v2

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Landroid/media/AudioRecord;

    const/4 v4, 0x5

    const v5, 0xac44

    const/16 v6, 0x10

    const/4 v7, 0x2

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Landroid/media/AudioRecord;

    const/4 v4, 0x1

    const v5, 0xac44

    const/16 v6, 0x10

    const/4 v7, 0x2

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    :goto_0
    return-object p1
.end method

.method public static selectAudioCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    .line 1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 5
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 6
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_3
    return-object v3
.end method


# virtual methods
.method public prepare()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepare>>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mTrackIndex:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMuxerStarted:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsEOS:Z

    const-string v0, "audio/mp4a-latm"

    .line 5
    invoke-static {v0}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->selectAudioCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    sget-object v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "no appropriate codec for audio/mp4a-latm"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    sget-object v2, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selected codec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0xac44

    const/4 v2, 0x1

    .line 8
    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const/4 v3, 0x2

    const-string v4, "aac-profile"

    .line 9
    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v3, 0x10

    const-string v4, "channel-mask"

    .line 10
    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v3, 0xfa00

    const-string v4, "bitrate"

    .line 11
    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "channel-count"

    .line 12
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 13
    sget-object v3, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v0, :cond_1

    .line 18
    invoke-interface {v0, p0}, Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;->onPrepared(Lcom/android/camera/module/encoder/MediaEncoder;)V

    .line 19
    :cond_1
    sget-object v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepare<<<"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mMediaCodecLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-super {p0}, Lcom/android/camera/module/encoder/MediaEncoder;->release()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startRecording(JZ)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/encoder/MediaEncoder;->startRecording(JZ)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    if-nez v0, :cond_3

    .line 3
    invoke-direct {p0, p3}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->initAudioRecord(Z)Landroid/media/AudioRecord;

    move-result-object p3

    if-nez p3, :cond_1

    .line 4
    sget-object p1, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    const-string p3, "failed to initialize AudioRecord"

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {p3}, Landroid/media/AudioRecord;->startRecording()V

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    new-instance v0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSpeed:F

    div-float/2addr v1, v2

    invoke-direct {v0, p0, v1}, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;-><init>(Lcom/android/camera/module/encoder/MediaAudioEncoder;F)V

    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioEffectThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    new-instance v0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    invoke-direct {v0, p0, p3}, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;-><init>(Lcom/android/camera/module/encoder/MediaAudioEncoder;Landroid/media/AudioRecord;)V

    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    sget-object v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move p1, p2

    :goto_0
    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    .line 12
    invoke-virtual {p3}, Landroid/media/AudioRecord;->stop()V

    .line 13
    invoke-virtual {p3}, Landroid/media/AudioRecord;->release()V

    :cond_3
    return p1
.end method
