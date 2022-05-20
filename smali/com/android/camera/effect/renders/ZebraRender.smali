.class public Lcom/android/camera/effect/renders/ZebraRender;
.super Lcom/android/camera/effect/renders/ConvolutionEffectRender;
.source "ZebraRender.java"


# static fields
.field public static final FRAG:Ljava/lang/String; = "precision highp float; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform vec2 uSize; \nuniform vec2 uStep; \nuniform float uWidth; \nuniform float uGap; \nuniform float uOffset; \nuniform float uAlpha; \nuniform vec3 uOverColor; \nuniform vec3 uUnderColor; \nuniform float uOverExposure; \nuniform float uUnderExposure; \nfloat smoothstep_pulse(float e0, float e1, float e2, float e3, float x) {\n    return smoothstep(e0,e1,x) - smoothstep(e2,e3,x);\n}\nvoid main() { \n    vec3 color = texture2D(sTexture, vTexCoord).rgb; \n    vec3 factor = vec3(0.2125, 0.7154, 0.0721); \n    float Y = dot(color, factor); \n    vec2 coord = vTexCoord * uSize; // convert to world coordinate \n    float x = coord.x + uOffset; \n    float y = coord.y; \n    float diff; \n    if (y > x) { \n        diff = y - x; \n    } else { \n        diff = x - y + uWidth; \n    } \n    float smoothWidth = uWidth * 0.25; \n    float eachWidth = mod(diff, uGap + uWidth);\n    if (eachWidth < uWidth) { \n        if (Y >= uOverExposure) { \n            vec4 overlay = vec4(uOverColor, Y)*uAlpha; \n            vec3 mixed = mix(color,overlay.rgb,smoothstep_pulse(0.0,0.25,0.75,1.0,eachWidth/uWidth)); \n            gl_FragColor = vec4(mixed,1.0); \n        } else if (Y < uUnderExposure) { \n            vec4 overlay = vec4(uUnderColor, Y)*uAlpha; \n            vec3 mixed = mix(color,overlay.rgb,smoothstep_pulse(0.0,0.25,0.75,1.0,eachWidth/uWidth)); \n            gl_FragColor = vec4(mixed,1.0); \n        } else { \n            gl_FragColor = vec4(color, 1)*uAlpha; \n        } \n    } else { \n        gl_FragColor = vec4(color, 1)*uAlpha; \n    } \n}"


# instance fields
.field public mGap:F

.field public mOffset:F

.field public mOverColor:I

.field public mOverExposure:F

.field public mUnderColor:I

.field public mUnderExposure:F

.field public mUniformGapH:I

.field public mUniformOffsetH:I

.field public mUniformOverColorH:I

.field public mUniformOverExposureH:I

.field public mUniformSizeH:I

.field public mUniformUnderColorH:I

.field public mUniformUnderExposureH:I

.field public mUniformWidthH:I

.field public mWidth:F


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    const p1, 0x3f7d70a4    # 0.99f

    .line 2
    iput p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mOverExposure:F

    const p1, 0x3c23d70a    # 0.01f

    .line 3
    iput p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUnderExposure:F

    const p1, 0xcd5c60

    .line 4
    iput p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mOverColor:I

    const p1, 0x6db2f4

    .line 5
    iput p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUnderColor:I

    const/high16 p1, 0x41000000    # 8.0f

    .line 6
    iput p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mWidth:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 7
    iput p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mGap:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 8
    iput p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mOffset:F

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    const p1, 0x3f7d70a4    # 0.99f

    .line 10
    iput p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mOverExposure:F

    const p1, 0x3c23d70a    # 0.01f

    .line 11
    iput p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUnderExposure:F

    const p1, 0xcd5c60

    .line 12
    iput p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mOverColor:I

    const p1, 0x6db2f4

    .line 13
    iput p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUnderColor:I

    const/high16 p1, 0x41000000    # 8.0f

    .line 14
    iput p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mWidth:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 15
    iput p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mGap:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 16
    iput p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mOffset:F

    return-void
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mOffset:F

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result p1

    return p1
