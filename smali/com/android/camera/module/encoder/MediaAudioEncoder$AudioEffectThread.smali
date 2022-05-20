.class public Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;
.super Ljava/lang/Thread;
.source "MediaAudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/encoder/MediaAudioEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioEffectThread"
.end annotation


# instance fields
.field public DUMMY_SAMPLE:[S

.field public mBufferQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[S>;"
        }
    .end annotation
.end field

.field public mSoundEffect:Lcom/android/camera/module/encoder/SoundEffect;

.field public mStopped:Z

.field public final synthetic this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/encoder/MediaAudioEncoder;F)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [S

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->DUMMY_SAMPLE:[S

    .line 3
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->mBufferQueue:Ljava/util/concurrent/BlockingQueue;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/android/camera/module/encoder/SoundEffect;

    const v0, 0xac44

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/android/camera/module/encoder/SoundEffect;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->mSoundEffect:Lcom/android/camera/module/encoder/SoundEffect;

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/camera/module/encoder/SoundEffect;->setTempo(F)V

    :cond_0
    return-void
.end method

.method private encodeSamples([S)V
    .locals 5

    .line 1
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    array-length v3, p1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-object p1, p1, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mMediaCodecLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-boolean v2, v2, Lcom/android/camera/module/encoder/MediaEncoder;->mSkipFrame:Z

    if-nez v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    invoke-virtual {v2}, Lcom/android/camera/module/encoder/MediaEncoder;->getPTSUs()J

    move-result-wide v2

    .line 8
    iget-object v4, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    invoke-virtual {v4, v1, v0, v2, v3}, Lcom/android/camera/module/encoder/MediaEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 9
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    invoke-virtual {p1}, Lcom/android/camera/module/encoder/MediaEncoder;->frameAvailableSoon()Z

    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private processBuffer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->mBufferQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->DUMMY_SAMPLE:[S

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->mSoundEffect:Lcom/android/camera/module/encoder/SoundEffect;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/camera/module/encoder/SoundEffect;->putSamples([S)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->encodeSamples([S)V

    :goto_0
    return-void
.end method

.method private writeSamples()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->mSoundEffect:Lcom/android/camera/module/encoder/SoundEffect;

    if-eqz v0, :cond_1

    const/16 v1, 0x400

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/module/encoder/SoundEffect;->receiveSamples(I)[S

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->encodeSamples([S)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public post([S)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->mBufferQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public requestStop()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->mStopped:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->DUMMY_SAMPLE:[S

    invoke-virtual {p0, v0}, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->post([S)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audioEffectThread>>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->mStopped:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->mBufferQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->mSoundEffect:Lcom/android/camera/module/encoder/SoundEffect;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/SoundEffect;->flush()V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->writeSamples()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->mSoundEffect:Lcom/android/camera/module/encoder/SoundEffect;

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/SoundEffect;->release()V

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audioEffectThread<<<"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_2
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->processBuffer()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    invoke-direct {p0}, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioEffectThread;->writeSamples()V

    goto :goto_0
.end method
