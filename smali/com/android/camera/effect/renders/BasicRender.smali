.class public Lcom/android/camera/effect/renders/BasicRender;
.super Lcom/android/camera/effect/renders/ShaderRender;
.source "BasicRender.java"


# static fields
.field public static final BYTE_COLOR_TO_FLOAT:F = 0.003921569f

.field public static final OFFSET_DRAW_LINE:I = 0x4

.field public static final OFFSET_DRAW_RECT:I = 0x6

.field public static final OFFSET_FILL_RECT:I

.field public static final TEXTURES:[F

.field public static final VERTICES:[F


# instance fields
.field public mUniformBlendFactorH:I

.field public mUniformPaintColorH:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x14

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/effect/renders/BasicRender;->VERTICES:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/effect/renders/BasicRender;->TEXTURES:[F

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
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
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
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
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

.method private convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/ui/BasicTexture;)V
    .locals 5

    .line 1
    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v2

    .line 4
    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result p3

    .line 5
    iget v3, p1, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    div-float/2addr v3, v2

    iput v3, p1, Landroid/graphics/RectF;->left:F

    .line 6
    iget v3, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, v2

    iput v3, p1, Landroid/graphics/RectF;->right:F

    .line 7
    iget v4, p1, Landroid/graphics/RectF;->top:F

    int-to-float p3, p3

    div-float/2addr v4, p3

    iput v4, p1, Landroid/graphics/RectF;->top:F

    .line 8
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v4, p3

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    div-float/2addr v0, v2

    cmpl-float v2, v3, v0

    if-lez v2, :cond_0

    .line 9
    iget v2, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, v4

    mul-float/2addr v3, v4

    .line 10
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p2, Landroid/graphics/RectF;->right:F

    .line 11
    iput v0, p1, Landroid/graphics/RectF;->right:F

    :cond_0
    int-to-float v0, v1

    div-float/2addr v0, p3

    .line 12
    iget p3, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p3, p3, v0

    if-lez p3, :cond_1

    .line 13
    iget p3, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    mul-float/2addr v1, v2

    .line 14
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr p3, v1

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    .line 15
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private drawLine(FFFFLcom/android/gallery3d/ui/GLPaint;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/effect/renders/BasicRender;->initAttribPointer()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/Render;->updateViewport()V

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p5, v0}, Lcom/android/camera/effect/renders/BasicRender;->initGLPaint(Lcom/android/gallery3d/ui/GLPaint;Z)V

    .line 5
    iget-object p5, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p5}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 6
    iget-object p5, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p5}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p5

    const/4 v1, 0x0

    invoke-virtual {p5, p1, p2, v1}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 7
    iget-object p5, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p5}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p5

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p5, p3, p4, p1}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 8
    iget p2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformMVPMatrixH:I

    iget-object p3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p2, v0, p4, p3, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 9
    iget p2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformSTMatrixH:I

    iget-object p3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object p3

    invoke-static {p2, v0, p4, p3, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 10
    iget p2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformAlphaH:I

    iget-object p3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result p3

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11
    iget p2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformBlendAlphaH:I

    iget-object p3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->getBlendAlpha()F

    move-result p3

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 12
    iget p2, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    invoke-static {p2, v1, v1, v1, p1}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 p1, 0x3

    const/4 p2, 0x4

    const/4 p3, 0x2

    .line 13
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private drawMesh(Lcom/android/gallery3d/ui/BasicTexture;FFIIII)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/ShaderRender;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mBlendEnabled:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result p1

    const v2, 0x3f733333    # 0.95f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/ShaderRender;->setBlendEnabled(Z)V

    const p1, 0x8892

    .line 4
    invoke-static {p1, p4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 5
    iget v2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributePositionH:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 6
    iget p4, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributePositionH:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 7
    invoke-static {p1, p5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 8
    iget v2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributeTexCoorH:I

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 9
    iget p4, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributeTexCoorH:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 10
    iget-object p4, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p4}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 11
    iget-object p4, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p4}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p4

    const/4 p5, 0x0

    invoke-virtual {p4, p2, p3, p5}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 12
    iget p2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformMVPMatrixH:I

    iget-object p3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object p3

    invoke-static {p2, v0, v1, p3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 13
    iget p2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformSTMatrixH:I

    iget-object p3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object p3

    invoke-static {p2, v0, v1, p3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 14
    iget p2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformAlphaH:I

    iget-object p3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result p3

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 15
    iget p2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformBlendAlphaH:I

    iget-object p3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->getBlendAlpha()F

    move-result p3

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 16
    iget p2, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p2, p3, p5, p5, p5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 17
    iget p2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformTextureH:I

    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p2, 0x8893

    .line 18
    invoke-static {p2, p6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 p3, 0x5

    const/16 p4, 0x1401

    .line 19
    invoke-static {p3, p7, p4, v1}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 20
    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 21
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFFFFF)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/ShaderRender;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/effect/renders/BasicRender;->initAttribPointer()V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p2, v0}, Lcom/android/camera/effect/renders/BasicRender;->initGLPaint(IZ)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/Render;->updateViewport()V

    .line 6
    iget-boolean p2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mBlendEnabled:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/android/gallery3d/ui/Texture;->isOpaque()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result p1

    const p2, 0x3f733333    # 0.95f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/ShaderRender;->setBlendEnabled(Z)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 8
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p5, p2}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p1, p6, p7, p4}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 10
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformMVPMatrixH:I

    iget-object p5, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p5}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object p5

    invoke-static {p1, v1, v0, p5, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 11
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformSTMatrixH:I

    iget-object p5, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p5}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object p5

    invoke-static {p1, v1, v0, p5, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 12
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformAlphaH:I

    iget-object p5, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p5}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result p5

    invoke-static {p1, p5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 13
    iget p1, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    sub-float/2addr p4, p3

    invoke-static {p1, p4, p2, p2, p3}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 14
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformTextureH:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 15
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformBlendAlphaH:I

    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->getBlendAlpha()F

    move-result p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 16
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/effect/renders/BasicRender;->initAttribPointer()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/Render;->updateViewport()V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p5, v0}, Lcom/android/camera/effect/renders/BasicRender;->initGLPaint(Lcom/android/gallery3d/ui/GLPaint;Z)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 6
    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3, p4, p2}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 8
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformMVPMatrixH:I

    iget-object p3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {p1, p4, v0, p3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 9
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformSTMatrixH:I

    iget-object p3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object p3

    invoke-static {p1, p4, v0, p3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 10
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformAlphaH:I

    iget-object p3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result p3

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformPointSize:I

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/GLPaint;->getLineWidth()F

    move-result p3

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 12
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformBlendAlphaH:I

    iget-object p3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->getBlendAlpha()F

    move-result p3

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 13
    iget p1, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    invoke-static {p1, v2, v2, v2, p2}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 p1, 0x4

    const/4 p2, 0x6

    const/4 p3, 0x2

    .line 14
    invoke-static {p3, p2, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 15
    invoke-static {v0, p2, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/camera/effect/renders/BasicRender;->drawTextureInternal(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;[F)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 4

    .line 4
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/ui/BasicTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-direct {p0, p2, p3, p1}, Lcom/android/camera/effect/renders/BasicRender;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/camera/effect/GLCanvasState;->setTexMatrix(FFFF)V

    const/4 p2, 0x0

    .line 9
    invoke-direct {p0, p1, p3, p2}, Lcom/android/camera/effect/renders/BasicRender;->drawTextureInternal(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;[F)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawTextureInternal(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;[F)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_6

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/ShaderRender;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1, v1, v1}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 5
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformTextureH:I

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/effect/renders/BasicRender;->initAttribPointer()V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/Render;->updateViewport()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v0

    .line 9
    iget-object v4, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/GLCanvasState;->getBlendAlpha()F

    move-result v4

    .line 10
    instance-of v5, p1, Lcom/android/gallery3d/ui/UploadedTexture;

    if-eqz v5, :cond_2

    .line 11
    move-object v5, p1

    check-cast v5, Lcom/android/gallery3d/ui/UploadedTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/UploadedTexture;->isPremultiplied()Z

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v3

    .line 12
    :goto_0
    iget-boolean v6, p0, Lcom/android/camera/effect/renders/ShaderRender;->mBlendEnabled:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    invoke-interface {p1}, Lcom/android/gallery3d/ui/Texture;->isOpaque()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x3f733333    # 0.95f

    cmpg-float p1, v0, p1

    if-ltz p1, :cond_3

    cmpl-float p1, v4, v1

    if-ltz p1, :cond_4

    :cond_3
    move p1, v7

    goto :goto_1

    :cond_4
    move p1, v3

    :goto_1
    invoke-virtual {p0, p1, v5}, Lcom/android/camera/effect/renders/ShaderRender;->setBlendEnabled(ZZ)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    iget v5, p2, Landroid/graphics/RectF;->left:F

    iget v6, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v5, v6, v1}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1, v1, p2, v2}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 15
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformMVPMatrixH:I

    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object p2

    invoke-static {p1, v7, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    if-nez p3, :cond_5

    .line 16
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformSTMatrixH:I

    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object p2

    invoke-static {p1, v7, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_2

    .line 17
    :cond_5
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformSTMatrixH:I

    invoke-static {p1, v7, v3, p3, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 18
    :goto_2
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformAlphaH:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 19
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformBlendAlphaH:I

    invoke-static {p1, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 20
    invoke-static {p1, v3, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_6
    :goto_3
    return-void
.end method

.method private fillRect(Landroid/graphics/Rect;I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/effect/renders/BasicRender;->initAttribPointer()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/Render;->updateViewport()V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p2, v0}, Lcom/android/camera/effect/renders/BasicRender;->initGLPaint(IZ)V

    .line 5
    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 6
    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 7
    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1, p1, v2}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 8
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformMVPMatrixH:I

    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {p1, v1, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 9
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformSTMatrixH:I

    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object p2

    invoke-static {p1, v1, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 10
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformAlphaH:I

    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformBlendAlphaH:I

    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->getBlendAlpha()F

    move-result p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 12
    iget p1, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    invoke-static {p1, v3, v3, v3, v2}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 13
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private fillRoundRect(Landroid/graphics/Rect;ILjava/nio/FloatBuffer;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2
    invoke-direct {p0, p3}, Lcom/android/camera/effect/renders/BasicRender;->initRoundAttribPointer(Ljava/nio/FloatBuffer;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/Render;->updateViewport()V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p2, v0}, Lcom/android/camera/effect/renders/BasicRender;->initGLPaint(IZ)V

    .line 5
    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 6
    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 7
    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1, p1, v2}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 8
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformMVPMatrixH:I

    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {p1, v1, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 9
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformSTMatrixH:I

    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object p2

    invoke-static {p1, v1, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 10
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformAlphaH:I

    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformBlendAlphaH:I

    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->getBlendAlpha()F

    move-result p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 12
    iget p1, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    invoke-static {p1, v3, v3, v3, v2}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 13
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->capacity()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/4 p2, 0x6

    invoke-static {p2, v0, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private initAttribPointer()V
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

    return-void
.end method

.method private initGLPaint(IZ)V
    .locals 4

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3b808081

    mul-float/2addr v0, v1

    .line 4
    iget-boolean v2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mBlendEnabled:Z

    if-eqz v2, :cond_1

    const v2, 0x3f733333    # 0.95f

    cmpg-float v3, v0, v2

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    .line 5
    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v3

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0, v2, p2}, Lcom/android/camera/effect/renders/ShaderRender;->setBlendEnabled(ZZ)V

    .line 7
    iget p2, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformPaintColorH:I

    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    .line 10
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    .line 11
    invoke-static {p2, v2, v3, p1, v0}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method

.method private initGLPaint(Lcom/android/gallery3d/ui/GLPaint;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLPaint;->getColor()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/camera/effect/renders/BasicRender;->initGLPaint(IZ)V

    .line 2
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLPaint;->getLineWidth()F

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    return-void
.end method

.method private initRoundAttribPointer(Ljava/nio/FloatBuffer;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributePositionH:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2
    iget p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributePositionH:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 10

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

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawRoundFillRectAttribute;

    .line 4
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawRoundFillRectAttribute;->mColor:I

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawRoundFillRectAttribute;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, v2, p1}, Lcom/android/camera/effect/renders/BasicRender;->fillRoundRect(Landroid/graphics/Rect;ILjava/nio/FloatBuffer;)V

    goto/16 :goto_0

    .line 5
    :cond_2
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;

    .line 6
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget-object v2, p1, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;->mSourceRectF:Landroid/graphics/RectF;

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;->mTargetRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v2, p1}, Lcom/android/camera/effect/renders/BasicRender;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 7
    :cond_3
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 8
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget-object v2, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mTextureTransform:[F

    invoke-direct {p0, v0, v2, p1}, Lcom/android/camera/effect/renders/BasicRender;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;[F)V

    goto :goto_0

    .line 9
    :cond_4
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    .line 10
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    iget p1, p1, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;->mColor:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/renders/BasicRender;->fillRect(Landroid/graphics/Rect;I)V

    goto :goto_0

    .line 11
    :cond_5
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;

    .line 12
    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mToColor:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mRatio:F

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mX:F

    iget v7, p1, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mY:F

    iget v8, p1, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mWidth:F

    iget v9, p1, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mHeight:F

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/effect/renders/BasicRender;->drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFFFFF)V

    goto :goto_0

    .line 13
    :cond_6
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;

    .line 14
    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mX:F

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mY:F

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mXYBuffer:I

    iget v7, p1, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mUVBuffer:I

    iget v8, p1, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mIndexBuffer:I

    iget v9, p1, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mIndexCount:I

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/effect/renders/BasicRender;->drawMesh(Lcom/android/gallery3d/ui/BasicTexture;FFIIII)V

    goto :goto_0

    .line 15
    :cond_7
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    .line 16
    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mX:F

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mY:F

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mWidth:F

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mHeight:F

    iget-object v7, p1, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mGLPaint:Lcom/android/gallery3d/ui/GLPaint;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/effect/renders/BasicRender;->drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    goto :goto_0

    .line 17
    :cond_8
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;

    .line 18
    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mX1:F

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mY1:F

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mX2:F

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mY2:F

    iget-object v7, p1, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mGLPaint:Lcom/android/gallery3d/ui/GLPaint;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/effect/renders/BasicRender;->drawLine(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    :goto_0
    return v1
.end method

.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    const-string v0, "frag_normal.txt"

    .line 1
    invoke-static {v0}, Lcom/android/camera/effect/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initShader()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->getVertexShaderString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/BasicRender;->getFragShaderString()Ljava/lang/String;

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

    const-string/jumbo v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformAlphaH:I

    .line 7
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "u_PointSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformPointSize:I

    .line 8
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uMixAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformBlendAlphaH:I

    .line 9
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uBlendFactor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    .line 10
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uPaintColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformPaintColorH:I

    .line 11
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributePositionH:I

    .line 12
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributeTexCoorH:I

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/camera/effect/renders/BasicRender;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": mProgram = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initSupportAttriList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initVertexData()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/effect/renders/BasicRender;->VERTICES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/ShaderRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 2
    sget-object v1, Lcom/android/camera/effect/renders/BasicRender;->VERTICES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 3
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    sget-object v0, Lcom/android/camera/effect/renders/BasicRender;->TEXTURES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/ShaderRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 5
    sget-object v2, Lcom/android/camera/effect/renders/BasicRender;->TEXTURES:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 6
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
