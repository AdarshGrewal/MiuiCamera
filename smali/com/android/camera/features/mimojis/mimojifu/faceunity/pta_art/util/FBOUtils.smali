.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;
.super Ljava/lang/Object;
.source "FBOUtils.java"


# instance fields
.field public fboHeight:I

.field public fboId:[I

.field public fboTex:[I

.field public fboWidth:I

.field public mFboId:[I

.field public mMimojiRender:Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

.field public mOriginViewPort:[I

.field public num:I

.field public programTextureOES:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

.field public renderBufferId:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mOriginViewPort:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mFboId:[I

    .line 4
    new-instance v1, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    .line 5
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    return-void
.end method

.method private createFBO(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    .line 1
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboWidth:I

    if-ne v1, v10, :cond_0

    iget v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboHeight:I

    if-eq v1, v11, :cond_1

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->deleteFBO()V

    .line 3
    :cond_1
    iput v10, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboWidth:I

    .line 4
    iput v11, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboHeight:I

    .line 5
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    if-nez v1, :cond_2

    .line 6
    iget v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    new-array v2, v1, [I

    iput-object v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    .line 7
    new-array v3, v1, [I

    iput-object v3, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    .line 8
    new-array v3, v1, [I

    iput-object v3, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    const/4 v12, 0x0

    .line 9
    invoke-static {v1, v2, v12}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 10
    iget v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    invoke-static {v1, v2, v12}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 11
    iget v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    invoke-static {v1, v2, v12}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    move v13, v12

    .line 12
    :goto_0
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    array-length v2, v1

    if-ge v13, v2, :cond_2

    .line 13
    aget v1, v1, v13

    const v14, 0x8d40

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 14
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    aget v1, v1, v13

    const/16 v15, 0xde1

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    .line 15
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v1, 0x2802

    const v2, 0x812f

    .line 16
    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 17
    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    .line 18
    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2801

    .line 19
    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 20
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    aget v1, v1, v13

    const v2, 0x8d41

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const v1, 0x81a5

    .line 21
    invoke-static {v2, v1, v10, v11}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    const v1, 0x8ce0

    .line 22
    iget-object v3, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    aget v3, v3, v13

    invoke-static {v14, v1, v15, v3, v12}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const v1, 0x8d00

    .line 23
    iget-object v3, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    aget v3, v3, v13

    invoke-static {v14, v1, v2, v3}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 24
    invoke-static {v15, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 25
    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 26
    invoke-static {v14, v12}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public deleteFBO()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 3
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 4
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    .line 6
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    .line 7
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    :cond_1
    :goto_0
    return-void
.end method

.method public drawFBO(III[F[F)I
    .locals 3

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->createFBO(II)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mFboId:[I

    const/4 v1, 0x0

    const v2, 0x8ca6

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mOriginViewPort:[I

    const/16 v2, 0xba2

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 5
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 6
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->programTextureOES:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    invoke-direct {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;-><init>()V

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->programTextureOES:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->programTextureOES:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    invoke-virtual {p2, p1, p4, p5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;->drawFrame(I[F[F)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mFboId:[I

    aget p1, p1, v1

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mOriginViewPort:[I

    aget p2, p1, v1

    const/4 p3, 0x1

    aget p3, p1, p3

    const/4 p4, 0x2

    aget p4, p1, p4

    const/4 p5, 0x3

    aget p1, p1, p5

    invoke-static {p2, p3, p4, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    aget p1, p1, v1

    return p1
.end method

.method public drawFBO(Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;)I
    .locals 5

    .line 12
    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewWidth:I

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->createFBO(II)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mFboId:[I

    const/4 v1, 0x0

    const v2, 0x8ca6

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mOriginViewPort:[I

    const/16 v2, 0xba2

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 16
    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewWidth:I

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewHeight:I

    invoke-static {v1, v1, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 20
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mFboId:[I

    aget p1, p1, v1

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mOriginViewPort:[I

    aget v0, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-static {v0, v2, v3, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    aget p1, p1, v1

    return p1
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->deleteFBO()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->destroy()V

    .line 4
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->programTextureOES:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->release()V

    .line 7
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->programTextureOES:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    :cond_1
    return-void
.end method
