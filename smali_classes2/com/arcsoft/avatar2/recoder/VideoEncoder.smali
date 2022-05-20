.class public Lcom/arcsoft/avatar2/recoder/VideoEncoder;
.super Lcom/arcsoft/avatar2/recoder/BaseEncoder;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/avatar2/recoder/VideoEncoder$SaveThread;
    }
.end annotation


# static fields
.field public static final ENCODER_THREAD_NAME:Ljava/lang/String; = "Arc_Video_Encoder"

.field public static F:Ljava/lang/String; = "video/hevc"

.field public static final NAME:Ljava/lang/String; = "ARC_V"

.field public static final v:Ljava/lang/String; = "Arc_VideoEncoder"

.field public static final w:J = 0x3b9aca00L

.field public static final x:I = 0x989680

.field public static final y:I = 0x1e

.field public static final z:I = 0xa


# instance fields
.field public A:Landroid/media/MediaFormat;

.field public B:I

.field public C:I

.field public D:Z

.field public E:I

.field public G:Landroid/view/Surface;

.field public H:Ljava/lang/Thread;

.field public I:Lcom/arcsoft/avatar2/gl/EGLWrapper;

.field public J:Landroid/opengl/EGLContext;

.field public K:Lcom/arcsoft/avatar2/gl/GLRender;

.field public L:I

.field public u:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/arcsoft/avatar2/recoder/MuxerWrapper;IILjava/lang/Object;Lcom/arcsoft/avatar2/recoder/RecordingListener;Landroid/opengl/EGLContext;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4, p5}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;-><init>(Lcom/arcsoft/avatar2/recoder/MuxerWrapper;Ljava/lang/Object;Lcom/arcsoft/avatar2/recoder/RecordingListener;)V

    .line 2
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->J:Landroid/opengl/EGLContext;

    .line 3
    iput p2, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->B:I

    .line 4
    iput p3, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->C:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->H:Ljava/lang/Thread;

    .line 6
    iput p7, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->L:I

    .line 7
    iput-object p6, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->J:Landroid/opengl/EGLContext;

    .line 8
    sput-object p8, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->F:Ljava/lang/String;

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->prepare(Z)V

    .line 10
    invoke-direct {p0}, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->b()V

    .line 11
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->q:Ljava/util/concurrent/locks/Lock;

    .line 12
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->r:Ljava/util/concurrent/locks/Condition;

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "VideoEncoder constructor mCustomerBitRate = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->L:I

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "Arc_VideoEncoder"

    invoke-static {p4, p1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "VideoEncoder constructor mWidth = "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ,mHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/arcsoft/avatar2/recoder/VideoEncoder;)Lcom/arcsoft/avatar2/gl/EGLWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->I:Lcom/arcsoft/avatar2/gl/EGLWrapper;

    return-object p0
.end method

.method private a(F)V
    .locals 5

    .line 3
    new-instance v0, Lcom/arcsoft/avatar2/gl/GLRender;

    iget v1, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->B:I

    iget v2, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->C:I

    iget v3, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->E:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/arcsoft/avatar2/gl/GLRender;-><init>(IIIZ)V

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->K:Lcom/arcsoft/avatar2/gl/GLRender;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/arcsoft/avatar2/gl/GLRender;->initRender(ZF)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VideoEncoder initGL glError = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Arc_VideoEncoder"

    invoke-static {v0, p1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/arcsoft/avatar2/recoder/VideoEncoder;F)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->a(F)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    const-string v0, "Arc_VideoEncoder"

    const-string v1, "initVideoEncoder()->in"

    .line 6
    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->F:Ljava/lang/String;

    iget v2, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->B:I

    iget v3, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->C:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->A:Landroid/media/MediaFormat;

    const-string v2, "color-format"

    const v3, 0x7f000789

    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->A:Landroid/media/MediaFormat;

    iget v2, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->L:I

    const-string v3, "bitrate"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 10
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->A:Landroid/media/MediaFormat;

    const-string v2, "frame-rate"

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 11
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->A:Landroid/media/MediaFormat;

    const-string v2, "i-frame-interval"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 12
    :try_start_0
    sget-object v2, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->F:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initVideoEncoder(): selected_codec_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/arcsoft/avatar2/util/CodecLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "initVideoEncoder()->createEncoderByType failed."

    .line 14
    invoke-static {v0, v3}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 16
    iget-object v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->o:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz v2, :cond_0

    const/16 v3, 0x231

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    const/16 v2, 0x232

    const/4 v3, 0x0

    .line 18
    :try_start_1
    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->A:Landroid/media/MediaFormat;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v3, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v5, "initVideoEncoder()->configure failed."

    .line 19
    invoke-static {v0, v5}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->o:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz v4, :cond_1

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 23
    :try_start_2
    iget-object p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->G:Landroid/view/Surface;

    goto :goto_2

    .line 24
    :cond_2
    iput-object v3, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->G:Landroid/view/Surface;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    const-string v3, "initVideoEncoder()->createInputSurface failed."

    .line 25
    invoke-static {v0, v3}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    iget-object p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->o:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz p1, :cond_3

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    :cond_3
    :goto_2
    const-string p1, "initVideoEncoder()->out"

    .line 29
    invoke-static {v0, p1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/arcsoft/avatar2/recoder/VideoEncoder;)Lcom/arcsoft/avatar2/gl/GLRender;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->K:Lcom/arcsoft/avatar2/gl/GLRender;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/arcsoft/avatar2/gl/EGLWrapper;

    iget-object v2, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->J:Landroid/opengl/EGLContext;

    invoke-direct {v1, v0, v2}, Lcom/arcsoft/avatar2/gl/EGLWrapper;-><init>(Landroid/view/Surface;Landroid/opengl/EGLContext;)V

    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->I:Lcom/arcsoft/avatar2/gl/EGLWrapper;

    return-void