.end method

.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "precision highp float; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform vec2 uSize; \nuniform vec2 uStep; \nuniform float uWidth; \nuniform float uGap; \nuniform float uOffset; \nuniform float uAlpha; \nuniform vec3 uOverColor; \nuniform vec3 uUnderColor; \nuniform float uOverExposure; \nuniform float uUnderExposure; \nfloat smoothstep_pulse(float e0, float e1, float e2, float e3, float x) {\n    return smoothstep(e0,e1,x) - smoothstep(e2,e3,x);\n}\nvoid main() { \n    vec3 color = texture2D(sTexture, vTexCoord).rgb; \n    vec3 factor = vec3(0.2125, 0.7154, 0.0721); \n    float Y = dot(color, factor); \n    vec2 coord = vTexCoord * uSize; // convert to world coordinate \n    float x = coord.x + uOffset; \n    float y = coord.y; \n    float diff; \n    if (y > x) { \n        diff = y - x; \n    } else { \n        diff = x - y + uWidth; \n    } \n    float smoothWidth = uWidth * 0.25; \n    float eachWidth = mod(diff, uGap + uWidth);\n    if (eachWidth < uWidth) { \n        if (Y >= uOverExposure) { \n            vec4 overlay = vec4(uOverColor, Y)*uAlpha; \n            vec3 mixed = mix(color,overlay.rgb,smoothstep_pulse(0.0,0.25,0.75,1.0,eachWidth/uWidth)); \n            gl_FragColor = vec4(mixed,1.0); \n        } else if (Y < uUnderExposure) { \n            vec4 overlay = vec4(uUnderColor, Y)*uAlpha; \n            vec3 mixed = mix(color,overlay.rgb,smoothstep_pulse(0.0,0.25,0.75,1.0,eachWidth/uWidth)); \n            gl_FragColor = vec4(mixed,1.0); \n        } else { \n            gl_FragColor = vec4(color, 1)*uAlpha; \n        } \n    } else { \n        gl_FragColor = vec4(color, 1)*uAlpha; \n    } \n}"

    return-object v0
.end method

.method public initShader()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShader()V

    .line 2
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUniformSizeH:I

    .line 3
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uOverExposure"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUniformOverExposureH:I

    .line 4
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uUnderExposure"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUniformUnderExposureH:I

    .line 5
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uOverColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUniformOverColorH:I

    .line 6
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uUnderColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUniformUnderColorH:I

    .line 7
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUniformWidthH:I

    .line 8
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uGap"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUniformGapH:I

    .line 9
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUniformOffsetH:I

    return-void
.end method

.method public initShaderValue(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShaderValue(Z)V

    .line 2
    iget p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUniformSizeH:I

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 3
    iget p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUniformOverExposureH:I

    iget v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mOverExposure:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 4
    iget p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUniformUnderExposureH:I

    iget v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUnderExposure:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 5
    iget p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUniformOverColorH:I

    iget v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mOverColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/android/camera/effect/renders/ZebraRender;->mOverColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/android/camera/effect/renders/ZebraRender;->mOverColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {p1, v0, v2, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 6
    iget p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUniformUnderColorH:I

    iget v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUnderColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUnderColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUnderColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {p1, v0, v2, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 7
    iget p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUniformWidthH:I

    iget v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mWidth:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 8
    iget p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUniformGapH:I

    iget v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mGap:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 9
    iget p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUniformOffsetH:I

    iget v0, p0, Lcom/android/camera/effect/renders/ZebraRender;->mOffset:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public setExposureThreshold(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/renders/ZebraRender;->mOverExposure:F

    .line 2
    iput p2, p0, Lcom/android/camera/effect/renders/ZebraRender;->mUnderExposure:F

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->setPreviewSize(II)V

    return-void
.end method
