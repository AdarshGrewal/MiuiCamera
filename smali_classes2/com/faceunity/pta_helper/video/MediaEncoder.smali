.class public abstract Lcom/faceunity/pta_helper/video/MediaEncoder;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;,
        Lcom/faceunity/pta_helper/video/MediaEncoder$TimeListener;
    }
.end annotation


# static fields
.field public static final TIMEOUT_USEC:I = 0x2710

.field public static final a:Ljava/lang/String;


# instance fields
.field public b:I

.field public curentTime:J

.field public interval:J

.field public isEncode:Z

.field public mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field public volatile mIsCapturing:Z

.field public mIsEOS:Z

.field public final mListener:Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;

.field public final mLock:Ljava/lang/Object;

.field public mMediaCodec:Landroid/media/MediaCodec;

.field public mMuxerStarted:Z

.field public volatile mRequestStop:Z

.field public mTrackIndex:I

.field public final mWeakMuxer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public oldTime:J

.field public prevOutputPTSUs:J

.field public timeListener:Lcom/faceunity/pta_helper/video/MediaEncoder$TimeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/faceunity/pta_helper/video/MediaEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_helper/video/MediaEncoder;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->prevOutputPTSUs:J

    .line 4
    iput-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->curentTime:J

    .line 5
    iput-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->oldTime:J

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->isEncode:Z

    .line 7
    iput-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->interval:J

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-virtual {p1, p0}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->a(Lcom/faceunity/pta_helper/video/MediaEncoder;)V

    .line 10
    iput-object p2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mListener:Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;

    .line 11
    iget-object p1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 12
    :try_start_0
    new-instance p2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 13
    new-instance p2, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget-object p2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :catch_0
    :try_start_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "MediaExtractorWrapper is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "MediaDecoderListener is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mRequestStop:Z

    .line 4
    iget-object v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drain()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    .line 4
    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    if-eqz v4, :cond_c

    .line 5
    iget-object v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 6
    iget-boolean v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsEOS:Z

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    return-void

    :cond_3
    const/4 v5, -0x3

    if-ne v4, v5, :cond_4

    .line 7
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v5, -0x2

    if-ne v4, v5, :cond_7

    .line 8
    iget-boolean v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMuxerStarted:Z

    if-nez v4, :cond_6

    .line 9
    iget-object v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 10
    invoke-virtual {v1, v4}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->a(Landroid/media/MediaFormat;)I

    move-result v4

    iput v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mTrackIndex:I

    const/4 v4, 0x1

    .line 11
    iput-boolean v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMuxerStarted:Z

    .line 12
    invoke-virtual {v1}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->a()Z

    move-result v4

    if-nez v4, :cond_2

    .line 13
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->isStarted()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_5

    const-wide/16 v4, 0x64

    .line 15
    :try_start_2
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 16
    :catch_0
    :try_start_3
    monitor-exit v1

    return-void

    .line 17
    :cond_5
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 18
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "format changed twice"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-ltz v4, :cond_2

    .line 19
    aget-object v5, v0, v4

    if-eqz v5, :cond_b

    .line 20
    iget-object v6, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    .line 21
    iget-object v6, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v2, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 22
    :cond_8
    iget-object v6, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_a

    .line 23
    iget-boolean v3, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMuxerStarted:Z

    if-eqz v3, :cond_9

    .line 24
    iget-object v3, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->getPTSUs()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 25
    iget v3, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mTrackIndex:I

    iget-object v6, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v3, v5, v6}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 26
    iget-object v3, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v5, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->prevOutputPTSUs:J

    move v3, v2

    goto :goto_2

    .line 27
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "drain:muxer hasn\'t started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_a
    :goto_2
    iget-object v5, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 29
    iget-object v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 30
    iput-boolean v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    return-void

    .line 31
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoderOutputBuffer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_c
    return-void

    :catch_1
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public encode(Ljava/nio/ByteBuffer;IJ)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    :cond_1
    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_4

    .line 4
    iget-object v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_1

    .line 5
    aget-object v0, v0, v5

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    if-gtz p2, :cond_3

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsEOS:Z

    .line 9
    iget-object v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x4

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void

    .line 10
    :cond_3
    iget-object v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move v7, p2

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_4
    return-void
.end method

.method public frameAvailableSoon()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->b:I

    .line 4
    iget-object v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0

    return v2

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 6
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOutputPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->getOutputPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPTSUs()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->interval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->isEncode:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->curentTime:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->curentTime:J

    iput-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->oldTime:J

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 4
    iget-wide v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->prevOutputPTSUs:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    sub-long/2addr v4, v0

    add-long/2addr v0, v4

    .line 5
    :cond_1
    iget-wide v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->oldTime:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2

    iget-wide v6, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->interval:J

    cmp-long v2, v6, v2

    if-eqz v2, :cond_2

    add-long v0, v4, v6

    :cond_2
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->isEncode:Z

    .line 7
    iput-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->curentTime:J

    return-wide v0
.end method

.method public abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    .line 2
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 4
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 5
    iput-object v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    sget-object v2, Lcom/faceunity/pta_helper/video/MediaEncoder;->a:Ljava/lang/String;

    const-string v3, "failed releasing MediaCodec"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMuxerStarted:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 9
    :try_start_1
    invoke-virtual {v0}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 10
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mListener:Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;->onError(Ljava/lang/String;)V

    .line 12
    :cond_2
    sget-object v2, Lcom/faceunity/pta_helper/video/MediaEncoder;->a:Ljava/lang/String;

    const-string v3, "failed stopping muxer"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :cond_3
    :goto_2
    iput-object v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 14
    :try_start_2
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mListener:Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;

    invoke-interface {v0, p0}, Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/faceunity/pta_helper/video/MediaEncoder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 15
    sget-object v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->a:Ljava/lang/String;

    const-string v2, "failed onStopped"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mRequestStop:Z

    .line 3
    iput v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->b:I

    .line 4
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7
    :try_start_1
    iget-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mRequestStop:Z

    .line 8
    iget v3, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->b:I

    const/4 v4, 0x1

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    .line 9
    iget v5, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->b:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->b:I

    .line 10
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->drain()V

    .line 12
    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->signalEndOfInputStream()V

    .line 13
    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->drain()V

    .line 14
    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->release()V

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->drain()V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_2
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :try_start_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 19
    :catch_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    :goto_2
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 21
    :try_start_4
    iput-boolean v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mRequestStop:Z

    .line 22
    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    .line 23
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 24
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :catchall_2
    move-exception v0

    .line 25
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 26
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method

.method public setInterval(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->interval:J

    return-void
.end method

.method public setListener(Lcom/faceunity/pta_helper/video/MediaEncoder$TimeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->timeListener:Lcom/faceunity/pta_helper/video/MediaEncoder$TimeListener;

    return-void
.end method

.method public signalEndOfInputStream()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->isEncode:Z

    .line 2
    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->getPTSUs()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/faceunity/pta_helper/video/MediaEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    return-void
.end method

.method public startRecording()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mRequestStop:Z

    .line 4
    iget-object v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

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
