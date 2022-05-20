.class public Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;
.super Lcom/android/camera/effect/renders/ShaderRender;
.source "MimojiRender.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MimojiRender"


# instance fields
.field public mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

.field public mRenderHeight:F

.field public mRenderWidth:F

.field public mRenderX:F

.field public mRenderY:F

.field public mvp:[F

.field public tex:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/ShaderRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    const/16 p1, 0x10

    new-array v0, p1, [F

    .line 2
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->tex:[F

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mvp:[F

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ShaderRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    const/16 p1, 0x10

    new-array p2, p1, [F

    .line 5
    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->tex:[F

    new-array p1, p1, [F

    .line 6
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mvp:[F

    return-void
.end method

.method public static matrixForCrop([FFFFF)V
    .locals 3

    div-float v0, p1, p2

    div-float/2addr p3, p4

    cmpg-float p4, v0, p3

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-gez p4, :cond_0

    div-float/2addr p1, p3

    sub-float p3, p2, p1

    mul-float/2addr v0, p2

    div-float/2addr p3, v0

    div-float/2addr p1, p2

    move p4, p3

    move p2, v1

    move p3, v2

    goto :goto_0

    :cond_0
    mul-float/2addr p2, p3

    sub-float p3, p1, p2

    mul-float/2addr v0, p1

    div-float/2addr p3, v0

    div-float/2addr p2, p1

    move p1, v1

    move p4, v2

    :goto_0
    const/4 v0, 0x0

    .line 1
    aput p2, p0, v0

    const/4 p2, 0x1

    .line 2
    aput v2, p0, p2

    const/4 p2, 0x2

    .line 3
    aput v2, p0, p2

    const/4 p2, 0x3

    .line 4
    aput v2, p0, p2

    const/4 p2, 0x4

    .line 5
    aput v2, p0, p2

    const/4 p2, 0x5

    .line 6
    aput p1, p0, p2

    const/4 p1, 0x6

    .line 7
    aput v2, p0, p1

    const/4 p1, 0x7

    .line 8
    aput v2, p0, p1

    const/16 p1, 0x8

    .line 9
    aput v2, p0, p1

    const/16 p1, 0x9

    .line 10
    aput v2, p0, p1

    const/16 p1, 0xa

    .line 11
    aput v1, p0, p1

    const/16 p1, 0xb

    .line 12
    aput v2, p0, p1

    const/16 p1, 0xc

    .line 13
    aput p3, p0, p1

    const/16 p1, 0xd

    .line 14
    aput p4, p0, p1

    const/16 p1, 0xe

    .line 15
    aput v2, p0, p1

    const/16 p1, 0xf

    .line 16
    aput v1, p0, p1

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/android/camera/effect/renders/ShaderRender;->destroy()V

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/ShaderRender;->isAttriSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    .line 5
    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTexId:I

    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewWidth:I

    int-to-float v2, v0

    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewHeight:I

    int-to-float v3, v0

    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureWidth:I

    int-to-float v4, v0

    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureHeight:I

    int-to-float v5, v0

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mRotation:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->drawTexture(IFFFFI)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public drawTexture(IFFFFI)V
    .locals 9

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-eqz v1, :cond_6

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    cmpl-float v1, p2, p3

    if-nez v1, :cond_3

    div-float v0, p5, p4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    div-float v0, v1, v0

    :goto_0
    move v6, v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->tex:[F

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    neg-float v5, v6

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->tex:[F

    invoke-static {v0, p4, p5, p2, p3}, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->matrixForCrop([FFFFF)V

    if-eqz p6, :cond_2

    .line 4
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->tex:[F

    invoke-static {p2, p6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->getRotataionMatrix([FI)[F

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->tex:[F

    .line 5
    :cond_2
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->tex:[F

    sget-object p4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->drawFrame(I[F[F)V

    goto :goto_2

    :cond_3
    div-float v1, p3, p2

    div-float v2, p5, p4

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    if-eqz p6, :cond_4

    .line 6
    invoke-static {v0, p6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->getRotataionMatrix([FI)[F

    move-result-object v0

    .line 7
    :cond_4
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    sget-object p3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->drawFrame(I[F[F)V

    goto :goto_2

    .line 8
    :cond_5
    invoke-static {v0, p2, p3, p4, p5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->changeMVPMatrix([FFFFF)[F

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mvp:[F

    .line 9
    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    invoke-virtual {p3, p1, v0, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->drawFrame(I[F[F)V

    goto :goto_2

    .line 10
    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    sget-object p3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {p2, p1, p3, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->drawFrame(I[F[F)V

    :goto_2
    return-void
.end method

.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initShader()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    iget v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    iput v1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->getLocations()V

    return-void
.end method

.method public initSupportAttriList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initVertexData()V
    .locals 0

    return-void
.end method

.method public setViewportSize(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mRenderWidth:F

    int-to-float p1, p2

    .line 3
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mRenderHeight:F

    return-void
.end method
