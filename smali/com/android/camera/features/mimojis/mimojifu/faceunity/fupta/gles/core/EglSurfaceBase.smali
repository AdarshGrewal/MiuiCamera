.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;
.super Ljava/lang/Object;
.source "EglSurfaceBase.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mEGLSurface:Landroid/opengl/EGLSurface;

.field public mEglCore:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;

.field public mHeight:I

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mWidth:I

    .line 4
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mHeight:I

    .line 5
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEglCore:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;

    return-void
.end method


# virtual methods
.method public createOffscreenSurface(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEglCore:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 3
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mWidth:I

    .line 4
    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mHeight:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "surface already created"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createWindowSurface(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEglCore:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "surface already created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHeight()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mHeight:I

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEglCore:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3056

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getWidth()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mWidth:I

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEglCore:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3057

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public makeCurrent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEglCore:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public makeCurrentReadFrom(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEglCore:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object p1, p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public releaseEglSurface()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEglCore:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;->releaseSurface(Landroid/opengl/EGLSurface;)V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mHeight:I

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mWidth:I

    return-void
.end method

.method public saveFrame(Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEglCore:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;->isCurrent(Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->getWidth()I

    move-result v7

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->getHeight()I

    move-result v8

    mul-int v0, v7, v8

    mul-int/lit8 v0, v0, 0x4

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 6
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v2, v7

    move v3, v8

    move-object v6, v9

    .line 7
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const-string v0, "glReadPixels"

    .line 8
    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 10
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 13
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 16
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " frame as \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    :cond_0
    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Expected EGL context/surface is not current"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPresentationTime(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEglCore:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;->setPresentationTime(Landroid/opengl/EGLSurface;J)V

    return-void
.end method

.method public swapBuffers()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEglCore:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;->swapBuffers(Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->TAG:Ljava/lang/String;

    const-string v2, "WARNING: swapBuffers() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method
