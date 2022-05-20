.class public Lcom/arcsoft/avatar2/recoder/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Lcom/arcsoft/avatar2/recoder/RecordingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/avatar2/recoder/MediaManager$SaveThread;
    }
.end annotation


# static fields
.field public static final MUXER_AUDIO_ENCODER:I = 0x1

.field public static final MUXER_VIDEO_AND_AUDIO_ENCODER:I = 0x2

.field public static final MUXER_VIDEO_ENCODER:I = 0x1

.field public static final a:Ljava/lang/String; = "Arc_VideoEncoder"

.field public static final r:I = 0x2


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

.field public i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

.field public j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

.field public k:Z

.field public l:Lcom/arcsoft/avatar2/gl/GLRender;

.field public m:I

.field public n:I

.field public o:Ljava/lang/Object;

.field public p:Lcom/arcsoft/avatar2/recoder/RecordingListener;

.field public q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

.field public s:I

.field public t:I

.field public u:[I


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;IIIZILcom/arcsoft/avatar2/recoder/RecordingListener;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p7, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->p:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    .line 23
    iput p2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    .line 24
    iput p3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    const/16 p7, 0x5a

    if-eq p7, p4, :cond_0

    const/16 p7, 0x10e

    if-ne p7, p4, :cond_1

    .line 25
    :cond_0
    iget p7, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    xor-int/2addr p7, v0

    iput p7, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    xor-int/2addr v0, p7

    .line 26
    iput v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    xor-int/2addr p7, v0

    .line 27
    iput p7, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    .line 28
    :cond_1
    iput p4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->d:I

    .line 29
    iput-boolean p5, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->e:Z

    const/4 p4, 0x0

    .line 30
    iput p4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->m:I

    .line 31
    iput p4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    .line 32
    new-instance p5, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    invoke-direct {p5, p1, p6, p0}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;-><init>(Ljava/io/FileDescriptor;ILcom/arcsoft/avatar2/recoder/RecordingListener;)V

    iput-object p5, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    .line 33
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p1

    const/16 p5, 0x305a

    .line 34
    invoke-static {p5}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object p5

    const/4 p6, 0x1

    new-array p7, p6, [I

    new-array p6, p6, [I

    const/16 v0, 0x3057

    .line 35
    invoke-static {p1, p5, v0, p7, p4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    const/16 v0, 0x3056

    .line 36
    invoke-static {p1, p5, v0, p6, p4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 37
    aget p1, p7, p4

    iput p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->s:I

    .line 38
    aget p1, p6, p4

    iput p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->t:I

    .line 39
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "MediaManager constructor mFrameWidth = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ,mFrameHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Arc_VideoEncoder"

    invoke-static {p2, p1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZILcom/arcsoft/avatar2/recoder/RecordingListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p7, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->p:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    .line 3
    iput p2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    .line 4
    iput p3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    const/16 p7, 0x5a

    if-eq p7, p4, :cond_0

    const/16 p7, 0x10e

    if-ne p7, p4, :cond_1

    .line 5
    :cond_0
    iget p7, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    xor-int/2addr p7, v0

    iput p7, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    xor-int/2addr v0, p7

    .line 6
    iput v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    xor-int/2addr p7, v0

    .line 7
    iput p7, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    .line 8
    :cond_1
    iput p4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->d:I

    .line 9
    iput-boolean p5, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->e:Z

    const/4 p4, 0x0

    .line 10
    iput p4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->m:I

    .line 11
    iput p4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    .line 12
    new-instance p5, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    invoke-direct {p5, p1, p6, p0}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;-><init>(Ljava/lang/String;ILcom/arcsoft/avatar2/recoder/RecordingListener;)V

    iput-object p5, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    .line 13
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p1

    const/16 p5, 0x305a

    .line 14
    invoke-static {p5}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object p5

    const/4 p6, 0x1

    new-array p7, p6, [I

    new-array p6, p6, [I

    const/16 v0, 0x3057

    .line 15
    invoke-static {p1, p5, v0, p7, p4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    const/16 v0, 0x3056

    .line 16
    invoke-static {p1, p5, v0, p6, p4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 17
    aget p1, p7, p4

    iput p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->s:I

    .line 18
    aget p1, p6, p4

    iput p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->t:I

    .line 19
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "MediaManager constructor mFrameWidth = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ,mFrameHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Arc_VideoEncoder"

    invoke-static {p2, p1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/arcsoft/avatar2/recoder/MediaManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    return p0
.end method

.method private a()V
    .locals 3

    .line 2
    iget v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->m:I

    iget v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init encoder count great than need. need="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,but got="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic b(Lcom/arcsoft/avatar2/recoder/MediaManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    return p0
.end method

.method private b()V
    .locals 8

    .line 2
    iget v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    iget v3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glReadPixels() glError = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Arc_VideoEncoder"

    invoke-static {v2, v1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/arcsoft/avatar2/recoder/MediaManager$SaveThread;

    invoke-direct {v1, p0, v0}, Lcom/arcsoft/avatar2/recoder/MediaManager$SaveThread;-><init>(Lcom/arcsoft/avatar2/recoder/MediaManager;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public drawSurfaceWithTextureId(I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->f:Z

    const-string v1, "Arc_VideoEncoder"

    if-nez v0, :cond_0

    const-string p1, "drawSurfaceWithTextureId()-> MediaManager has not been initialized."

    .line 2
    invoke-static {v1, p1}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-lez p1, :cond_7

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->l:Lcom/arcsoft/avatar2/gl/GLRender;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4
    :try_start_0
    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->lock()V

    .line 5
    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->isIsInited()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->getFrameForProducer()Lcom/arcsoft/avatar2/recoder/FrameItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-boolean v4, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mIsInited:Z

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const-string v4, "drawSurfaceWithTextureId()-> get a null frame item."

    .line 8
    invoke-static {v1, v4}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->unLock()V

    return-void

    :cond_3
    move v1, v3

    :goto_1
    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->unLock()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception v1

    .line 10
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->unLock()V

    move v1, v3

    :goto_2
    if-nez v1, :cond_4

    return-void

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->u:[I

    if-nez v1, :cond_5

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 13
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->u:[I

    const/16 v4, 0xba2

    .line 14
    invoke-static {v4, v1, v3}, Landroid/opengl/GLES30;->glGetIntegerv(I[II)V

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->deleteSync(Lcom/arcsoft/avatar2/recoder/FrameItem;)V

    .line 16
    iget-object v1, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    invoke-virtual {v1, v3, v3}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->bind(ZZ)V

    .line 17
    iget v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    invoke-static {v3, v3, v1, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 18
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->l:Lcom/arcsoft/avatar2/gl/GLRender;

    invoke-virtual {v1, p1}, Lcom/arcsoft/avatar2/gl/GLRender;->renderWithTextureId(I)V

    const p1, 0x9117

    .line 19
    invoke-static {p1, v3}, Landroid/opengl/GLES30;->glFenceSync(II)J

    move-result-wide v4

    .line 20
    iput-wide v4, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->a:J

    .line 21
    iget-object p1, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    invoke-virtual {p1, v3, v3}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->unBind(ZZ)V

    .line 22
    iput-boolean v3, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mIsEmpty:Z

    .line 23
    iget-object p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->u:[I

    aget v0, p1, v3

    aget v1, p1, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget p1, p1, v3

    invoke-static {v0, v1, v2, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 24
    :try_start_2
    iget-object p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->lock()V

    .line 25
    iget-object p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->addFrameForProducer()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 26
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 27
    :goto_3
    iget-object p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->sinalCondition()V

    .line 28
    iget-object p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->unLock()V

    return-void

    .line 29
    :goto_4
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->sinalCondition()V

    .line 30
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->unLock()V

    throw p1

    .line 31
    :goto_5
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->unLock()V

    throw p1

    .line 32
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not call drawSurfaceWithTextureId() in with a null GLRender."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "textureId must >0 , your textureId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMuxerSizeRecorded()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;->getSizeRecordFile()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMuxerTimeElapsed()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;->getTimeElapse()J

    move-result-wide v0

    return-wide v0
.end method

.method public initAudioEncoder()V
    .locals 3

    .line 1
    new-instance v0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;

    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    iget-object v2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p0}, Lcom/arcsoft/avatar2/recoder/AudioEncoder;-><init>(Lcom/arcsoft/avatar2/recoder/MuxerWrapper;Ljava/lang/Object;Lcom/arcsoft/avatar2/recoder/RecordingListener;)V

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->prepare(Z)V

    .line 3
    iget v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    .line 4
    invoke-direct {p0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->a()V

    return-void
.end method

.method public initVideoEncoder(Ljava/lang/String;)V
    .locals 11

    const-string v0, "Arc_VideoEncoder"

    const-string v1, "MediaManager initVideoEncoder in"

    .line 1
    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/arcsoft/avatar2/recoder/VideoEncoder;

    iget-object v3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    iget v4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v5, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    iget-object v6, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const v9, 0x989680

    move-object v2, v1

    move-object v7, p0

    move-object v10, p1

    invoke-direct/range {v2 .. v10}, Lcom/arcsoft/avatar2/recoder/VideoEncoder;-><init>(Lcom/arcsoft/avatar2/recoder/MuxerWrapper;IILjava/lang/Object;Lcom/arcsoft/avatar2/recoder/RecordingListener;Landroid/opengl/EGLContext;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v1, p1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->prepare(Z)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->f:Z

    .line 5
    iget v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    .line 6
    invoke-direct {p0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->a()V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaManager initVideoEncoder out mInitedEncoderCount = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initVideoEncoderWithSharedContext(Landroid/opengl/EGLContext;IZLjava/lang/String;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/arcsoft/avatar2/recoder/VideoEncoder;

    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    iget v2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    move-object v0, v9

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/arcsoft/avatar2/recoder/VideoEncoder;-><init>(Lcom/arcsoft/avatar2/recoder/MuxerWrapper;IILjava/lang/Object;Lcom/arcsoft/avatar2/recoder/RecordingListener;Landroid/opengl/EGLContext;ILjava/lang/String;)V

    iput-object v9, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->k:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v9}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 4
    new-instance p4, Lcom/arcsoft/avatar2/gl/GLRender;

    iget v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    iget v2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->d:I

    iget-boolean v3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->e:Z

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/arcsoft/avatar2/gl/GLRender;-><init>(IIIZ)V

    iput-object p4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->l:Lcom/arcsoft/avatar2/gl/GLRender;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p4, p3, v0}, Lcom/arcsoft/avatar2/gl/GLRender;->initRender(ZF)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->p:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz p3, :cond_1

    const/16 p4, 0x232

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p4, v0}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    .line 8
    :cond_1
    :goto_0
    new-instance p3, Lcom/arcsoft/avatar2/recoder/FrameQueue;

    invoke-direct {p3}, Lcom/arcsoft/avatar2/recoder/FrameQueue;-><init>()V

    iput-object p3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    const/4 p4, 0x2

    .line 9
    iget v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    invoke-virtual {p3, p4, v0, v1, p2}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->init(IIIZ)V

    .line 10
    iget-object p2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    iget-object p3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    invoke-virtual {p2, p3}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->setFrameQueue(Lcom/arcsoft/avatar2/recoder/FrameQueue;)V

    .line 11
    iget p2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    .line 12
    invoke-direct {p0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->a()V

    return-void
.end method

.method public onRecordingListener(ILjava/lang/Object;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordingListener()->in msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Arc_VideoEncoder"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x270

    const/16 v2, 0x230

    const/16 v3, 0x220

    const/16 v4, 0x260

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto :goto_0

    :pswitch_0
    move p1, v0

    goto :goto_0

    :pswitch_1
    move p1, v4

    goto :goto_0

    :pswitch_2
    move p1, v2

    goto :goto_0

    :pswitch_3
    move p1, v3

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->p:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    :cond_0
    const-string p1, "onRecordingListener()->out"

    .line 4
    invoke-static {v1, p1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x221
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x231
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x261
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x271
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public pauseRecording()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->pauseRecording()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->pauseRecording()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public releaseFrameQueue()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->l:Lcom/arcsoft/avatar2/gl/GLRender;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/gl/GLRender;->unInitRender()V

    .line 3
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->l:Lcom/arcsoft/avatar2/gl/GLRender;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->unInit()V

    .line 6
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    :cond_1
    return-void
.end method

.method public resumeRecording()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->resumeRecording()V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->resumeRecording()V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCropFactor(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->setCropFactor(F)V

    :cond_0
    return-void
.end method

.method public setEncoderCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;->setEncoderCount(I)V

    .line 3
    :cond_0
    iput p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->m:I

    return-void
.end method

.method public startRecording()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    const-string v1, "Arc_VideoEncoder"

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->startRecording()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording()-> VideoEncoder is null. maxEncoderCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/CodecLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->startRecording()V

    goto :goto_1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording()-> AudioEncoder is null. maxEncoderCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/CodecLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unit Encoder or Muxer is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopRecording()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->stopRecording()V

    .line 6
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->release(Z)V

    .line 7
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->stopRecording()V

    .line 10
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->release(Z)V

    .line 11
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    .line 12
    :cond_1
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    .line 13
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    .line 14
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->u:[I

    return-void

    :catchall_0
    move-exception v1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
