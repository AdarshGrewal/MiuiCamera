.class public Lcom/faceunity/pta_helper/gif/GifHardEncoder;
.super Ljava/lang/Object;
.source "GifHardEncoder.java"


# instance fields
.field public a:J

.field public b:I

.field public c:[I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Lcom/faceunity/pta_helper/a/b;

.field public k:I

.field public l:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "FUP2AHelper"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->b:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->l:[I

    return-void
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeEncodeFrame(JJI)Z
.end method

.method private native nativeGetTexture(J)I
.end method

.method private native nativeInit(IILjava/lang/String;III)J
.end method

.method private native nativeReadTextureToBytes(J[BZ)Z
.end method

.method private native nativeSetDither(JZ)V
.end method

.method private native nativeSetThreadCount(JI)V
.end method

.method private native nativeTextureToBytes(J)J
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    invoke-direct {p0, v0, v1}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->nativeClose(J)V

    .line 2
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->c:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    :cond_0
    const-wide/16 v2, 0x0

    .line 4
    iput-wide v2, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    .line 5
    iput v1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->k:I

    .line 6
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->j:Lcom/faceunity/pta_helper/a/b;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/faceunity/pta_helper/a/a/e;->c()V

    :cond_1
    return-void
.end method

.method public encodeFrame(JI)Z
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    const-wide/16 v3, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->nativeEncodeFrame(JJI)Z

    const/4 p1, 0x1

    return p1
.end method

.method public init(IIIIIILjava/lang/String;Lcom/faceunity/pta_helper/gif/EncodingType;I)V
    .locals 10

    move-object v7, p0

    .line 4
    iget-wide v0, v7, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    const-wide/16 v8, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->close()V

    :cond_0
    move v1, p1

    .line 6
    iput v1, v7, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->d:I

    move v2, p2

    .line 7
    iput v2, v7, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->e:I

    move v0, p3

    .line 8
    iput v0, v7, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->f:I

    move v0, p4

    .line 9
    iput v0, v7, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->g:I

    move v0, p5

    .line 10
    iput v0, v7, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->h:I

    move/from16 v0, p6

    .line 11
    iput v0, v7, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->i:I

    move-object/from16 v0, p8

    .line 12
    iget v4, v0, Lcom/faceunity/pta_helper/gif/EncodingType;->a:I

    iget v5, v7, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->b:I

    move-object v0, p0

    move v1, p1

    move-object/from16 v3, p7

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->nativeInit(IILjava/lang/String;III)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    cmp-long v0, v8, v0

    if-eqz v0, :cond_1

    return-void

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FileNotFoundException or Authentication failure"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(IILjava/lang/String;)V
    .locals 10

    .line 1
    sget-object v8, Lcom/faceunity/pta_helper/gif/EncodingType;->ENCODING_TYPE_NORMAL_LOW_MEMORY:Lcom/faceunity/pta_helper/gif/EncodingType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v9, 0xa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v9}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->init(IIIIIILjava/lang/String;Lcom/faceunity/pta_helper/gif/EncodingType;I)V

    return-void
.end method

.method public init(IILjava/lang/String;Lcom/faceunity/pta_helper/gif/EncodingType;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v9, 0xa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 2
    invoke-virtual/range {v0 .. v9}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->init(IIIIIILjava/lang/String;Lcom/faceunity/pta_helper/gif/EncodingType;I)V

    return-void
.end method

.method public init(IILjava/lang/String;Lcom/faceunity/pta_helper/gif/EncodingType;I)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    .line 3
    invoke-virtual/range {v0 .. v9}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->init(IIIIIILjava/lang/String;Lcom/faceunity/pta_helper/gif/EncodingType;I)V

    return-void
.end method

.method public readBuffer(I[B[F[F)[B
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->j:Lcom/faceunity/pta_helper/a/b;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/faceunity/pta_helper/a/b;

    invoke-direct {v0}, Lcom/faceunity/pta_helper/a/b;-><init>()V

    iput-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->j:Lcom/faceunity/pta_helper/a/b;

    .line 4
    :cond_1
    iget v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->k:I

    const/4 v1, 0x1

    const v2, 0x8d40

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 5
    iget-wide v4, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    invoke-direct {p0, v4, v5}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->nativeGetTexture(J)I

    move-result v0

    new-array v4, v1, [I

    .line 6
    invoke-static {v1, v4, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 7
    aget v5, v4, v3

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v5, 0x8ce0

    const/16 v6, 0xde1

    .line 8
    invoke-static {v2, v5, v6, v0, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 9
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 10
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 11
    aget v0, v4, v3

    iput v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->k:I

    .line 12
    :cond_2
    iget v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->k:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v4, 0xba2

    .line 13
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 14
    iget v4, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->d:I

    iget v5, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->e:I

    invoke-static {v3, v3, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 15
    invoke-static {v5, v4, v4, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v4, 0x4000

    .line 16
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 17
    iget-object v4, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->j:Lcom/faceunity/pta_helper/a/b;

    invoke-virtual {v4, p1, p3, p4}, Lcom/faceunity/pta_helper/a/b;->a(I[F[F)V

    .line 18
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 19
    iget-wide p3, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    invoke-direct {p0, p3, p4, p2, v3}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->nativeReadTextureToBytes(J[BZ)Z

    .line 20
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 21
    aget p1, v0, v3

    aget p3, v0, v1

    const/4 p4, 0x2

    aget p4, v0, p4

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-static {p1, p3, p4, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-object p2
.end method

.method public readBufferV2([B)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->nativeReadTextureToBytes(J[BZ)Z

    return-void
.end method

.method public setDither(Z)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->nativeSetDither(JZ)V

    return-void
.end method

.method public setThreadCount(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->b:I

    .line 2
    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->nativeSetThreadCount(JI)V

    return-void
.end method

.method public unUseFBO()V
    .locals 5

    const/4 v0, 0x0

    const v1, 0x8d40

    .line 1
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 2
    iget-object v1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->l:[I

    aget v0, v1, v0

    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v3, 0x2

    aget v3, v1, v3

    const/4 v4, 0x3

    aget v1, v1, v4

    invoke-static {v0, v2, v3, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public updateTexture(I[F[F)J
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    return-wide v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->j:Lcom/faceunity/pta_helper/a/b;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/faceunity/pta_helper/a/b;

    invoke-direct {v0}, Lcom/faceunity/pta_helper/a/b;-><init>()V

    iput-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->j:Lcom/faceunity/pta_helper/a/b;

    .line 4
    :cond_1
    iget v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->k:I

    const/4 v1, 0x1

    const v2, 0x8d40

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 5
    iget-wide v4, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    invoke-direct {p0, v4, v5}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->nativeGetTexture(J)I

    move-result v0

    new-array v4, v1, [I

    .line 6
    iput-object v4, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->c:[I

    .line 7
    invoke-static {v1, v4, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 8
    iget-object v4, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->c:[I

    aget v4, v4, v3

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v4, 0x8ce0

    const/16 v5, 0xde1

    .line 9
    invoke-static {v2, v4, v5, v0, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 10
    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 11
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 12
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->c:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->k:I

    .line 13
    :cond_2
    iget v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->k:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v4, 0xba2

    .line 14
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 15
    iget v4, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->f:I

    iget v5, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->g:I

    iget v6, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->h:I

    iget v7, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->i:I

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 16
    invoke-static {v5, v5, v5, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v4, 0x4000

    .line 17
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 18
    iget-object v4, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->j:Lcom/faceunity/pta_helper/a/b;

    invoke-virtual {v4, p1, p2, p3}, Lcom/faceunity/pta_helper/a/b;->a(I[F[F)V

    .line 19
    iget-wide p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    invoke-direct {p0, p1, p2}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->nativeTextureToBytes(J)J

    move-result-wide p1

    .line 20
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 21
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 22
    aget p3, v0, v3

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-static {p3, v1, v2, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-wide p1
.end method

.method public useFBO()Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->j:Lcom/faceunity/pta_helper/a/b;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/faceunity/pta_helper/a/b;

    invoke-direct {v0}, Lcom/faceunity/pta_helper/a/b;-><init>()V

    iput-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->j:Lcom/faceunity/pta_helper/a/b;

    .line 4
    :cond_1
    iget v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->k:I

    const/4 v2, 0x1

    const v3, 0x8d40

    if-nez v0, :cond_2

    .line 5
    iget-wide v4, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->a:J

    invoke-direct {p0, v4, v5}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->nativeGetTexture(J)I

    move-result v0

    new-array v4, v2, [I

    .line 6
    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 7
    aget v5, v4, v1

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v5, 0x8ce0

    const/16 v6, 0xde1

    .line 8
    invoke-static {v3, v5, v6, v0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 9
    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 10
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 11
    aget v0, v4, v1

    iput v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->k:I

    .line 12
    :cond_2
    iget v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->k:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v0, 0xba2

    .line 13
    iget-object v3, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->l:[I

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 14
    iget v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->d:I

    iget v3, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->e:I

    invoke-static {v1, v1, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    invoke-static {v1, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 16
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    return v2
.end method
