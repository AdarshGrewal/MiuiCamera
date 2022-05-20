.class public Lcom/miui/filtersdk/filter/base/ColorLookupFilter;
.super Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
.source "ColorLookupFilter.java"


# static fields
.field public static final LOOKUP_FRAGMENT_SHADER_512X512:Ljava/lang/String; = " precision mediump float;\n varying highp vec2 textureCoordinate;\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; // lookup texture\n uniform lowp float strength;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     mediump float blueColor = textureColor.b * 63.0;\n     \n     mediump vec2 quad1;\n     quad1.y = floor(floor(blueColor) / 8.0);\n     quad1.x = floor(blueColor) - (quad1.y * 8.0);\n     \n     mediump vec2 quad2;\n     quad2.y = floor(ceil(blueColor) / 8.0);\n     quad2.x = ceil(blueColor) - (quad2.y * 8.0);\n     \n     highp vec2 texPos1;\n     texPos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n     texPos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n     \n     highp vec2 texPos2;\n     texPos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n     texPos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n     \n     lowp vec4 newColor1 = texture2D(inputImageTexture2, texPos1);\n     lowp vec4 newColor2 = texture2D(inputImageTexture2, texPos2);\n     \n     lowp vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n     gl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), strength);\n }"

.field public static final LOOKUP_FRAGMENT_SHADER_64X64:Ljava/lang/String; = " precision mediump float;\n varying highp vec2 textureCoordinate;\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; // lookup texture\n uniform lowp float strength;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     mediump float blueColor = textureColor.b * 15.0;\n     \n     mediump vec2 quad1;\n     quad1.y = floor(floor(blueColor) / 4.0);\n     quad1.x = floor(blueColor) - (quad1.y * 4.0);\n     \n     mediump vec2 quad2;\n     quad2.y = floor(ceil(blueColor) / 4.0);\n     quad2.x = ceil(blueColor) - (quad2.y * 4.0);\n     \n     highp vec2 texPos1;\n     texPos1.x = (quad1.x * 1.0/4.0) + 0.5/64.0 + ((1.0/4.0 - 1.0/64.0) * textureColor.r);\n     texPos1.y = (quad1.y * 1.0/4.0) + 0.5/64.0 + ((1.0/4.0 - 1.0/64.0) * textureColor.g);\n     \n     highp vec2 texPos2;\n     texPos2.x = (quad2.x * 1.0/4.0) + 0.5/64.0 + ((1.0/4.0 - 1.0/64.0) * textureColor.r);\n     texPos2.y = (quad2.y * 1.0/4.0) + 0.5/64.0 + ((1.0/4.0 - 1.0/64.0) * textureColor.g);\n     \n     lowp vec4 newColor1 = texture2D(inputImageTexture2, texPos1);\n     lowp vec4 newColor2 = texture2D(inputImageTexture2, texPos2);\n     \n     lowp vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n     gl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), strength);\n }"

.field public static final TAG:Ljava/lang/String; = "ColorLookupFilter"


# instance fields
.field public final mColorLookupTableName:Ljava/lang/String;

.field public final mColorLookupTableSize:I

.field public mGLStrengthLocation:I

.field public mLookupSourceTexture:I

.field public mLookupTextureUniform:I

