.class public abstract Lcom/android/camera/ui/gl/EglSurfaceBase;
.super Ljava/lang/Object;
.source "EglSurfaceBase.java"


# static fields
.field public static final INVALID:I = -0x1


# instance fields
.field public mEGLSurface:Landroid/opengl/EGLSurface;

.field public mEglCore:Lcom/android/camera/ui/gl/EglCore;

.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/gl/EglCore;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mWidth:I

    .line 3
    iput v0, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mHeight:I

    .line 4
    iput-object p1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    return-void
.end method


# virtual methods
.method public getEGLSurface()Landroid/opengl/EGLSurface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    return-object v0
.end method

.method public getEglCore()Lcom/android/camera/ui/gl/EglCore;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    return-object v0
.end method

.method public getHeight()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3056

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/gl/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3057

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/gl/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mWidth:I

    return v0
.end method

.method public makeCurrent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    iget-object v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/gl/EglCore;->isCurrent(Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    iget-object v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/gl/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public release()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/gl/EglCore;->destroySurface(Landroid/opengl/EGLSurface;)Z

    move-result v0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    .line 4
    iput-object v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mWidth:I

    .line 6
    iput v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mHeight:I

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPresentationTime(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    iget-object v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/camera/ui/gl/EglCore;->setPresentationTime(Landroid/opengl/EGLSurface;J)V

    return-void
.end method

.method public swapBuffers()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    iget-object v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/gl/EglCore;->swapBuffers(Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EglSurfaceInfo: eglCore ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; eglSurface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; height ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
