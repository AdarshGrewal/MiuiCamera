.class public Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;
.super Ljava/lang/Object;
.source "EglSurfaceBase.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EglSurfaceBase"


# instance fields
.field public mEGLSurface:Landroid/opengl/EGLSurface;

.field public mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

.field public mHeight:I

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/camera/liveshot/gles/EglCore;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mWidth:I

    .line 4
    iput v0, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mHeight:I

    .line 5
    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    return-void
.end method


# virtual methods
.method public createWindowSurface(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/liveshot/gles/EglCore;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "surface already created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHeight()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mHeight:I

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3056

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/camera/liveshot/gles/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getWidth()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mWidth:I

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3057

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/camera/liveshot/gles/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public makeCurrent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/liveshot/gles/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    const/4 v0, 0x1

    return v0
.end method

.method public releaseEglSurface()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/liveshot/gles/EglCore;->releaseSurface(Landroid/opengl/EGLSurface;)V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mHeight:I

    iput v0, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mWidth:I

    return-void
.end method

.method public swapBuffers()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEglCore:Lcom/xiaomi/camera/liveshot/gles/EglCore;

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/liveshot/gles/EglCore;->swapBuffers(Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Lcom/xiaomi/camera/liveshot/gles/EglSurfaceBase;->TAG:Ljava/lang/String;

    const-string v2, "WARNING: swapBuffers() failed"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method
