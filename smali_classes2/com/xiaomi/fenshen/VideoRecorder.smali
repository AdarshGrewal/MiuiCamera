.class public Lcom/xiaomi/fenshen/VideoRecorder;
.super Ljava/lang/Object;
.source "VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/fenshen/VideoRecorder$RecordHandler;,
        Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoRecorder"

.field public static isDebug:Z


# instance fields
.field public audioBufferCount:I

.field public audioCallback:Landroid/media/MediaCodec$Callback;

.field public audioEncoder:Landroid/media/MediaCodec;

.field public audioTrack:I

.field public handleThread:Landroid/os/HandlerThread;

.field public handler:Landroid/os/Handler;

.field public height:I

.field public inAudioFrames:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;",
            ">;"
        }
    .end annotation
.end field

.field public inputSurface:Landroid/view/Surface;

.field public isFd:Z

.field public muxer:Landroid/media/MediaMuxer;

.field public muxerStarted:Z

.field public nativeRecorder:J

.field public outAudioFrames:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;",
            ">;"
        }
    .end annotation
.end field

.field public outvideoFrames:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;",
            ">;"
        }
    .end annotation
.end field

.field public startTime:Ljava/util/Date;

.field public useAsync:Z

.field public vcodecType:Ljava/lang/String;

.field public videoBufferCount:I

.field public videoCallback:Landroid/media/MediaCodec$Callback;

.field public videoEncoder:Landroid/media/MediaCodec;

.field public videoFd:Ljava/io/FileDescriptor;

.field public videoPath:Ljava/lang/String;

.field public videoTrack:I

.field public width:I

