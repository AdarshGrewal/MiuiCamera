.class public Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;
.super Ljava/lang/Object;
.source "DSPVoiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordingRunnable"
.end annotation


# instance fields
.field public mAudioRecord:Landroid/media/AudioRecord;

.field public mIsEnd:Z

.field public mIsExit:Z

.field public final synthetic this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;


# direct methods
.method public constructor <init>(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mIsEnd:Z

    .line 4
    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mIsExit:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;-><init>(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)V

    return-void
.end method

.method private init()Z
    .locals 13

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$100(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$200(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    if-gez v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;->onRecordCreateError()V

    :cond_0
    return v0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "DSPVoiceRecord"

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 5
    :try_start_1
    const-class v2, Landroid/media/AudioRecord;

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/media/AudioAttributes;

    aput-object v7, v6, v0

    const-class v7, Landroid/media/AudioFormat;

    aput-object v7, v6, v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v7, v6, v9

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 6
    const-class v6, Landroid/media/AudioAttributes$Builder;

    const-string v7, "setInternalCapturePreset"

    new-array v10, v4, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v0

    invoke-virtual {v6, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 7
    new-instance v7, Landroid/media/AudioFormat$Builder;

    invoke-direct {v7}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget-object v10, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v10}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$200(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v7

    iget-object v10, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v10}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v7

    iget-object v10, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v10}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$100(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v7

    .line 8
    new-instance v10, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v10}, Landroid/media/AudioAttributes$Builder;-><init>()V

    new-array v11, v4, [Ljava/lang/Object;

    .line 9
    iget-object v12, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v12}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$500(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v0

    invoke-virtual {v6, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v10}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    aput-object v6, v5, v0

    aput-object v7, v5, v4

    const v6, 0xc3500

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v6}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$600(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecord;

    iput-object v2, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAudioSource:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$500(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mSampleRate:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$100(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mChannels:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$200(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mAudioEncodingBits:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mRecordBufferSize:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v5}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$700(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mixRecordBufferSize:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;->onAudioSessionId(I)V

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 15
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 16
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;->onRecordCreateError()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return v0

    :cond_4
    const-string v0, "init Recording"

    .line 17
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_0
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 20
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;->onRecordCreateError()V

    :cond_5
    return v0
.end method

.method private startup()Z
    .locals 8

    const-string v0, "DSPVoiceRecord"

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mIsEnd:Z

    .line 2
    iput-boolean v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mIsExit:Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    :try_start_0
    const-string v4, "start Recording"

    .line 5
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start recording deltaTime = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v6, v2

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const-string v2, "start Recording failed"

    .line 10
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;->onRecordCreateError()V

    :cond_0
    return v1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;->onRecordCreateError()V

    :cond_2
    return v1
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, -0x13

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->init()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$700(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I

    move-result v0

    new-array v0, v0, [B

    const-string v1, "DSPVoiceRecord"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRecordBufferSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$700(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->startup()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;->onRecordingStart()V

    .line 8
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mIsExit:Z

    if-nez v1, :cond_5

    .line 9
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$700(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    if-gtz v1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;->onRecordingFailed()V

    :cond_2
    const-string v0, "DSPVoiceRecord"

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read() error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 13
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$800(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 15
    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;->onRecording([BI)V

    .line 16
    :cond_4
    iget-boolean v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mIsEnd:Z

    iput-boolean v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mIsExit:Z

    .line 17
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;->onRecordingEnd()V

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_7

    .line 22
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$800(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 23
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 24
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 26
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :goto_2
    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_7
    :goto_4
    const-string v0, "DSPVoiceRecord"

    const-string v1, "RecordingRunnable is exit"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 30
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordListener;->onRecordRelease()V

    :cond_8
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;->access$800(Lcom/xiaomi/asr/engine/record/DSPVoiceRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/xiaomi/asr/engine/record/DSPVoiceRecord$RecordingRunnable;->mIsEnd:Z

    const-string v1, "DSPVoiceRecord"

    const-string v2, "stop"

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
