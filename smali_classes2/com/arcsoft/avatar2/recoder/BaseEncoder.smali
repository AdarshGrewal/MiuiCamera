.class public abstract Lcom/arcsoft/avatar2/recoder/BaseEncoder;
.super Ljava/lang/Object;
.source "BaseEncoder.java"


# static fields
.field public static final u:Ljava/lang/String; = "Arc_BaseEncoder"

.field public static final v:I = 0xf4240

.field public static final w:I = 0xf4240

.field public static final x:I = 0xc584

.field public static final y:J = 0x4e20L


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:J

.field public E:J

.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public volatile e:Z

.field public f:Ljava/lang/Object;

.field public volatile g:J

.field public h:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

.field public i:Landroid/media/MediaCodec;

.field public j:I

.field public k:I

.field public l:Z

.field public m:J

.field public n:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lcom/arcsoft/avatar2/recoder/RecordingListener;

.field public p:J

.field public q:Ljava/util/concurrent/locks/Lock;

.field public r:Ljava/util/concurrent/locks/Condition;

.field public s:Lcom/arcsoft/avatar2/recoder/FrameQueue;

.field public t:F

.field public z:J


# direct methods
.method public constructor <init>(Lcom/arcsoft/avatar2/recoder/MuxerWrapper;Ljava/lang/Object;Lcom/arcsoft/avatar2/recoder/RecordingListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 2
    iput-wide v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->p:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->t:F

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->z:J

    .line 5
    iput-wide v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->A:J

    .line 6
    iput-wide v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->B:J

    .line 7
    iput-wide v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->C:J

    .line 8
    iput-wide v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->D:J

    .line 9
    iput-wide v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->E:J

    .line 10
    iput-object p3, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->o:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    .line 11
    iput-object p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->h:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->c:Z

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->b:Z

    const/4 p3, 0x1

    .line 13
    iput-boolean p3, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->a:Z

    .line 14
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->e:Z

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->d:Z

    const/4 p3, -0x1

    .line 15
    iput p3, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->k:I

    iput p3, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->j:I

    .line 16
    iput-object p2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->f:Ljava/lang/Object;

    .line 17
    iput-wide v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->g:J

    .line 18
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->l:Z

    .line 19
    iput-wide v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->m:J

    .line 20
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->n:Ljava/util/Queue;

    const-string p1, "Arc_BaseEncoder"

    const-string p2, "BaseEncoder constructor out"

    .line 21
    invoke-static {p1, p2}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->g:J

    .line 3
    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->n:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-object v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->n:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_0
    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    .line 5
    div-long/2addr v2, v4

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPTSUs TotalPauseTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->g:J

    div-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Arc_BaseEncoder"

    invoke-static {v7, v6}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPTSUs preTime="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->A:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ,currentTime="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v0, v4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " , result="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-wide v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->A:J

    cmp-long v4, v2, v0

    const-wide/16 v5, 0x4e20

    if-gez v4, :cond_2

    sub-long v2, v0, v2

    cmp-long v4, v2, v5

    if-gez v4, :cond_1

    add-long/2addr v0, v5

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    add-long/2addr v0, v5

    :goto_0
    move-wide v2, v0

    goto :goto_1

    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v4, v7, v0

    if-eqz v4, :cond_3

    sub-long v0, v2, v0

    cmp-long v4, v0, v5

    if-gez v4, :cond_3

    add-long/2addr v2, v5

    sub-long/2addr v2, v0

    :cond_3
    :goto_1
    return-wide v2
.end method

.method public drain()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    const-string v0, "Arc_BaseEncoder"

    const-string v1, "drain()->Encoder is not ready."

    .line 2
    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drain()->Encoder one frame. threadName in="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Arc_BaseEncoder"

    invoke-static {v2, v1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->h:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    if-nez v1, :cond_1

    const-string v0, "Arc_BaseEncoder"

    const-string v1, "drain()->Muxer is not ready."

    .line 6
    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 8
    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->b:Z

    if-eqz v4, :cond_e

    .line 9
    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    iget-wide v5, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->p:J

    invoke-virtual {v4, v1, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x2

    if-ne v5, v4, :cond_4

    if-ge v3, v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drain()->Encoded frame is preparing, wait ... waitCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Arc_BaseEncoder"

    invoke-static {v5, v4}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "Arc_BaseEncoder"

    const-string v1, "drain()->Encoded frame is preparing, wait time out."

    .line 11
    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const/4 v5, -0x2

    const/4 v7, 0x1

    if-ne v5, v4, :cond_7

    .line 12
    iget-boolean v4, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->c:Z

    if-nez v4, :cond_6

    .line 13
    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 14
    iget-object v5, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->h:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    invoke-virtual {v5, v4}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    iput v4, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->j:I

    .line 15
    iput-boolean v7, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->c:Z

    .line 16
    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->h:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;->isStarted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 17
    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->h:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;->startMuxer()V

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Muxer started: threadName ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Arc_BaseEncoder"

    invoke-static {v5, v4}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->h:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    monitor-enter v4

    .line 20
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->h:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;->isStarted()Z

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_5

    .line 21
    :try_start_1
    iget-object v5, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->h:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "Arc_BaseEncoder"

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "drain()->Wait for muxer started, but be interrupted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-boolean v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->c:Z

    .line 24
    :cond_5
    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->a()J

    move-result-wide v5

    .line 25
    iput-wide v5, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->E:J

    .line 26
    iget-object v7, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->h:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    invoke-virtual {v7, v5, v6}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;->setStartTime(J)V

    const-string v7, "Arc_BaseEncoder"

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Muxer start time ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/arcsoft/avatar2/util/CodecLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    const-string v0, "Arc_BaseEncoder"

    const-string v1, "drain()->Encoder format change twice."

    .line 29
    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Format only allow change once, but Encoder meet twice!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-gez v4, :cond_8

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drain()->Encoder meet bufferStatus ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Arc_BaseEncoder"

    invoke-static {v5, v4}, Lcom/arcsoft/avatar2/util/CodecLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 32
    :cond_8
    iget-object v5, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 33
    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v6, v8

    if-eqz v6, :cond_9

    .line 34
    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const-string v6, "Arc_BaseEncoder"

    const-string v8, "drain()->Encoder meet bufferStatus : BUFFER_FLAG_CODEC_CONFIG "

    .line 35
    invoke-static {v6, v8}, Lcom/arcsoft/avatar2/util/CodecLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_9
    iget-boolean v6, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->c:Z

    if-nez v6, :cond_a

    const-string v6, "Arc_BaseEncoder"

    const-string v8, "drain()->Encoder muxer has not started "

    .line 37
    invoke-static {v6, v8}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_a
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_c

    .line 39
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v8

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "drain()->Encoder one frame. threadName="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " timestamp original buffer info ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Arc_BaseEncoder"

    invoke-static {v8, v6}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->a()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "time_diff _"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v10, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->z:J

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Arc_BaseEncoder"

    invoke-static {v8, v6}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v8, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->z:J

    .line 45
    iget-wide v10, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->B:J

    sub-long v10, v8, v10

    const-wide/32 v12, 0xf4240

    cmp-long v6, v10, v12

    if-ltz v6, :cond_b

    .line 46
    iput-wide v8, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->B:J

    .line 47
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v8, "request-sync"

    .line 48
    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    iget-object v7, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v7, v6}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 50
    :cond_b
    iget-object v6, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->h:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    iget v7, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->j:I

    invoke-virtual {v6, v7, v5, v1}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 51
    iget-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v5, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->A:J

    .line 52
    iget-object v7, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->h:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    invoke-virtual {v7, v5, v6}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;->setCurrentTime(J)V

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drain()->Encoder one frame. threadName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " timestamp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Arc_BaseEncoder"

    invoke-static {v6, v5}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_c
    iget-object v5, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 55
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 56
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->a:Z

    if-nez v0, :cond_d

    const-string v0, "Arc_BaseEncoder"

    const-string v1, "drain()->Encoder meet unexpected end of stream."

    .line 57
    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    const-string v0, "Arc_BaseEncoder"

    const-string v1, "drain()->Encoder meet end of stream."

    .line 58
    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_2
    iput-boolean v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->b:Z

    .line 60
    :cond_e
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drain()->Encoder one frame. threadName out="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Arc_BaseEncoder"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public encode(Ljava/nio/ByteBuffer;J)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    const-string v1, "Arc_BaseEncoder"

    if-nez v0, :cond_0

    const-string p1, "encode()->Encoder is not ready."

    .line 2
    invoke-static {v1, p1}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encode()->Encoder one frame. threadName in="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    iget-boolean v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->b:Z

    if-nez v2, :cond_1

    return-void

    .line 5
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->b:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->a:Z

    if-nez v2, :cond_5

    .line 6
    iget-object v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    const/4 v2, -0x1

    if-ne v2, v6, :cond_3

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encode()->Encoder is busy, wait ... waitCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "encode()->Encoder is busy, wait time out."

    .line 8
    invoke-static {v1, p1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-ltz v6, :cond_1

    .line 9
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0, v6}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->a:Z

    .line 11
    iget-object v5, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x4

    move-wide v9, p2

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const-string p1, "encode()->Encoder meets end of stream."

    .line 12
    invoke-static {v1, p1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 14
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 16
    iget-object v5, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    const/4 v11, 0x0

    move-wide v9, p2

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const-string p1, "encode()->Encoder is fed a new frame."

    .line 17
    invoke-static {v1, p1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getEncoderType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Software Encoder"

    return-object v0

    :cond_0
    const-string v0, "Hardware Encoder"

    return-object v0

    :cond_1
    const-string v0, "No Encoder"

    return-object v0
.end method

.method public getFrameQueue()Lcom/arcsoft/avatar2/recoder/FrameQueue;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public lock()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->q:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :cond_0
    return-void
.end method

.method public abstract notifyNewFrameAvailable()V
.end method

.method public pauseRecording()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->e:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log_mIsRequestPause_Vaule_pauseRecording ->mIsRequestPause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Arc_BaseEncoder"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract prepare(Z)V
.end method

.method public release(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_4

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->o:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz v0, :cond_1

    const/16 v4, 0x234

    .line 6
    invoke-interface {v0, v4, v3}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->o:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz v0, :cond_1

    const/16 v4, 0x224

    .line 8
    invoke-interface {v0, v4, v3}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    .line 9
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->o:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz p1, :cond_3

    const/16 v0, 0x235

    .line 12
    invoke-interface {p1, v0, v3}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->o:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz p1, :cond_3

    const/16 v0, 0x225

    .line 14
    invoke-interface {p1, v0, v3}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    .line 15
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->h:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;->stopMuxer()V

    .line 18
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->h:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    .line 19
    :cond_5
    iput-boolean v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->b:Z

    .line 20
    iput-boolean v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->e:Z

    iput-boolean v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->d:Z

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->a:Z

    .line 22
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->f:Ljava/lang/Object;

    .line 23
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->q:Ljava/util/concurrent/locks/Lock;

    .line 24
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->r:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method public resumeRecording()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->e:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log_mIsRequestPause_Vaule_resumeRecording ->mIsRequestPause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Arc_BaseEncoder"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCropFactor(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->t:F

    return-void
.end method

.method public setFrameQueue(Lcom/arcsoft/avatar2/recoder/FrameQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->s:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    return-void
.end method

.method public sinalCondition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->r:Ljava/util/concurrent/locks/Condition;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_0
    return-void
.end method

.method public startRecording()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->b:Z

    const-string v1, "Arc_BaseEncoder"

    if-eqz v0, :cond_0

    const-string v0, "startRecording()-> encoder is started, you can not start it again"

    .line 2
    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/CodecLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->b:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->d:Z

    .line 5
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->a:Z

    const-string v0, "startRecording()-> encoder is started."

    .line 6
    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopRecording()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "Arc_BaseEncoder"

    const-string v1, "stopRecording()-> stop encoder request command is received,you can not send stop command again."

    .line 2
    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/CodecLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->d:Z

    return-void
.end method

.method public unLock()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->q:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    return-void
.end method
