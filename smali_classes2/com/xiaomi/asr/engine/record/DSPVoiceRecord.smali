.class public Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;
.super Ljava/lang/Object;
.source "DSPVoiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;,
        Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;
    }
.end annotation


# static fields
.field public static final PARAM_KEY_SET_AUDIO_SOURCE:I = 0x1

.field public static final PARAM_KEY_SET_CHANNEL:I = 0x0

.field public static final PARAM_KEY_SET_ENCODING_BITS:I = 0x4

.field public static final PARAM_KEY_SET_PRINT_LOG:I = 0x5

.field public static final PARAM_KEY_SET_RECORD_BUFFER_SIZE:I = 0x2

.field public static final PARAM_KEY_SET_SAMPLE_RATE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "DSPVoiceRecord"


# instance fields
.field public isPrintLog:Z

.field public mAudioEncodingBits:I

.field public mAudioSource:I

.field public mCaptureSession:I

.field public mChannels:I

.field public mListener:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

.field public mRecordBufferSize:I

.field public mRecordThread:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

.field public mSampleRate:I

.field public final syncObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mChannels:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mAudioSource:I

    const/16 v1, 0x600

    .line 4
    iput v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordBufferSize:I

    const/16 v1, 0x3e80

    .line 5
    iput v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mSampleRate:I

    const/4 v1, 0x2

    .line 6
    iput v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mAudioEncodingBits:I

    .line 7
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->syncObj:Ljava/lang/Object;

    .line 8
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->isPrintLog:Z

    .line 9
    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mListener:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    return-void
.end method

.method public static synthetic access$100(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mSampleRate:I

    return p0
.end method

.method public static synthetic access$200(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mChannels:I

    return p0
.end method

.method public static synthetic access$300(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mAudioEncodingBits:I

    return p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mListener:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mAudioSource:I

    return p0
.end method

.method public static synthetic access$600(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mCaptureSession:I

    return p0
.end method

.method public static synthetic access$700(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordBufferSize:I

    return p0
.end method

.method public static synthetic access$800(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->syncObj:Ljava/lang/Object;

    return-object p0
.end method

.method private printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->isPrintLog:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getParamValue(I)I
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1
    :cond_0
    iget p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mAudioEncodingBits:I

    return p1

    .line 2
    :cond_1
    iget p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mSampleRate:I

    return p1

    .line 3
    :cond_2
    iget p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordBufferSize:I

    return p1

    .line 4
    :cond_3
    iget p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mAudioSource:I

    return p1

    .line 5
    :cond_4
    iget p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mChannels:I

    return p1
.end method

.method public setParam(II)V
    .locals 2

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1
    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->isPrintLog:Z

    goto :goto_1

    .line 2
    :cond_2
    iput p2, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mAudioEncodingBits:I

    goto :goto_1

    .line 3
    :cond_3
    iput p2, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mSampleRate:I

    goto :goto_1

    .line 4
    :cond_4
    iput p2, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordBufferSize:I

    goto :goto_1

    .line 5
    :cond_5
    iput p2, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mAudioSource:I

    goto :goto_1

    .line 6
    :cond_6
    iput p2, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mChannels:I

    :goto_1
    return-void
.end method

.method public startRecord(I)V
    .locals 1

    .line 1
    :try_start_0
    iput p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mCaptureSession:I

    .line 2
    iget-object p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;-><init>(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$1;)V

    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

    .line 5
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 7
    iget-object p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mListener:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;->onRecordingFailed()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

    if-eqz v0, :cond_0

    const-string v0, "DSPVoiceRecord"

    const-string v1, "stopRecord"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->stop()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->mRecordThread:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;

    :cond_0
    return-void
.end method