.end method

.method private c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->K:Lcom/arcsoft/avatar2/gl/GLRender;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/gl/GLRender;->unInitRender()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->K:Lcom/arcsoft/avatar2/gl/GLRender;

    return-void
.end method

.method public static synthetic c(Lcom/arcsoft/avatar2/recoder/VideoEncoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->c()V

    return-void
.end method

.method public static synthetic d(Lcom/arcsoft/avatar2/recoder/VideoEncoder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->B:I

    return p0
.end method

.method private d()V
    .locals 8

    .line 2
    iget v0, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->B:I

    iget v1, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->C:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    iget v3, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->B:I

    iget v4, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->C:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 5
    new-instance v1, Lcom/arcsoft/avatar2/recoder/VideoEncoder$SaveThread;

    invoke-direct {v1, p0, v0}, Lcom/arcsoft/avatar2/recoder/VideoEncoder$SaveThread;-><init>(Lcom/arcsoft/avatar2/recoder/VideoEncoder;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic e(Lcom/arcsoft/avatar2/recoder/VideoEncoder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->C:I

    return p0
.end method


# virtual methods
.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->G:Landroid/view/Surface;

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public notifyNewFrameAvailable()V
    .locals 0

    return-void
.end method

.method public pauseRecording()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->e:Z

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->u:J

    :cond_0
    return-void
.end method

.method public prepare(Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->a(Z)V

    .line 2
    iget-object p1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->i:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Init video encoder is failed."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public release(Z)V
    .locals 4

    const-string v0, "Arc_VideoEncoder"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->sinalCondition()V

    .line 3
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception v1

    .line 4
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release()-> meet error when get lock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :goto_1
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->H:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    :goto_2
    iput-object v2, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->H:Ljava/lang/Thread;

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_3
    const-string v3, "Encoder Thread has been Interrupted, errors may be occurred."

    .line 8
    invoke-static {v0, v3}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 10
    :goto_3
    iput-object v2, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->H:Ljava/lang/Thread;

    throw p1

    .line 11
    :cond_0
    :goto_4
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->I:Lcom/arcsoft/avatar2/gl/EGLWrapper;

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/arcsoft/avatar2/gl/EGLWrapper;->release()V

    .line 13
    iput-object v2, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->I:Lcom/arcsoft/avatar2/gl/EGLWrapper;

    .line 14
    :cond_1
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->J:Landroid/opengl/EGLContext;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoEncoder release() encoder thread exit. threadName ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Arc_Video_Encoder"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput-object v2, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->G:Landroid/view/Surface;

    .line 17
    iput-object v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->q:Ljava/util/concurrent/locks/Lock;

    .line 18
    iput-object v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->r:Ljava/util/concurrent/locks/Condition;

    .line 19
    iput-object v2, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->s:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    .line 20
    invoke-super {p0, p1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->release(Z)V

    return-void

    .line 21
    :goto_5
    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->sinalCondition()V

    .line 22
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public resumeRecording()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->e:Z

    .line 3
    iget-wide v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->g:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->u:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->g:J

    .line 4
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->n:Ljava/util/Queue;

    iget-wide v1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public startRecording()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->H:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->startRecording()V

    .line 3
    new-instance v0, Lcom/arcsoft/avatar2/recoder/VideoEncoder$1;

    const-string v1, "Arc_Video_Encoder"

    invoke-direct {v0, p0, v1}, Lcom/arcsoft/avatar2/recoder/VideoEncoder$1;-><init>(Lcom/arcsoft/avatar2/recoder/VideoEncoder;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/VideoEncoder;->H:Ljava/lang/Thread;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "Arc_VideoEncoder"

    const-string v1, "VideoEncoder is started."

    .line 5
    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Video encoder thread has been started already, can not start twice."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopRecording()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->stopRecording()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->sinalCondition()V

    .line 4
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Arc_VideoEncoder"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRecording()-> meet error when get lock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 6
    :goto_2
    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->sinalCondition()V

    .line 7
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
