.class public Lcom/android/camera/effect/renders/TransformRender;
.super Lcom/android/camera/effect/renders/ShaderRender;
.source "TransformRender.java"


# static fields
.field public static final FRAGMENT_SHADER_2D:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field public static final TAG:Ljava/lang/String; = "TransformRender"

.field public static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field public mDrawable2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

.field public maPositionLoc:I

.field public maTextureCoordLoc:I

.field public muMVPMatrixLoc:I

.field public muTexMatrixLoc:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
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

.method private drawTexture(IIIII[F[FZ)V
    .locals 6

    .line 1
    iget p2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p2, "glUseProgram"

    .line 2
    invoke-static {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/camera/effect/renders/ShaderRender;->setBlendEnabled(Z)V

    .line 4
    iget-object p3, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    const-string p3, "draw start"

    .line 5
    invoke-static {p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    const p3, 0x84c0

    .line 6
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p3, 0xde1

    .line 7
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 8
    iget p1, p0, Lcom/android/camera/effect/renders/TransformRender;->muMVPMatrixLoc:I

    const/4 p4, 0x1

    invoke-static {p1, p4, p2, p6, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p1, "glUniformMatrix4fv"

    .line 9
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 10
    iget p5, p0, Lcom/android/camera/effect/renders/TransformRender;->muTexMatrixLoc:I

    invoke-static {p5, p4, p2, p7, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 11
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 12
    iget p1, p0, Lcom/android/camera/effect/renders/TransformRender;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray"

    .line 13
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 14
    iget v0, p0, Lcom/android/camera/effect/renders/TransformRender;->maPositionLoc:I

    iget-object p4, p0, Lcom/android/camera/effect/renders/TransformRender;->mDrawable2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    .line 15
    invoke-virtual {p4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->vertexArray()Ljava/nio/FloatBuffer;

    move-result-object v5

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 16
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p4, "glVertexAttribPointer"

    .line 17
    invoke-static {p4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 18
    iget p5, p0, Lcom/android/camera/effect/renders/TransformRender;->maTextureCoordLoc:I

    invoke-static {p5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 19
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 20
    iget v0, p0, Lcom/android/camera/effect/renders/TransformRender;->maTextureCoordLoc:I

    iget-object p1, p0, Lcom/android/camera/effect/renders/TransformRender;->mDrawable2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    .line 21
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->texCoordArray()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 22
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 23
    invoke-static {p4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/effect/renders/TransformRender;->mDrawable2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->vertexCount()I

    move-result p1

    const/4 p4, 0x5

    invoke-static {p4, p2, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 25
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 26
    iget p1, p0, Lcom/android/camera/effect/renders/TransformRender;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 27
    iget p1, p0, Lcom/android/camera/effect/renders/TransformRender;->maTextureCoordLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 28
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 29
    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/effect/renders/ShaderRender;->destroy()V

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/ShaderRender;->isAttriSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/effect/renders/TransformRender;->TAG:Ljava/lang/String;

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

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 4
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;

    .line 5
    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mTexId:I

    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p1, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mMvpTransform:[F

    iget-object v7, p1, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mTextureTransform:[F

    iget-boolean v8, p1, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mIsSnapshot:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/effect/renders/TransformRender;->drawTexture(IIIII[F[FZ)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    return-object v0
.end method

.method public getVertexShaderString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    return-object v0
.end method

.method public initShader()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/TransformRender;->getVertexShaderString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/TransformRender;->getFragShaderString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/TransformRender;->maPositionLoc:I

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/TransformRender;->maTextureCoordLoc:I

    .line 6
    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 7
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/TransformRender;->muMVPMatrixLoc:I

    .line 8
    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 9
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/TransformRender;->muTexMatrixLoc:I

    .line 10
    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/camera/effect/renders/TransformRender;

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

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initVertexData()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/Drawable2dFull;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/Drawable2dFull;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/TransformRender;->mDrawable2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    return-void
.end method
