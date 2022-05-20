.class public Lcom/android/camera/effect/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FrameBuffer"


# instance fields
.field public mFrameBufferID:[I

.field public mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field public mTexture:Lcom/android/gallery3d/ui/RawTexture;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;III)V
    .locals 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 28
    iput-object v1, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    .line 29
    new-instance v1, Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {v1, p2, p3, v0}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v1, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 30
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/RawTexture;->prepare(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 31
    iget-object v1, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v1

    .line 32
    invoke-static {v1}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    sget-object v2, Lcom/android/camera/effect/FrameBuffer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "texture is not available, id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 35
    iget-object v2, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    aget v2, v2, v3

    const v4, 0x8d40

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v2, 0x8ce0

    const/16 v5, 0xde1

    .line 36
    invoke-static {v4, v2, v5, v1, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 37
    sget-object v2, Lcom/android/camera/effect/FrameBuffer;->TAG:Ljava/lang/String;

    const-string v5, "frame buffer init"

    invoke-static {v2, v5}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkFrameBufferStatusAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {v4, p4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 39
    iput-object p1, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    .line 40
    sget-object p1, Lcom/android/camera/effect/FrameBuffer;->TAG:Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    const/4 p2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, p2

    const/4 p2, 0x4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v2, p2

    const-string p2, "init@2: fbo=%d tex=%d %d*%d thread=%d"

    invoke-static {p4, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/framework/gles/RGBTexture;I)V
    .locals 6

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 15
    iput-object v1, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    .line 16
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    invoke-virtual {p2, p1}, Lcom/android/camera/effect/framework/gles/RGBTexture;->prepare(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 19
    iget-object v1, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    aget v1, v1, v2

    const v3, 0x8d40

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v1, 0x8ce0

    const/16 v4, 0xde1

    .line 20
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v5

    .line 21
    invoke-static {v3, v1, v4, v5, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 22
    sget-object v1, Lcom/android/camera/effect/FrameBuffer;->TAG:Ljava/lang/String;

    const-string v4, "frame buffer init"

    invoke-static {v1, v4}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkFrameBufferStatusAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v3, p3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 24
    iput-object p2, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 25
    iput-object p1, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    .line 26
    sget-object p1, Lcom/android/camera/effect/FrameBuffer;->TAG:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v2

    iget-object v1, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    const-string v0, "init@1: fbo=%d tex=%d"

    invoke-static {p2, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    .line 3
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Lcom/android/gallery3d/ui/RawTexture;->prepare(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    aget v1, v1, v2

    const v3, 0x8d40

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v1, 0x8ce0

    const/16 v4, 0xde1

    .line 7
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v5

    .line 8
    invoke-static {v3, v1, v4, v5, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 9
    sget-object v1, Lcom/android/camera/effect/FrameBuffer;->TAG:Ljava/lang/String;

    const-string v4, "frame buffer init"

    invoke-static {v1, v4}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkFrameBufferStatusAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {v3, p3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 11
    iput-object p2, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 12
    iput-object p1, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    .line 13
    sget-object p1, Lcom/android/camera/effect/FrameBuffer;->TAG:Ljava/lang/String;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const/4 p2, 0x4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, p2

    const-string p2, "init@1: fbo=%d tex=%d %d*%d thread=%d"

    invoke-static {p3, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-void
.end method

.method public finalize()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/effect/FrameBuffer;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "delete fbo thread=%d id=%d"

    .line 4
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->deleteFrameBuffer(I)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/RawTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/effect/FrameBuffer;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "delete framebuffer thread=%d id=%d"

    .line 4
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->deleteFrameBuffer(I)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    :cond_1
    return-void
.end method
