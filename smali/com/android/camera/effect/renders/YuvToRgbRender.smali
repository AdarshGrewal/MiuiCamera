.class public Lcom/android/camera/effect/renders/YuvToRgbRender;
.super Lcom/android/camera/effect/renders/ShaderRender;
.source "YuvToRgbRender.java"


# static fields
.field public static final DUMP_TEXTURE:Z = false

.field public static final FRAG:Ljava/lang/String; = "precision highp float; \nvarying vec2 vTexCoord; \nuniform sampler2D uYTexture; \nuniform sampler2D uUVTexture; \nuniform float uMtkPlatform; \nvoid main (void){ \n   float r, g, b, y, u, v; \n   y = texture2D(uYTexture, vTexCoord).r; \n   if(uMtkPlatform > 0.5){\n       u = texture2D(uUVTexture, vTexCoord).a - 0.5; \n       v = texture2D(uUVTexture, vTexCoord).r - 0.5;    }else {\n       v = texture2D(uUVTexture, vTexCoord).a - 0.5; \n       u = texture2D(uUVTexture, vTexCoord).r - 0.5; \n   }\n   r = y + 1.402 * v;\n   g = y - 0.34414 * u - 0.71414 * v;\n   b = y + 1.772 * u;\n   gl_FragColor = vec4(r, g, b, 1); \n} \n"

.field public static final TAG:Ljava/lang/String; = "YuvToRgbRender"

