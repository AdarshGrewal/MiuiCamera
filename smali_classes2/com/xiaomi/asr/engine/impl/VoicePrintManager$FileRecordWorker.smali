.class public Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;
.super Ljava/lang/Thread;
.source "VoicePrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/impl/VoicePrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileRecordWorker"
.end annotation


# instance fields
.field public mAudioSource:Lcom/xiaomi/asr/engine/record/AudioSource;

.field public mCacheData:Ljava/io/ByteArrayOutputStream;

.field public mCancel:Z

.field public mMaxTime:I

.field public mRecordWorking:Z

.field public mRegisterState:I

.field public final synthetic this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;


# direct methods
.method public constructor <init>(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;Lcom/xiaomi/asr/engine/record/AudioSource;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mAudioSource:Lcom/xiaomi/asr/engine/record/AudioSource;

    .line 4
    iput-object p2, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mAudioSource:Lcom/xiaomi/asr/engine/record/AudioSource;

    .line 5
    iput p3, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mMaxTime:I

    .line 6
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mCacheData:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;Lcom/xiaomi/asr/engine/record/AudioSource;ILcom/xiaomi/asr/engine/impl/VoicePrintManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;-><init>(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;Lcom/xiaomi/asr/engine/record/AudioSource;I)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mCancel:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mRecordWorking:Z

    return-void
.end method

.method public end()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mRecordWorking:Z

    return-void
.end method

.method public run()V
    .locals 10

    const/16 v0, 0x140

    new-array v1, v0, [B

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2
    iget-object v4, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mAudioSource:Lcom/xiaomi/asr/engine/record/AudioSource;

    invoke-virtual {v4}, Lcom/xiaomi/asr/engine/record/AudioSource;->init()V

    .line 3
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mAudioSource:Lcom/xiaomi/asr/engine/record/AudioSource;

    invoke-virtual {v4}, Lcom/xiaomi/asr/engine/record/AudioSource;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    iget-object v4, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v4}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/xiaomi/asr/engine/WVPListener;->onStartAudio()V

    .line 6
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mRecordWorking:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 8
    iget v4, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mMaxTime:I

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-lez v4, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v4, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mAudioSource:Lcom/xiaomi/asr/engine/record/AudioSource;

    invoke-virtual {v4, v1, v5, v0}, Lcom/xiaomi/asr/engine/record/AudioSource;->read([BII)I

    move-result v4

    if-lez v4, :cond_2

    .line 10
    :try_start_1
    iget-object v4, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mCacheData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 11
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 12
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mCacheData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mCacheData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 14
    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mCacheData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$400(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v3}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$300(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v5, v0}, Lcom/xiaomi/asr/engine/jni/VoicePrintInterface;->voiceprintReEnrollRegister(Ljava/lang/String;[BII)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mRegisterState:I

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mAudioSource:Lcom/xiaomi/asr/engine/record/AudioSource;

    invoke-virtual {v0}, Lcom/xiaomi/asr/engine/record/AudioSource;->release()V

    .line 17
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onStopAudio()V

    .line 19
    :cond_4
    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mCancel:Z

    if-eqz v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 21
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onAbortEnrollmentComplete()V

    :cond_5
    return-void

    .line 22
    :cond_6
    iget v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mRegisterState:I

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 23
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$600(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_7

    .line 24
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0, v5}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$602(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;I)I

    .line 25
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$600(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$602(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;I)I

    .line 26
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 27
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0, v3, v5, v1, v5}, Lcom/xiaomi/asr/engine/WVPListener;->onEnrollmentComplete(ZZFI)V

    .line 28
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 29
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mCacheData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/xiaomi/asr/engine/WVPListener;->onEnrollAudioBufferAvailable([BZ)V

    goto :goto_2

    .line 30
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 31
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    iget v2, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mRegisterState:I

    invoke-interface {v0, v5, v5, v1, v2}, Lcom/xiaomi/asr/engine/WVPListener;->onEnrollmentComplete(ZZFI)V

    .line 32
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 33
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->this$0:Lcom/xiaomi/asr/engine/impl/VoicePrintManager;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/VoicePrintManager;->access$200(Lcom/xiaomi/asr/engine/impl/VoicePrintManager;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mCacheData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/xiaomi/asr/engine/WVPListener;->onEnrollAudioBufferAvailable([BZ)V

    :cond_b
    :goto_2
    return-void

    :catch_1
    move-exception v0

    const-string v1, "VoicePrintManager"

    const-string v2, "IllegalStateException"

    .line 34
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mRecordWorking:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/impl/VoicePrintManager$FileRecordWorker;->mCancel:Z

    .line 3
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