.field public mStrength:F


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/16 v0, 0x40

    if-ne p2, v0, :cond_0

    const-string v0, " precision mediump float;\n varying highp vec2 textureCoordinate;\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; // lookup texture\n uniform lowp float strength;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     mediump float blueColor = textureColor.b * 15.0;\n     \n     mediump vec2 quad1;\n     quad1.y = floor(floor(blueColor) / 4.0);\n     quad1.x = floor(blueColor) - (quad1.y * 4.0);\n     \n     mediump vec2 quad2;\n     quad2.y = floor(ceil(blueColor) / 4.0);\n     quad2.x = ceil(blueColor) - (quad2.y * 4.0);\n     \n     highp vec2 texPos1;\n     texPos1.x = (quad1.x * 1.0/4.0) + 0.5/64.0 + ((1.0/4.0 - 1.0/64.0) * textureColor.r);\n     texPos1.y = (quad1.y * 1.0/4.0) + 0.5/64.0 + ((1.0/4.0 - 1.0/64.0) * textureColor.g);\n     \n     highp vec2 texPos2;\n     texPos2.x = (quad2.x * 1.0/4.0) + 0.5/64.0 + ((1.0/4.0 - 1.0/64.0) * textureColor.r);\n     texPos2.y = (quad2.y * 1.0/4.0) + 0.5/64.0 + ((1.0/4.0 - 1.0/64.0) * textureColor.g);\n     \n     lowp vec4 newColor1 = texture2D(inputImageTexture2, texPos1);\n     lowp vec4 newColor2 = texture2D(inputImageTexture2, texPos2);\n     \n     lowp vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n     gl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), strength);\n }"

    goto :goto_0

    :cond_0
    const-string v0, " precision mediump float;\n varying highp vec2 textureCoordinate;\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; // lookup texture\n uniform lowp float strength;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     mediump float blueColor = textureColor.b * 63.0;\n     \n     mediump vec2 quad1;\n     quad1.y = floor(floor(blueColor) / 8.0);\n     quad1.x = floor(blueColor) - (quad1.y * 8.0);\n     \n     mediump vec2 quad2;\n     quad2.y = floor(ceil(blueColor) / 8.0);\n     quad2.x = ceil(blueColor) - (quad2.y * 8.0);\n     \n     highp vec2 texPos1;\n     texPos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n     texPos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n     \n     highp vec2 texPos2;\n     texPos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n     texPos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n     \n     lowp vec4 newColor1 = texture2D(inputImageTexture2, texPos1);\n     lowp vec4 newColor2 = texture2D(inputImageTexture2, texPos2);\n     \n     lowp vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n     gl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), strength);\n }"

    :goto_0
    const-string v1, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    .line 1
    invoke-direct {p0, v1, v0}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mStrength:F

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mLookupSourceTexture:I

    .line 4
    iput p2, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mColorLookupTableSize:I

    .line 5
    iput-object p1, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mColorLookupTableName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$002(Lcom/miui/filtersdk/filter/base/ColorLookupFilter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mLookupSourceTexture:I

    return p1
.end method

.method public static synthetic access$100(Lcom/miui/filtersdk/filter/base/ColorLookupFilter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mColorLookupTableName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getColorLookupTableName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mColorLookupTableName:Ljava/lang/String;

    return-object v0
.end method

.method public isDegreeAdjustSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDestroy()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2
    iget v2, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mLookupSourceTexture:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 3
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mLookupSourceTexture:I

    return-void
.end method

.method public onDrawArraysAfter()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mLookupSourceTexture:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const v0, 0x84c3

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v0, 0x84c0

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :cond_0
    return-void
.end method

.method public onDrawArraysPre()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mLookupSourceTexture:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/miui/filtersdk/BeautificationSDK;->sContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mColorLookupTableName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/filtersdk/utils/OpenGlUtils;->loadTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mLookupSourceTexture:I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrawArraysPre reload Texture "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mLookupSourceTexture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorLookupFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v0, 0x84c3

    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 6
    iget v1, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mLookupSourceTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 7
    iget v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mLookupTextureUniform:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 8
    :cond_1
    iget v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mGLStrengthLocation:I

    iget v1, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mStrength:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public onInit()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onInit()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputImageTexture2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mLookupTextureUniform:I

    .line 3
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "strength"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mGLStrengthLocation:I

    return-void
.end method

.method public onInitialized()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onInitialized()V

    .line 2
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter$1;

    invoke-direct {v0, p0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter$1;-><init>(Lcom/miui/filtersdk/filter/base/ColorLookupFilter;)V

    invoke-virtual {p0, v0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDegree(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 1
    iput p1, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mStrength:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorLookupFilter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mColorLookupTableSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mColorLookupTableSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->mColorLookupTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
