.class public Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;
.super Lcom/faceunity/pta_helper/video/MediaEncoder;
.source "MediaAudioFileEncoder.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Landroid/media/MediaExtractor;

.field public c:Ljava/lang/String;

.field public d:Ljava/nio/ByteBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/faceunity/pta_helper/video/MediaEncoder;-><init>(Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;)V

    .line 2
    iput-object p3, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public drain()V
    .locals 0

    return-void
.end method

.method public prepare()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mTrackIndex:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsEOS:Z

    iput-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMuxerStarted:Z

    .line 3
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v1, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    .line 4
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;

    .line 6
    sget-object v2, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTrackCount: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 9
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "audio/"

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7d000

    .line 11
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->d:Ljava/nio/ByteBuffer;

    .line 12
    iget-object v3, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 13
    invoke-virtual {v1, v2}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->a(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mTrackIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mListener:Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;

    if-eqz v0, :cond_2

    .line 15
    :try_start_0
    invoke-interface {v0, p0}, Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;->onPrepared(Lcom/faceunity/pta_helper/video/MediaEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 16
    sget-object v1, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->a:Ljava/lang/String;

    const-string v2, "prepare:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->release()V

    .line 2
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 19

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-object v0, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    iget-object v0, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;

    .line 5
    invoke-virtual {v2}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    monitor-enter v2

    .line 7
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->isStarted()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v3, 0x64

    .line 8
    :try_start_2
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 9
    :try_start_3
    sget-object v0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->a:Ljava/lang/String;

    const-string v4, "start wait"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 10
    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 11
    iput-boolean v3, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMuxerStarted:Z

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    move v0, v6

    .line 12
    :goto_2
    iget-object v9, v1, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    iget-object v10, v1, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v10, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v13

    .line 13
    iget-object v9, v1, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    .line 14
    iget-object v11, v1, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v16

    .line 15
    iget-object v11, v1, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->advance()Z

    move-result v11

    if-eqz v11, :cond_5

    if-lez v13, :cond_5

    if-nez v0, :cond_2

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-wide/from16 v17, v7

    move v7, v3

    goto :goto_3

    :cond_2
    move-wide/from16 v17, v7

    move v7, v0

    :goto_3
    const-wide/16 v11, 0x3e8

    .line 17
    :try_start_4
    div-long/2addr v9, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v11, v11, v17

    sub-long/2addr v9, v11

    cmp-long v0, v9, v4

    if-lez v0, :cond_3

    .line 18
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 20
    :cond_3
    :goto_4
    iget-object v0, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->timeListener:Lcom/faceunity/pta_helper/video/MediaEncoder$TimeListener;

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->getPTSUs()J

    move-result-wide v8

    invoke-interface {v0, v8, v9}, Lcom/faceunity/pta_helper/video/MediaEncoder$TimeListener;->onTime(J)V

    .line 22
    :cond_4
    iget-object v11, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->getPTSUs()J

    move-result-wide v14

    invoke-virtual/range {v11 .. v16}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 23
    iget v0, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mTrackIndex:I

    iget-object v8, v1, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->d:Ljava/nio/ByteBuffer;

    iget-object v9, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v0, v8, v9}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 24
    iget-object v0, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v8, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->prevOutputPTSUs:J

    move v0, v7

    move-wide/from16 v7, v17

    goto :goto_2

    .line 25
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->release()V

    return-void

    :catchall_1
    move-exception v0

    .line 26
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public signalEndOfInputStream()V
    .locals 0

    return-void
.end method
