.class public Lcom/arcsoft/avatar2/gl/FBOUtil;
.super Ljava/lang/Object;
.source "FBOUtil.java"


# static fields
.field public static final f:Ljava/lang/String; = "FBOUtil"

.field public static final j:Ljava/lang/String; = "/sdcard/Pictures/readfbo/"


# instance fields
.field public a:[I

.field public b:[I

.field public c:[I

.field public d:[I

.field public e:Z

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->a:[I

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->b:[I

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->c:[I

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->d:[I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->i:I

    return-void
.end method


# virtual methods
.method public bindFramebuff()V
    .locals 3

    const/16 v0, 0xb71

    .line 1
    invoke-static {v0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->e:Z

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->a:[I

    const/4 v1, 0x0

    const v2, 0x8ca6

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 4
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->b:[I

    aget v0, v0, v1

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v0, 0x4100

    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->h:I

    return v0
.end method

.method public getTextureId()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->g:I

    return v0
.end method

.method public initFramebuff(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    .line 1
    iput v10, v0, Lcom/arcsoft/avatar2/gl/FBOUtil;->g:I

    .line 2
    iput v11, v0, Lcom/arcsoft/avatar2/gl/FBOUtil;->h:I

    .line 3
    iget-object v1, v0, Lcom/arcsoft/avatar2/gl/FBOUtil;->a:[I

    const/4 v12, 0x0

    aput v12, v1, v12

    .line 4
    iget-object v2, v0, Lcom/arcsoft/avatar2/gl/FBOUtil;->b:[I

    aput v12, v2, v12

    .line 5
    iget-object v2, v0, Lcom/arcsoft/avatar2/gl/FBOUtil;->c:[I

    aput v12, v2, v12

    const v2, 0x8ca6

    .line 6
    invoke-static {v2, v1, v12}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 7
    iget-object v1, v0, Lcom/arcsoft/avatar2/gl/FBOUtil;->b:[I

    const/4 v13, 0x1

    invoke-static {v13, v1, v12}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 8
    iget-object v1, v0, Lcom/arcsoft/avatar2/gl/FBOUtil;->b:[I

    aget v1, v1, v12

    const v14, 0x8d40

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v1, 0xcf5

    .line 9
    invoke-static {v1, v13}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 10
    iget-object v1, v0, Lcom/arcsoft/avatar2/gl/FBOUtil;->c:[I

    invoke-static {v13, v1, v12}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 11
    iget-object v1, v0, Lcom/arcsoft/avatar2/gl/FBOUtil;->c:[I

    aget v1, v1, v12

    const/16 v15, 0xde1

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2600

    const/16 v2, 0x2801

    .line 12
    invoke-static {v15, v2, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    .line 13
    invoke-static {v15, v2, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v1, 0x812f

    const/16 v2, 0x2802

    .line 14
    invoke-static {v15, v2, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 15
    invoke-static {v15, v2, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    .line 16
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 17
    iget-object v1, v0, Lcom/arcsoft/avatar2/gl/FBOUtil;->c:[I

    aget v1, v1, v12

    const v2, 0x8ce0

    invoke-static {v14, v2, v15, v1, v12}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 18
    iget-object v1, v0, Lcom/arcsoft/avatar2/gl/FBOUtil;->d:[I

    invoke-static {v13, v1, v12}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 19
    iget-object v1, v0, Lcom/arcsoft/avatar2/gl/FBOUtil;->d:[I

    aget v1, v1, v12

    const v2, 0x8d41

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const v1, 0x81a6

    .line 20
    invoke-static {v2, v1, v10, v11}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 21
    iget-object v1, v0, Lcom/arcsoft/avatar2/gl/FBOUtil;->d:[I

    aget v1, v1, v12

    const v3, 0x8d00

    invoke-static {v14, v3, v2, v1}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 22
    invoke-static {v14}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    .line 23
    iget-object v1, v0, Lcom/arcsoft/avatar2/gl/FBOUtil;->a:[I

    aget v1, v1, v12

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 24
    invoke-static {v15, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public unBindFramebuff()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 2
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->e:Z

    const/16 v1, 0xb71

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    :goto_0
    const v0, 0x8d40

    .line 5
    iget-object v1, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public uninitFramebuff()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->c:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 2
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->c:[I

    aput v2, v0, v2

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->b:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 4
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->b:[I

    aput v2, v0, v2

    .line 5
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->d:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 6
    iget-object v0, p0, Lcom/arcsoft/avatar2/gl/FBOUtil;->d:[I

    aput v2, v0, v2

    return-void
.end method