.field public static final TEXTURES:[F

.field public static final VERTICES:[F


# instance fields
.field public mUniformMTKPlatform:I

.field public mUniformUVTexture:I

.field public mUniformYTexture:I

.field public mYuvTextureIds:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/effect/renders/YuvToRgbRender;->VERTICES:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/effect/renders/YuvToRgbRender;->TEXTURES:[F

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

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ShaderRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method

.method private drawTexture([IFFFF)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/Render;->updateViewport()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/ShaderRender;->setBlendEnabled(Z)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 5
    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, v2}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 6
    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p4, p5, p3}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 7
    aget p2, p1, v0

    const/16 p3, 0xde1

    const/4 p4, -0x1

    if-eq p2, p4, :cond_0

    const p2, 0x84c0

    .line 8
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 9
    aget p2, p1, v0

    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 10
    iget p2, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mUniformYTexture:I

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_0
    const/4 p2, 0x1

    .line 11
    aget p5, p1, p2

    if-eq p5, p4, :cond_1

    const p4, 0x84c1

    .line 12
    invoke-static {p4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 13
    aget p1, p1, p2

    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 14
    iget p1, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mUniformUVTexture:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/YuvToRgbRender;->initShaderValue()V

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


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/ShaderRender;->isAttriSupported(I)Z

    move-result v0

    const/4 v6, 0x0

    const-string/jumbo v1, "unsupported target "

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/effect/renders/YuvToRgbRender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/16 v2, 0xb

    const/4 v7, 0x1

    if-eq v0, v2, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/effect/renders/YuvToRgbRender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 6
    move-object v10, p1

    check-cast v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    .line 7
    iget-object v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    .line 8
    :cond_2
    iget-object v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mYuvImage:Lcom/android/camera/effect/MiYuvImage;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0, v10}, Lcom/android/camera/effect/renders/YuvToRgbRender;->genMiYuvTextures(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)V

    .line 10
    sget-object v0, Lcom/android/camera/effect/renders/YuvToRgbRender;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "yuv image is not available!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_3
    iget v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockWidth:I

    if-nez v0, :cond_4

    iget v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockHeight:I

    if-nez v0, :cond_4

    .line 12
    invoke-virtual {p0, v10}, Lcom/android/camera/effect/renders/YuvToRgbRender;->genYUVTextures(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0, v10}, Lcom/android/camera/effect/renders/YuvToRgbRender;->genBlockYUVTextures(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)V

    .line 14
    :goto_0
    iget v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockWidth:I

    if-nez v0, :cond_5

    iget v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockHeight:I

    if-nez v0, :cond_5

    .line 15
    iget-object v1, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mYuvTextureIds:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/YuvToRgbRender;->drawTexture([IFFFF)V

    goto :goto_1

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mYuvTextureIds:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockWidth:I

    int-to-float v4, v0

    iget v0, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockHeight:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/YuvToRgbRender;->drawTexture([IFFFF)V

    .line 17
    :goto_1
    sget-object v0, Lcom/android/camera/effect/renders/YuvToRgbRender;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    aput-object v3, v2, v6

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "draw: size=%s time=%d"

    .line 19
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v7
.end method

.method public genBlockYUVTextures(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    .line 2
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    .line 3
    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockWidth:I

    .line 4
    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockHeight:I

    .line 5
    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOffsetY:I

    .line 6
    iget p1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOffsetUV:I

    .line 7
    iget-object v3, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mYuvTextureIds:[I

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/camera/effect/ShaderUtil;->loadYuvImageTextures(IIII[I)V

    return-void
.end method

.method public genMiYuvTextures(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mYuvImage:Lcom/android/camera/effect/MiYuvImage;

    iget v1, v0, Lcom/android/camera/effect/MiYuvImage;->mWidth:I

    .line 2
    iget v2, v0, Lcom/android/camera/effect/MiYuvImage;->mHeight:I

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/effect/MiYuvImage;->getYBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mYuvImage:Lcom/android/camera/effect/MiYuvImage;

    invoke-virtual {p1}, Lcom/android/camera/effect/MiYuvImage;->getUVBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 5
    iget-object v3, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mYuvTextureIds:[I

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/camera/effect/ShaderUtil;->loadYuvToTextures(Ljava/nio/Buffer;Ljava/nio/Buffer;II[I)V

    :cond_0
    return-void
.end method

.method public genYUVTextures(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 2
    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v1

    .line 3
    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v2, 0x0

    .line 4
    aget-object v2, p1, v2

    const/4 v3, 0x2

    .line 5
    aget-object p1, p1, v3

    .line 6
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 7
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v2, v0, v1}, Lcom/xiaomi/camera/base/ImageUtil;->removePadding(Landroid/media/Image$Plane;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_1
    div-int/lit8 v3, v0, 0x2

    div-int/lit8 v4, v1, 0x2

    invoke-static {p1, v3, v4}, Lcom/xiaomi/camera/base/ImageUtil;->removePadding(Landroid/media/Image$Plane;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 12
    :goto_1
    iget-object v3, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mYuvTextureIds:[I

    invoke-static {v2, p1, v0, v1, v3}, Lcom/android/camera/effect/ShaderUtil;->loadYuvToTextures(Ljava/nio/Buffer;Ljava/nio/Buffer;II[I)V

    return-void
.end method

.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "precision highp float; \nvarying vec2 vTexCoord; \nuniform sampler2D uYTexture; \nuniform sampler2D uUVTexture; \nuniform float uMtkPlatform; \nvoid main (void){ \n   float r, g, b, y, u, v; \n   y = texture2D(uYTexture, vTexCoord).r; \n   if(uMtkPlatform > 0.5){\n       u = texture2D(uUVTexture, vTexCoord).a - 0.5; \n       v = texture2D(uUVTexture, vTexCoord).r - 0.5;    }else {\n       v = texture2D(uUVTexture, vTexCoord).a - 0.5; \n       u = texture2D(uUVTexture, vTexCoord).r - 0.5; \n   }\n   r = y + 1.402 * v;\n   g = y - 0.34414 * u - 0.71414 * v;\n   b = y + 1.772 * u;\n   gl_FragColor = vec4(r, g, b, 1); \n} \n"

    return-object v0
.end method

.method public initShader()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->getVertexShaderString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/YuvToRgbRender;->getFragShaderString()Ljava/lang/String;

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

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributePositionH:I

    .line 6
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributeTexCoorH:I

    .line 7
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uYTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mUniformYTexture:I

    .line 8
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uUVTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mUniformUVTexture:I

    .line 9
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uMtkPlatform"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mUniformMTKPlatform:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 10
    iput-object v1, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mYuvTextureIds:[I

    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 12
    sget-object v1, Lcom/android/camera/effect/renders/YuvToRgbRender;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mYuvTextureIds:[I

    aget v4, v4, v2

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mYuvTextureIds:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    const-string v2, "genTexture: %d %d"

    .line 14
    invoke-static {v3, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/camera/effect/renders/YuvToRgbRender;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": mProgram = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initShaderValue()V
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
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getXiaomiYuvFormat()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 9
    :goto_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mUniformMTKPlatform:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_2

    .line 11
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mUniformMTKPlatform:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_2
    return-void
.end method

.method public initSupportAttriList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initVertexData()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/effect/renders/YuvToRgbRender;->VERTICES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/ShaderRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 2
    sget-object v1, Lcom/android/camera/effect/renders/YuvToRgbRender;->VERTICES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 3
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    sget-object v0, Lcom/android/camera/effect/renders/YuvToRgbRender;->TEXTURES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/ShaderRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 5
    sget-object v2, Lcom/android/camera/effect/renders/YuvToRgbRender;->TEXTURES:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 6
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
