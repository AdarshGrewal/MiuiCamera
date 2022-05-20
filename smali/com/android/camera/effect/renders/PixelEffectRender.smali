.class public abstract Lcom/android/camera/effect/renders/PixelEffectRender;
.super Lcom/android/camera/effect/renders/ShaderRender;
.source "PixelEffectRender.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PixelEffectRender"

.field public static final TEXTURES:[F

.field public static final VERTICES:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/effect/renders/PixelEffectRender;->VERTICES:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/effect/renders/PixelEffectRender;->TEXTURES:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/ShaderRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ShaderRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method


# virtual methods
.method public bindExtraTexture()V
    .locals 0

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/ShaderRender;->isAttriSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    .line 4
    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mTexId:I

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mDrawRect:Landroid/graphics/Rect;

    iget-boolean p1, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mIsSnapshot:Z

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->drawTexture(ILandroid/graphics/Rect;Z)V

    goto :goto_0

    .line 5
    :cond_2
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 6
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    iget-boolean p1, p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;Z)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public drawTexture(ILandroid/graphics/Rect;Z)V
    .locals 4

    .line 14
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/ShaderRender;->bindTexture(II)Z

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->bindExtraTexture()V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/Render;->updateViewport()V

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/ShaderRender;->setBlendEnabled(Z)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 20
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 22
    invoke-virtual {p0, p3}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    const/4 p2, 0x5

    const/4 p3, 0x4

    .line 23
    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method public drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/ui/BasicTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "drawTexture: fail bind texture "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PixelEffectRender"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v0, 0x84c0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/ShaderRender;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;I)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->bindExtraTexture()V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/Render;->updateViewport()V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/ShaderRender;->setBlendEnabled(Z)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 11
    invoke-virtual {p0, p3}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    const/4 p2, 0x5

    const/4 p3, 0x4

    .line 12
    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method public initShader()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->getVertexShaderString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->getFragShaderString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformMVPMatrixH:I

    .line 4
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformSTMatrixH:I

    .line 5
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformTextureH:I

    .line 6
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributePositionH:I

    .line 7
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributeTexCoorH:I

    .line 8
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformAlphaH:I

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": mProgram = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initShaderValue(Z)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributePositionH:I

    iget-object v5, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2
    iget v6, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributeTexCoorH:I

    iget-object v11, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 3
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 4
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 5
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformMVPMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 6
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformSTMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object v1

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 7
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformTextureH:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 8
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformAlphaH:I

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result p1

    :goto_0
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public initSupportAttriList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initVertexData()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/effect/renders/PixelEffectRender;->VERTICES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/ShaderRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 2
    sget-object v1, Lcom/android/camera/effect/renders/PixelEffectRender;->VERTICES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 3
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    sget-object v0, Lcom/android/camera/effect/renders/PixelEffectRender;->TEXTURES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/ShaderRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 5
    sget-object v2, Lcom/android/camera/effect/renders/PixelEffectRender;->TEXTURES:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 6
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