.field public withAudio:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "VideoRecorder"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/fenshen/VideoRecorder;->isDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->withAudio:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->useAsync:Z

    iput-boolean v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->isFd:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioTrack:I

    iput v1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoTrack:I

    iput v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoBufferCount:I

    iput v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioBufferCount:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->inAudioFrames:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->outAudioFrames:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->outvideoFrames:Ljava/util/Queue;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "record-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->handleThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/xiaomi/fenshen/VideoRecorder$RecordHandler;

    iget-object v1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->handleThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/fenshen/VideoRecorder$RecordHandler;-><init>(Lcom/xiaomi/fenshen/VideoRecorder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->handler:Landroid/os/Handler;

    const-string v0, "VideoRecorder"

    const-string v1, "construct VideoRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/fenshen/VideoRecorder;->isDebug:Z

    return v0
.end method

.method public static synthetic access$100(Lcom/xiaomi/fenshen/VideoRecorder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/xiaomi/fenshen/VideoRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxerStarted:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/xiaomi/fenshen/VideoRecorder;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoTrack:I

    return p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/fenshen/VideoRecorder;)Landroid/media/MediaMuxer;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxer:Landroid/media/MediaMuxer;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/xiaomi/fenshen/VideoRecorder;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->outvideoFrames:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/xiaomi/fenshen/VideoRecorder;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->inAudioFrames:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/xiaomi/fenshen/VideoRecorder;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioTrack:I

    return p0
.end method

.method public static synthetic access$800(Lcom/xiaomi/fenshen/VideoRecorder;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->outAudioFrames:Ljava/util/Queue;

    return-object p0
.end method

.method private encodeAudio(I[BJ)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_0

    iget-object v1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v1, p2, v0, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move v7, p1

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_0
    :goto_0
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object p2, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const-wide/16 p3, 0x3e8

    invoke-virtual {p2, p1, p3, p4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "audio out index: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "VideoRecorder"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, -0x2

    if-ne p2, p3, :cond_1

    iget-object p3, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/xiaomi/fenshen/VideoRecorder;->addTrack(Landroid/media/MediaFormat;)V

    const-string p3, "audio INFO_OUTPUT_FORMAT_CHANGED"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-gez p2, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    const-string p1, "audio INFO_TRY_AGAIN_LATER"

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget p3, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_4

    const-string p3, "audio BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_4
    iget p3, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v1, 0x4

    and-int/2addr p3, v1

    if-eqz p3, :cond_5

    const-string p3, "audio got EOS"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/xiaomi/fenshen/VideoRecorder;->handler:Landroid/os/Handler;

    invoke-virtual {p3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    iget-object p4, p0, Lcom/xiaomi/fenshen/VideoRecorder;->handler:Landroid/os/Handler;

    invoke-virtual {p4, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    iget p3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez p3, :cond_0

    iget-object p3, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p3, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iget p4, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioTrack:I

    if-ltz p4, :cond_6

    iget-object v1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, p4, p3, p1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    :cond_6
    new-instance p2, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;

    invoke-direct {p2, p0}, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;-><init>(Lcom/xiaomi/fenshen/VideoRecorder;)V

    iget p4, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    iput-object p4, p2, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    iget p4, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v1, p4, [B

    invoke-virtual {p3, v1, v0, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object p3, p2, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    iget p4, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p3, v1, v0, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object p3, p2, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    iget p4, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p3, p2, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    iget p4, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr p4, v1

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iput-object p1, p2, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->outAudioFrames:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private setAudioCallback()V
    .locals 3

    new-instance v0, Lcom/xiaomi/fenshen/VideoRecorder$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/fenshen/VideoRecorder$2;-><init>(Lcom/xiaomi/fenshen/VideoRecorder;)V

    iput-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioCallback:Landroid/media/MediaCodec$Callback;

    iget-object v1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/xiaomi/fenshen/VideoRecorder;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method private setVideoCallback()V
    .locals 3

    new-instance v0, Lcom/xiaomi/fenshen/VideoRecorder$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/fenshen/VideoRecorder$1;-><init>(Lcom/xiaomi/fenshen/VideoRecorder;)V

    iput-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoCallback:Landroid/media/MediaCodec$Callback;

    iget-object v1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/xiaomi/fenshen/VideoRecorder;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public addAudioFrame([BIJ)V
    .locals 8

    new-instance v0, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;

    invoke-direct {v0, p0}, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;-><init>(Lcom/xiaomi/fenshen/VideoRecorder;)V

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v1, v0, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v2, v0, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget-object p2, p0, Lcom/xiaomi/fenshen/VideoRecorder;->inAudioFrames:Ljava/util/Queue;

    invoke-interface {p2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "native->java audio data size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " inQueue "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->inAudioFrames:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoRecorder"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addTrack(Landroid/media/MediaFormat;)V
    .locals 7

    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "VideoRecorder"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioTrack:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "add audio track "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioTrack:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoTrack:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "add video track "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoTrack:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->withAudio:Z

    const-string v0, "muxer started"

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoTrack:I

    if-eq p1, v3, :cond_2

    iget p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioTrack:I

    if-eq p1, v3, :cond_2

    iget-boolean p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxerStarted:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    iput-boolean v2, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxerStarted:Z

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->startTime:Ljava/util/Date;

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoTrack:I

    if-eq p1, v3, :cond_2

    iget-boolean p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxerStarted:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    iput-boolean v2, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxerStarted:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->startTime:Ljava/util/Date;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxerStarted:Z

    if-eqz p1, :cond_4

    :goto_2
    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->outvideoFrames:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const-string v0, " queue size "

    const-string v2, " size "

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->outvideoFrames:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;

    iget-object v3, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxer:Landroid/media/MediaMuxer;

    iget v4, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoTrack:I

    iget-object v5, p1, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    iget-object v6, p1, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video writeSampleData info.ts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->outvideoFrames:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->outAudioFrames:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->outAudioFrames:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;

    iget-object v3, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxer:Landroid/media/MediaMuxer;

    iget v4, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioTrack:I

    iget-object v5, p1, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    iget-object v6, p1, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio writeSampleData info.ts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->outAudioFrames:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    return-void
.end method

.method public createAudioEncoder()V
    .locals 7

    const-string v0, "VideoRecorder"

    iget-boolean v1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->withAudio:Z

    if-eqz v1, :cond_0

    const v1, 0xac44

    const-string v2, "audio/mp4a-latm"

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    const-string v5, "mime"

    invoke-virtual {v4, v5, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "aac-profile"

    invoke-virtual {v4, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v1, 0x2

    invoke-virtual {v4, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v5, 0x1f400

    const-string v6, "bitrate"

    invoke-virtual {v4, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "channel-count"

    invoke-virtual {v4, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v5, 0x0

    const-string v6, "is-adts"

    invoke-virtual {v4, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v5, "csd-0"

    invoke-virtual {v4, v5, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :try_start_0
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-direct {p0}, Lcom/xiaomi/fenshen/VideoRecorder;->setAudioCallback()V

    iget-object v1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "create audio encoder failed!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const-string v1, "created audio encoder!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x12t
        0x12t
    .end array-data
.end method

.method public createVideoEncoder(IILjava/lang/String;J)V
    .locals 2

    const-string v0, "VideoRecorder"

    iput p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->width:I

    iput p2, p0, Lcom/xiaomi/fenshen/VideoRecorder;->height:I

    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x20

    iput-object p3, p0, Lcom/xiaomi/fenshen/VideoRecorder;->vcodecType:Ljava/lang/String;

    iput-wide p4, p0, Lcom/xiaomi/fenshen/VideoRecorder;->nativeRecorder:J

    invoke-static {p3, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "color-format"

    const p4, 0x7f000789

    invoke-virtual {p1, p2, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "bitrate"

    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 p2, 0x1e

    const-string p4, "frame-rate"

    invoke-virtual {p1, p4, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p4, "capture-rate"

    invoke-virtual {p1, p4, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 p2, 0x1

    const-string p4, "i-frame-interval"

    invoke-virtual {p1, p4, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_0
    invoke-static {p3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    iget-boolean p3, p0, Lcom/xiaomi/fenshen/VideoRecorder;->useAsync:Z

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/fenshen/VideoRecorder;->setVideoCallback()V

    :cond_0
    iget-object p3, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4, p4, p2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->inputSurface:Landroid/view/Surface;

    const-string p1, "created video encoder!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    :try_start_1
    iget-boolean p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->isFd:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Landroid/media/MediaMuxer;

    iget-object p3, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoFd:Ljava/io/FileDescriptor;

    invoke-direct {p1, p3, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxer:Landroid/media/MediaMuxer;

    const-string p1, "created MediaMuxer with fd!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/media/MediaMuxer;

    iget-object p3, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoPath:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxer:Landroid/media/MediaMuxer;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "created MediaMuxer with path "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public enableAudio()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->withAudio:Z

    const-string v0, "VideoRecorder"

    const-string v1, "enable audio"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public encodeVideo(I)V
    .locals 1

    const-string p1, "VideoRecorder"

    const-string v0, "queue video buffer"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public finalize()V
    .locals 2

    const-string v0, "VideoRecorder"

    const-string v1, "destruct VideoRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->inputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public native nativeDrawFrame(J)V
.end method

.method public native notifySaved(I)V
.end method

.method public setVideoFd(Ljava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoFd:Ljava/io/FileDescriptor;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->isFd:Z

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoPath:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->isFd:Z

    return-void
.end method

.method public signalEOS()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    const-string v0, "VideoRecorder"

    const-string v1, "signal EOS to video encoder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startRecorder()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    const-string v1, "VideoRecorder"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const-string v0, "video encoder started"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->withAudio:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const-string v0, "audio encoder started"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "start audio & video encoder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopRecorder(I)V
    .locals 8

    iget-boolean v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->withAudio:Z

    const-string v1, "video_saved "

    const/4 v2, 0x0

    const-string v3, "VideoRecorder"

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    const-string v0, "stop video encoder"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const-string p1, "stop audio encoder"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxer:Landroid/media/MediaMuxer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->stop()V

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->release()V

    iput-object v2, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxer:Landroid/media/MediaMuxer;

    const-string p1, "stop muxer"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->startTime:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int p1, v4

    invoke-virtual {p0, p1}, Lcom/xiaomi/fenshen/VideoRecorder;->notifySaved(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/xiaomi/fenshen/VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxer:Landroid/media/MediaMuxer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->stop()V

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->release()V

    iput-object v2, p0, Lcom/xiaomi/fenshen/VideoRecorder;->muxer:Landroid/media/MediaMuxer;

    const-string p1, "muxer stop"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder;->startTime:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int p1, v4

    invoke-virtual {p0, p1}, Lcom/xiaomi/fenshen/VideoRecorder;->notifySaved(I)V

    :cond_3
    :goto_0
    return-void
.end method
