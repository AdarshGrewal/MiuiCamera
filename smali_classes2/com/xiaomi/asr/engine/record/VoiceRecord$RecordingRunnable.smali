.class public Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;
.super Ljava/lang/Object;
.source "VoiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/record/VoiceRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordingRunnable"
.end annotation


# instance fields
.field public mAudioRecord:Landroid/media/AudioRecord;

.field public mIsEnd:Z

.field public mIsExit:Z

.field public final synthetic this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;


# direct methods
.method public constructor <init>(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsEnd:Z

    .line 4
    iput-boolean p1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsExit:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/asr/engine/record/VoiceRecord;Lcom/xiaomi/asr/engine/record/VoiceRecord$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;-><init>(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V

    return-void
.end method

.method private init()Z
    .locals 11

    const-string v0, "VoiceRecord"

    const-string v1, "init Recording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-boolean v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsEnd:Z

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onRecordingEnd()V

    :cond_0
    const-string v2, "The user set up stop"

    .line 5
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$500(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$600(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v2

    if-gez v2, :cond_2

    const-string v2, "AudioRecord call getMinBufferSize < 0"

    .line 7
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$700(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V

    return v1

    .line 9
    :cond_2
    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v3, :cond_3

    .line 10
    new-instance v3, Landroid/media/AudioRecord;

    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$800(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v6

    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v7

    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$500(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v8

    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$600(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v9

    move-object v5, v3

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v3, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAudioSource:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$800(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mSampleRate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$400(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mChannels:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$500(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mAudioEncodingBits:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$600(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mRecordBufferSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$900(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mixRecordBufferSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onAudioSessionId(I)V

    .line 14
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const-string v2, "AudioRecord state is not correct"

    .line 15
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$700(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_4
    return v3

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$700(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V

    return v1
.end method

.method private releaseAudioRecordImp()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAudioSource stopAudioRecordImp is not null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_1
    const-string v0, "mAudioSource stopAudioRecordImp over"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startup()Z
    .locals 8

    const-string v0, "VoiceRecord"

    const-string v1, "startup"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsExit:Z

    .line 3
    iget-boolean v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsEnd:Z

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onRecordingEnd()V

    :cond_0
    const-string v2, "The user set up stop"

    .line 6
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8
    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const-string v5, "start Recording failed"

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    :try_start_0
    const-string v4, "start Recording"

    .line 9
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->startRecording()V

    .line 11
    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v4

    const/4 v7, 0x3

    if-eq v4, v7, :cond_2

    const-string v2, "AudioRecord recordingState is not correct"

    .line 12
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$700(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 14
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start recording deltaTime = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catch_0
    move-exception v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$700(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V

    return v1

    .line 19
    :cond_3
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$700(Lcom/xiaomi/asr/engine/record/VoiceRecord;)V

    return v1
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v0, -0x13

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    invoke-static {}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->getInstance()Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->start()V

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->init()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->getInstance()Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->stop()V

    .line 5
    invoke-static {}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->getInstance()Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->countDown()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$900(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v1

    new-array v1, v1, [B

    const-string v2, "VoiceRecord"

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRecordBufferSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$900(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->startup()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 9
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onRecordingStart()V

    .line 11
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsExit:Z

    if-nez v2, :cond_6

    .line 12
    iget-object v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$900(Lcom/xiaomi/asr/engine/record/VoiceRecord;)I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_5

    const/4 v3, -0x2

    if-eq v2, v3, :cond_4

    .line 13
    iget-object v3, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    iget-object v3, v3, Lcom/xiaomi/asr/engine/record/VoiceRecord;->syncObj:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 15
    iget-object v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onRecording([BI)V

    .line 16
    :cond_2
    iget-boolean v2, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsEnd:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    const-string v2, "VoiceRecord"

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsEnd:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsEnd:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iput-boolean v4, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsExit:Z

    .line 19
    :cond_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 20
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "read() returned AudioRecord.ERROR_BAD_VALUE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "read() returned AudioRecord.ERROR_INVALID_OPERATION"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 23
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onRecordingEnd()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1, v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$1002(Lcom/xiaomi/asr/engine/record/VoiceRecord;Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;

    .line 26
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 27
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onRecordingFailed()V

    .line 28
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_8

    .line 29
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    iget-object v1, v1, Lcom/xiaomi/asr/engine/record/VoiceRecord;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_3
    invoke-direct {p0}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->releaseAudioRecordImp()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    .line 31
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    iput-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    .line 33
    :goto_2
    monitor-exit v1

    goto :goto_4

    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_8
    :goto_4
    const-string v0, "VoiceRecord"

    const-string v1, "RecordingRunnable is exit"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->getInstance()Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->stop()V

    .line 36
    invoke-static {}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->getInstance()Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->countDown()V

    .line 37
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 38
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord;->access$300(Lcom/xiaomi/asr/engine/record/VoiceRecord;)Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;->onRecordRelease()V

    :cond_9
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->this$0:Lcom/xiaomi/asr/engine/record/VoiceRecord;

    iget-object v0, v0, Lcom/xiaomi/asr/engine/record/VoiceRecord;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordingRunnable;->mIsEnd:Z

    const-string v1, "VoiceRecord"

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
