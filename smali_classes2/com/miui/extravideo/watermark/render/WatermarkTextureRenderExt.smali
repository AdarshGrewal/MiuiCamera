.class public Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;
.super Ljava/lang/Object;
.source "WatermarkTextureRenderExt.java"


# static fields
.field public static final FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\nuniform sampler2D sTexture;\nuniform vec2 uResolution;\nvarying vec2 vTextureCoord;\nvec4 blur(vec4 color) {\n    vec2 step = uResolution;\n    vec4 sum = vec4(0.0, 0.0, 0.0,0.0);\n    sum += color * 3.0;\n    sum += texture2D(sTexture, vTextureCoord + vec2( step.x,-step.y)) ;\n    sum += texture2D(sTexture, vTextureCoord + vec2( step.x, step.y)) ;\n    sum += texture2D(sTexture, vTextureCoord + vec2( -step.x, -step.y));\n    sum += texture2D(sTexture, vTextureCoord + vec2( -step.x,  step.y));\n    sum += texture2D(sTexture, vTextureCoord + vec2(0, -step.y));\n    sum += texture2D(sTexture, vTextureCoord + vec2(0,  step.y));\n    sum += texture2D(sTexture, vTextureCoord + vec2( step.x, 0));\n    sum += texture2D(sTexture, vTextureCoord + vec2( -step.x,  0));\n    return sum / 11.0;\n}void main() {\n   vec4 inputColor = texture2D(sTexture, vTextureCoord);\n   vec4 ret = blur(inputColor);\n   gl_FragColor = ret * 1.2;}"

.field public static final VERTEXT_SHADER:Ljava/lang/String; = "attribute vec2 aPosition;\nuniform mat4 uOrientationM;\nattribute vec2 aTexCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vTextureCoord =  aTexCoord;\n    gl_Position = uOrientationM * vec4(aPosition, 0.0, 1.0);\n}"


# instance fields
.field public final TEX_COORDINATES:[B

.field public fullQuadTexcoord:Ljava/nio/ByteBuffer;

.field public fullQuadVertices:Ljava/nio/FloatBuffer;

.field public mHeight:I

.field public final mOrientationMatrix:[F

.field public mWidth:I

.field public shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;


# direct methods
.method public constructor <init>(II[I)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 2
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->TEX_COORDINATES:[B

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 3
    iput-object v1, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->mOrientationMatrix:[F

    .line 4
    iget-object v1, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    .line 6
    :cond_0
    new-instance v1, Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    invoke-direct {v1}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;-><init>()V

    iput-object v1, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    const-string v2, "attribute vec2 aPosition;\nuniform mat4 uOrientationM;\nattribute vec2 aTexCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    vTextureCoord =  aTexCoord;\n    gl_Position = uOrientationM * vec4(aPosition, 0.0, 1.0);\n}"

    const-string v3, "precision highp float;\nuniform sampler2D sTexture;\nuniform vec2 uResolution;\nvarying vec2 vTextureCoord;\nvec4 blur(vec4 color) {\n    vec2 step = uResolution;\n    vec4 sum = vec4(0.0, 0.0, 0.0,0.0);\n    sum += color * 3.0;\n    sum += texture2D(sTexture, vTextureCoord + vec2( step.x,-step.y)) ;\n    sum += texture2D(sTexture, vTextureCoord + vec2( step.x, step.y)) ;\n    sum += texture2D(sTexture, vTextureCoord + vec2( -step.x, -step.y));\n    sum += texture2D(sTexture, vTextureCoord + vec2( -step.x,  step.y));\n    sum += texture2D(sTexture, vTextureCoord + vec2(0, -step.y));\n    sum += texture2D(sTexture, vTextureCoord + vec2(0,  step.y));\n    sum += texture2D(sTexture, vTextureCoord + vec2( step.x, 0));\n    sum += texture2D(sTexture, vTextureCoord + vec2( -step.x,  0));\n    return sum / 11.0;\n}void main() {\n   vec4 inputColor = texture2D(sTexture, vTextureCoord);\n   vec4 ret = blur(inputColor);\n   gl_FragColor = ret * 1.2;}"

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;->create(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 8
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 9
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->fullQuadVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    .line 11
    aget v3, p3, v2

    int-to-float v3, v3

    int-to-float p1, p1

    div-float/2addr v3, p1

    const/4 v4, 0x3

    .line 12
    aget v5, p3, v4

    int-to-float v5, v5

    int-to-float v6, p2

    div-float/2addr v5, v6

    const/4 v7, 0x0

    .line 13
    aget v8, p3, v7

    int-to-float v8, v8

    div-float/2addr v8, p1

    .line 14
    aget p1, p3, v4

    sub-int/2addr p2, p1

    const/4 p1, 0x1

    aget v9, p3, p1

    sub-int/2addr p2, v9

    int-to-float p2, p2

    div-float/2addr p2, v6

    .line 15
    aget v6, p3, v2

    iput v6, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->mWidth:I

    .line 16
    aget p3, p3, v4

    iput p3, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->mHeight:I

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr v3, p3

    mul-float/2addr v5, p3

    mul-float/2addr v8, p3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v8, v6

    mul-float/2addr p2, p3

    sub-float/2addr p2, v6

    add-float/2addr v5, p2

    add-float/2addr v3, v8

    new-array p3, v0, [F

    aput v8, p3, v7

    aput v5, p3, p1

    aput v8, p3, v2

    aput p2, p3, v4

    const/4 p1, 0x4

    aput v3, p3, p1

    const/4 p1, 0x5

    aput v5, p3, p1

    const/4 p1, 0x6

    aput v3, p3, p1

    const/4 p1, 0x7

    aput p2, p3, p1

    .line 17
    invoke-virtual {v1, p3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->fullQuadTexcoord:Ljava/nio/ByteBuffer;

    .line 19
    iget-object p2, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->TEX_COORDINATES:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method private renderQuad(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    const-string v2, "uResolution"

    invoke-virtual {v1, v2}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v1

    .line 2
    iget v2, v0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->mWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    div-float v2, v3, v2

    iget v4, v0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 3
    iget-object v9, v0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->fullQuadVertices:Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 4
    invoke-static/range {p1 .. p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 5
    iget-object v15, v0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->fullQuadTexcoord:Ljava/nio/ByteBuffer;

    const/4 v11, 0x2

    const/16 v12, 0x1400

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v10, p2

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    invoke-static/range {p2 .. p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v1, 0xbe2

    .line 7
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x302

    const/16 v3, 0x303

    .line 8
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 9
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 10
    invoke-static/range {p1 .. p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 11
    invoke-static/range {p2 .. p2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 12
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    invoke-virtual {v0}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;->use()V

    const v0, 0x84c0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 3
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 4
    iget-object p1, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    const-string v0, "uOrientationM"

    invoke-virtual {p1, v0}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->mOrientationMatrix:[F

    neg-int p2, p2

    int-to-float v2, p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 6
    iget-object p2, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->mOrientationMatrix:[F

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 7
    iget-object p1, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    const-string p2, "aPosition"

    invoke-virtual {p1, p2}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    const-string v0, "aTexCoord"

    invoke-virtual {p2, v0}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->renderQuad(II)V

    .line 8
    iget-object p1, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    invoke-virtual {p1}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;->unUse()V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    .line 2
    iput-object v0, p0, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->fullQuadVertices:Ljava/nio/FloatBuffer;

    return-void
.end method
