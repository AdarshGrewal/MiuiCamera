.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field public static height:I

.field public static intBuffer:Ljava/nio/IntBuffer;

.field public static mFrameBuffers:[I

.field public static programTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

.field public static textures:[I

.field public static viewport:[I

.field public static width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->viewport:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 4
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 6
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v2, v1

    int-to-float v2, v2

    const v3, 0x491c4000    # 640000.0f

    div-float/2addr v3, v2

    float-to-double v2, v3

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    int-to-double v4, v1

    mul-double/2addr v4, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v2

    double-to-int v2, v4

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 8
    div-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 10
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmapDegree(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p0, v0

    :goto_0
    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    const/16 v0, 0x5a

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    const/16 v0, 0xb4

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    if-ne p0, v1, :cond_2

    const/16 v0, 0x10e

    :cond_2
    :goto_1
    return v0
.end method

.method public static glReadBitmap(I[F[FII)Landroid/graphics/Bitmap;
    .locals 16

    move/from16 v9, p3

    move/from16 v10, p4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->textures:[I

    const v11, 0x84c0

    const v12, 0x8d40

    const/4 v13, 0x1

    const/16 v14, 0xde1

    const/4 v15, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->mFrameBuffers:[I

    if-nez v0, :cond_1

    :cond_0
    new-array v0, v13, [I

    .line 2
    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->textures:[I

    new-array v1, v13, [I

    .line 3
    sput-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->mFrameBuffers:[I

    .line 4
    invoke-static {v13, v0, v15}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 5
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->mFrameBuffers:[I

    invoke-static {v13, v0, v15}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 6
    invoke-static {v11}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 7
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->textures:[I

    aget v0, v0, v15

    invoke-static {v14, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v1, 0x2601

    .line 8
    invoke-static {v14, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 9
    invoke-static {v14, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 10
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->mFrameBuffers:[I

    aget v0, v0, v15

    invoke-static {v12, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    .line 11
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->textures:[I

    aget v1, v1, v15

    invoke-static {v12, v0, v14, v1, v15}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 12
    :cond_1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->intBuffer:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_2

    sget v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->width:I

    if-ne v0, v9, :cond_2

    sget v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->height:I

    if-eq v0, v10, :cond_3

    :cond_2
    mul-int v0, v9, v10

    .line 13
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->intBuffer:Ljava/nio/IntBuffer;

    .line 14
    sput v9, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->width:I

    .line 15
    sput v10, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->height:I

    .line 16
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->textures:[I

    aget v0, v0, v15

    invoke-static {v14, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move/from16 v3, p3

    move/from16 v4, p4

    .line 17
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 18
    :cond_3
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 19
    invoke-static {v11}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 20
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->textures:[I

    aget v0, v0, v15

    invoke-static {v14, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 21
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->mFrameBuffers:[I

    aget v0, v0, v15

    invoke-static {v12, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v0, 0xba2

    .line 22
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->viewport:[I

    invoke-static {v0, v1, v15}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 23
    invoke-static {v15, v15, v9, v10}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v0, 0x0

    .line 24
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 25
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 26
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->programTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    if-nez v0, :cond_4

    .line 27
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;-><init>()V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->programTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    .line 28
    :cond_4
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->programTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->drawFrame(I[F[F)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    .line 29
    sget-object v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->intBuffer:Ljava/nio/IntBuffer;

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 30
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 31
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 32
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v15, v15, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 34
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 35
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->viewport:[I

    aget v2, v0, v15

    aget v3, v0, v13

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-static {v2, v3, v4, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 36
    invoke-static {v14, v15}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 37
    invoke-static {v12, v15}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-object v1
.end method

.method public static loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->getBitmapDegree(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->compressBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static releaseGL()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->textures:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 3
    sput-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->textures:[I

    .line 4
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 6
    sput-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->mFrameBuffers:[I

    .line 7
    :cond_1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->intBuffer:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 9
    sput-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->intBuffer:Ljava/nio/IntBuffer;

    .line 10
    :cond_2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->programTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->release()V

    .line 12
    sput-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->programTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    :cond_3
    return-void
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    .line 1
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 2
    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    return-object p0
.end method
