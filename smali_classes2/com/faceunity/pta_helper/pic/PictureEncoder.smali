.class public abstract Lcom/faceunity/pta_helper/pic/PictureEncoder;
.super Ljava/lang/Object;
.source "PictureEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;
    }
.end annotation


# static fields
.field public static a:[I

.field public static b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1
    sput-object v1, Lcom/faceunity/pta_helper/pic/PictureEncoder;->a:[I

    new-array v0, v0, [I

    .line 2
    sput-object v0, Lcom/faceunity/pta_helper/pic/PictureEncoder;->b:[I

    const-string v0, "FUP2AHelper"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native authCheck()I
.end method

.method public static encodeYUV420SP([B[III)V
    .locals 15

    move/from16 v0, p2

    move/from16 v1, p3

    mul-int v2, v0, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v1, :cond_8

    move v7, v3

    :goto_1
    if-ge v7, v0, :cond_7

    .line 1
    aget v8, p1, v6

    shr-int/lit8 v8, v8, 0x10

    const/16 v9, 0xff

    and-int/2addr v8, v9

    .line 2
    aget v10, p1, v6

    shr-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v9

    .line 3
    aget v11, p1, v6

    and-int/2addr v11, v9

    mul-int/lit8 v12, v8, 0x42

    mul-int/lit16 v13, v10, 0x81

    add-int/2addr v12, v13

    mul-int/lit8 v13, v11, 0x19

    add-int/2addr v12, v13

    add-int/lit16 v12, v12, 0x80

    shr-int/lit8 v12, v12, 0x8

    add-int/lit8 v12, v12, 0x10

    mul-int/lit8 v13, v8, -0x26

    mul-int/lit8 v14, v10, 0x4a

    sub-int/2addr v13, v14

    mul-int/lit8 v14, v11, 0x70

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x8

    add-int/lit16 v13, v13, 0x80

    mul-int/lit8 v8, v8, 0x70

    mul-int/lit8 v10, v10, 0x5e

    sub-int/2addr v8, v10

    mul-int/lit8 v11, v11, 0x12

    sub-int/2addr v8, v11

    add-int/lit16 v8, v8, 0x80

    shr-int/lit8 v8, v8, 0x8

    add-int/lit16 v8, v8, 0x80

    add-int/lit8 v10, v5, 0x1

    if-gez v12, :cond_0

    move v12, v3

    goto :goto_2

    :cond_0
    if-le v12, v9, :cond_1

    move v12, v9

    :cond_1
    :goto_2
    int-to-byte v11, v12

    .line 4
    aput-byte v11, p0, v5

    .line 5
    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_6

    rem-int/lit8 v5, v6, 0x2

    if-nez v5, :cond_6

    add-int/lit8 v5, v2, 0x1

    if-gez v8, :cond_2

    move v8, v3

    goto :goto_3

    :cond_2
    if-le v8, v9, :cond_3

    move v8, v9

    :cond_3
    :goto_3
    int-to-byte v8, v8

    .line 6
    aput-byte v8, p0, v2

    add-int/lit8 v2, v5, 0x1

    if-gez v13, :cond_4

    move v9, v3

    goto :goto_4

    :cond_4
    if-le v13, v9, :cond_5

    goto :goto_4

    :cond_5
    move v9, v13

    :goto_4
    int-to-byte v8, v9

    .line 7
    aput-byte v8, p0, v5

    :cond_6
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    move v5, v10

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static encoderPicture(I[F[FIILcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;)V
    .locals 13

    move/from16 v7, p3

    move/from16 v8, p4

    .line 1
    invoke-static {}, Lcom/faceunity/pta_helper/pic/PictureEncoder;->authCheck()I

    move-result v0

    if-eqz v0, :cond_0

    mul-int v0, v7, v8

    .line 2
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v9

    .line 3
    sget-object v0, Lcom/faceunity/pta_helper/pic/PictureEncoder;->b:[I

    sget-object v1, Lcom/faceunity/pta_helper/pic/PictureEncoder;->a:[I

    invoke-static {v0, v1, v7, v8}, Lcom/faceunity/pta_helper/a/a/d;->a([I[III)V

    .line 4
    sget-object v0, Lcom/faceunity/pta_helper/pic/PictureEncoder;->a:[I

    const/4 v10, 0x0

    aget v0, v0, v10

    const v11, 0x8d40

    invoke-static {v11, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v0, 0x4

    new-array v12, v0, [I

    const/16 v0, 0xba2

    .line 5
    invoke-static {v0, v12, v10}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 6
    invoke-static {v10, v10, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 7
    new-instance v0, Lcom/faceunity/pta_helper/a/b;

    invoke-direct {v0}, Lcom/faceunity/pta_helper/a/b;-><init>()V

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/faceunity/pta_helper/a/b;->a(I[F[F)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move/from16 v2, p3

    move/from16 v3, p4

    move-object v6, v9

    .line 8
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 9
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 10
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/faceunity/pta_helper/pic/a;

    move-object/from16 v2, p5

    invoke-direct {v1, v7, v8, v9, v2}, Lcom/faceunity/pta_helper/pic/a;-><init>(IILjava/nio/IntBuffer;Lcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    aget v0, v12, v10

    const/4 v1, 0x1

    aget v2, v12, v1

    const/4 v3, 0x2

    aget v3, v12, v3

    const/4 v4, 0x3

    aget v4, v12, v4

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v0, 0xde1

    .line 13
    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 14
    invoke-static {v11, v10}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 15
    sget-object v0, Lcom/faceunity/pta_helper/pic/PictureEncoder;->b:[I

    invoke-static {v1, v0, v10}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 16
    sget-object v0, Lcom/faceunity/pta_helper/pic/PictureEncoder;->a:[I

    invoke-static {v1, v0, v10}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Authentication failure"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNV21(IILandroid/graphics/Bitmap;)[B
    .locals 10

    mul-int v0, p0, p1

    .line 1
    new-array v9, v0, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, v9

    move v4, p0

    move v7, p0

    move v8, p1

    .line 2
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit8 v0, v0, 0x3

    .line 3
    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 4
    invoke-static {v0, v9, p0, p1}, Lcom/faceunity/pta_helper/pic/PictureEncoder;->encodeYUV420SP([B[III)V

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public static glReadBitmap(I[F[FIILcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;Z)V
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v12, p3

    move/from16 v13, p4

    const/4 v14, 0x1

    new-array v15, v14, [I

    const/4 v11, 0x0

    .line 1
    invoke-static {v14, v15, v11}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2
    aget v3, v15, v11

    const/16 v10, 0xde1

    invoke-static {v10, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v16, 0x1401

    const/16 v17, 0x0

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v10, v16

    move-object/from16 v11, v17

    .line 3
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    new-array v7, v14, [I

    const/4 v8, 0x0

    .line 4
    invoke-static {v14, v7, v8}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const v3, 0x84c0

    .line 5
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 6
    aget v3, v15, v8

    const/16 v9, 0xde1

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 7
    aget v3, v7, v8

    const v10, 0x8d40

    invoke-static {v10, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 8
    aget v3, v15, v8

    const v4, 0x8ce0

    invoke-static {v10, v4, v9, v3, v8}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 v3, 0x4

    new-array v11, v3, [I

    const/16 v3, 0xba2

    .line 9
    invoke-static {v3, v11, v8}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 10
    invoke-static {v8, v8, v12, v13}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v3, 0x0

    .line 11
    invoke-static {v3, v3, v3, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v3, 0x4000

    .line 12
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    if-eqz p6, :cond_0

    .line 13
    new-instance v3, Lcom/faceunity/pta_helper/a/c;

    invoke-direct {v3}, Lcom/faceunity/pta_helper/a/c;-><init>()V

    invoke-virtual {v3, v0, v1, v2}, Lcom/faceunity/pta_helper/a/c;->a(I[F[F)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance v3, Lcom/faceunity/pta_helper/a/b;

    invoke-direct {v3}, Lcom/faceunity/pta_helper/a/b;-><init>()V

    invoke-virtual {v3, v0, v1, v2}, Lcom/faceunity/pta_helper/a/b;->a(I[F[F)V

    :goto_0
    mul-int v0, v12, v13

    const/16 v16, 0x2

    shl-int/lit8 v0, v0, 0x2

    .line 15
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 16
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 17
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 p0, v6

    .line 18
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const-string v0, "glReadPixels"

    .line 19
    invoke-static {v0}, Lcom/faceunity/pta_helper/a/a/d;->a(Ljava/lang/String;)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 21
    aget v0, v11, v8

    aget v1, v11, v14

    aget v2, v11, v16

    const/4 v3, 0x3

    aget v3, v11, v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 22
    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 23
    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 24
    invoke-static {v14, v15, v8}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 25
    invoke-static {v14, v7, v8}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 26
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/faceunity/pta_helper/pic/b;

    move-object/from16 v3, p0

    move-object/from16 v2, p5

    invoke-direct {v1, v12, v13, v3, v2}, Lcom/faceunity/pta_helper/pic/b;-><init>(IILjava/nio/ByteBuffer;Lcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 27
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
