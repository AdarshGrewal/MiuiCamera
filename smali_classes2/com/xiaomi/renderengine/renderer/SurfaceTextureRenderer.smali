.class public Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;
.super Lcom/xiaomi/renderengine/renderer/Renderer;
.source "SurfaceTextureRenderer.java"


# static fields
.field public static final FRAGMENT_SHADER_OES:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require  \nprecision mediump float; \nuniform float uAlpha; \nuniform float uMixAlpha; \nuniform samplerExternalOES sTexture; \nvarying vec2 vTexCoord; \nvoid main() \n{ \n    gl_FragColor = texture2D(sTexture, vTexCoord)*uAlpha; \n    if (uMixAlpha >= 0.0) { \n       gl_FragColor.a = uMixAlpha; \n    } \n}"

.field public static final OPAQUE_ALPHA:F = 0.95f

.field public static final TAG:Ljava/lang/String; = "SurfaceTextureRenderer"

.field public static final TEXTURES:[F

.field public static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

.field public static final VERTICES:[F


# instance fields
.field public mAttributePositionH:I

.field public mAttributeTexCoorH:I

.field public mProgram:I

.field public mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field public mUniformAlphaH:I

.field public mUniformBlendAlphaH:I

.field public mUniformMVPMatrixH:I

.field public mUniformSTMatrixH:I

.field public mUniformTextureH:I

.field public mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->VERTICES:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->TEXTURES:[F

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
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/Renderer;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mProgram:I

    return-void
.end method

.method private initAttributePointer()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->VERTICES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->TEXTURES:[F

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 5
    :cond_1
    iget v1, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mAttributePositionH:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    iget v7, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mAttributeTexCoorH:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    iget-object v12, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 7
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 8
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method private initShader()V
    .locals 3

    const-string v0, "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix; \nuniform float u_PointSize; \nattribute vec3 aPosition; \nattribute vec2 aTexCoord; \nvarying vec2 vTexCoord; \nvoid main() \n{ \ngl_Position = uMVPMatrix * vec4(aPosition,1); \nvTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st; \ngl_PointSize = u_PointSize; \n} \n"

    const-string v1, "#extension GL_OES_EGL_image_external : require  \nprecision mediump float; \nuniform float uAlpha; \nuniform float uMixAlpha; \nuniform samplerExternalOES sTexture; \nvarying vec2 vTexCoord; \nvoid main() \n{ \n    gl_FragColor = texture2D(sTexture, vTexCoord)*uAlpha; \n    if (uMixAlpha >= 0.0) { \n       gl_FragColor.a = uMixAlpha; \n    } \n}"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mProgram:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mUniformMVPMatrixH:I

    .line 4
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mUniformSTMatrixH:I

    .line 5
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mProgram:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mUniformTextureH:I

    .line 6
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mUniformAlphaH:I

    .line 7
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mProgram:I

    const-string v1, "uMixAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mUniformBlendAlphaH:I

    .line 8
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mAttributePositionH:I

    .line 9
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mAttributeTexCoorH:I

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": mProgram = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setBlendEnabled(Z)V
    .locals 1

    const/16 v0, 0xbe2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 v0, 0x303

    .line 2
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->initShader()V

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->initAttributePointer()V

    .line 3
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 9

    .line 1
    iget-boolean v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mIsFinal:Z

    const v1, 0x8d40

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mFboIn:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 4
    :goto_0
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 6
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v0, 0x8d65

    .line 7
    iget v3, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mOesTex:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->initAttributePointer()V

    .line 9
    iget v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    iget v3, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    invoke-static {v2, v2, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 10
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/GLState;

    iget v3, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mWidth:I

    int-to-float v3, v3

    iget v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mHeight:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3, v5, v4}, Lcom/xiaomi/renderengine/GLState;->ortho(FFFF)V

    .line 11
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/GLState;->getAlpha()F

    move-result v0

    .line 12
    iget-object v3, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/GLState;

    invoke-virtual {v3}, Lcom/xiaomi/renderengine/GLState;->getBlendAlpha()F

    move-result v3

    const v4, 0x3f733333    # 0.95f

    cmpg-float v4, v0, v4

    const/4 v6, 0x1

    if-ltz v4, :cond_2

    cmpl-float v4, v3, v5

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v6

    .line 13
    :goto_2
    invoke-direct {p0, v4}, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->setBlendEnabled(Z)V

    .line 14
    iget-object v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/GLState;

    invoke-virtual {v4}, Lcom/xiaomi/renderengine/GLState;->pushState()V

    .line 15
    iget-object v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/GLState;

    iget-object v7, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mDrawRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v4, v8, v7, v5}, Lcom/xiaomi/renderengine/GLState;->translate(FFF)V

    .line 16
    iget-object v4, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/GLState;

    iget-object v5, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v7, v8}, Lcom/xiaomi/renderengine/GLState;->scale(FFF)V

    .line 17
    iget v4, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mUniformMVPMatrixH:I

    iget-object v5, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/GLState;

    invoke-virtual {v5}, Lcom/xiaomi/renderengine/GLState;->getFinalMatrix()[F

    move-result-object v5

    invoke-static {v4, v6, v2, v5, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 18
    iget v4, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mUniformSTMatrixH:I

    iget-object v5, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTexTrans:[F

    invoke-static {v4, v6, v2, v5, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 19
    iget v4, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mUniformTextureH:I

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 20
    iget v4, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mUniformAlphaH:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 21
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mUniformBlendAlphaH:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v0, 0x5

    const/4 v3, 0x4

    .line 22
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 23
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 24
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 25
    iget v0, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 26
    iget-object v0, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mGLState:Lcom/xiaomi/renderengine/GLState;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/GLState;->popState()V

    .line 27
    iget p1, p1, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;->mTexIn:I

    return p1

    .line 28
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shader program. shaderProgram:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/renderengine/renderer/SurfaceTextureRenderer;->mProgram:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
