.class public Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;
.super Ljava/lang/Object;
.source "HDR10ThumbnailUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HDR10ThumbnailUtil"

.field public static mBitmap:Landroid/graphics/Bitmap;

.field public static mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

.field public static mLutRender:Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;

.field public static mRenderSurface:Lcom/android/camera/effect/framework/gles/EglSurfaceBase;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHdr10Bitmap(Landroid/opengl/EGLContext;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    sput-object p1, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->mBitmap:Landroid/graphics/Bitmap;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    new-instance p1, Lcom/android/camera/effect/framework/gles/EglCore;

    const/4 v2, 0x2

    invoke-direct {p1, p0, v2}, Lcom/android/camera/effect/framework/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    sput-object p1, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

    .line 4
    new-instance p0, Lcom/android/camera/effect/framework/gles/PbufferSurface;

    sget-object v2, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Lcom/android/camera/effect/framework/gles/PbufferSurface;-><init>(Lcom/android/camera/effect/framework/gles/EglCore;II)V

    sput-object p0, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->mRenderSurface:Lcom/android/camera/effect/framework/gles/EglSurfaceBase;

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    .line 6
    new-instance p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;

    invoke-direct {p0}, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;-><init>()V

    sput-object p0, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->mLutRender:Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 8
    sget-object v2, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHdr10Bitmap initGL cost "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, p0, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget-object v2, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v2, v4, v3}, Lcom/android/camera/storage/HDR10Thumbnail/gles/OpenGLUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v2

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 11
    sget-object v6, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getHdr10Bitmap upload to GPU cost "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long p0, v4, p0

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lcom/android/camera/storage/HDR10Thumbnail/gles/OpenGLUtils;->loadTexture1d()I

    move-result p0

    .line 13
    sget-object p1, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->mLutRender:Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;

    invoke-virtual {p1, v2, p0}, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->draw(II)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 15
    sget-object v6, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getHdr10Bitmap render cost "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, p0, v4

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-object v4, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget-object v5, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v6, v4, v5}, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->getPixelsFromBuffer(IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 18
    sget-object v5, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getHdr10Bitmap read gpu out cost "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long p0, v7, p0

    invoke-virtual {v9, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v3, [I

    aput v2, p0, v6

    .line 19
    invoke-static {v3, p0, v6}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 20
    sget-object p0, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->mRenderSurface:Lcom/android/camera/effect/framework/gles/EglSurfaceBase;

    invoke-virtual {p0}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    .line 21
    sget-object p0, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->mRenderSurface:Lcom/android/camera/effect/framework/gles/EglSurfaceBase;

    invoke-virtual {p0}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->releaseEglSurface()V

    .line 22
    sget-object p0, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

    invoke-virtual {p0}, Lcom/android/camera/effect/framework/gles/EglCore;->release()V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 24
    sget-object v2, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHdr10Bitmap release gl cost "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, p0, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object v2, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHdr10Bitmap total cost "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v0

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static getPixelsFromBuffer(IIII)Landroid/graphics/Bitmap;
    .locals 10

    add-int v0, p1, p3

    mul-int/2addr v0, p2

    .line 1
    new-array v0, v0, [I

    mul-int v1, p2, p3

    .line 2
    new-array v1, v1, [I

    .line 3
    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v8

    const/4 v9, 0x0

    .line 4
    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 5
    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move p0, v9

    move p1, p0

    :goto_0
    if-ge p0, p3, :cond_1

    move v2, v9

    :goto_1
    if-ge v2, p2, :cond_0

    mul-int v3, p0, p2

    add-int/2addr v3, v2

    .line 6
    aget v3, v0, v3

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v3, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    const v6, -0xff0100

    and-int/2addr v3, v6

    or-int/2addr v3, v5

    or-int/2addr v3, v4

    sub-int v4, p3, p1

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    .line 7
    aput v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
