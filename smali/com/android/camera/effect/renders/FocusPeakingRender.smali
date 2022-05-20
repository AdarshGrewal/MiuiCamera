.class public Lcom/android/camera/effect/renders/FocusPeakingRender;
.super Lcom/android/camera/effect/renders/ConvolutionEffectRender;
.source "FocusPeakingRender.java"


# static fields
.field public static final DEFAULT_PEAK_COLOR:I = 0xf9310f

.field public static final DEFAULT_THRESHOLD:F

.field public static final FRAG:Ljava/lang/String; = "precision mediump float; \nuniform float uThreshold; \nuniform vec3 uPeakColor; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nfloat laplacian_filter() { \n    vec2 step = uStep; \n    float tl = texture2D(sTexture, vTexCoord + vec2(-step.x, step.y)).r; \n    float tm = texture2D(sTexture, vTexCoord + vec2(0.0,     step.y)).r; \n    float tr = texture2D(sTexture, vTexCoord + vec2(step.x,  step.y)).r; \n    float ml = texture2D(sTexture, vTexCoord + vec2(-step.x,    0.0)).r; \n    float mr = texture2D(sTexture, vTexCoord + vec2(step.x,     0.0)).r; \n    float bl = texture2D(sTexture, vTexCoord + vec2(-step.x,    -step.y)).r; \n    float bm = texture2D(sTexture, vTexCoord + vec2(0.0,    -step.y)).r; \n    float br = texture2D(sTexture, vTexCoord + vec2(step.x,    -step.y)).r; \n    float GradX = -tl + tr - 2.0 * ml + 2.0 * mr - bl + br; \n    float GradY = tl +  2.0 * tm + tr - bl - 2.0 * bm - br; \n    return length(vec2(GradX,GradY)); \n} \nvoid main() { \n    float gray = laplacian_filter(); \n    if (gray > uThreshold) { \n        gl_FragColor.rgb = uPeakColor; \n        gl_FragColor.a = 1.0; \n    } else { \n        gl_FragColor = texture2D(sTexture, vTexCoord); \n    } \n}"


# instance fields
.field public mPeakColor:I

.field public mThreshold:F

.field public mUniformPeakColorH:I

.field public mUniformThresholdH:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "camera_peaking_mf_threshold"

    const/16 v1, 0x3c

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lcom/android/camera/effect/renders/FocusPeakingRender;->DEFAULT_THRESHOLD:F

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 2
    sget p1, Lcom/android/camera/effect/renders/FocusPeakingRender;->DEFAULT_THRESHOLD:F

    iput p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mThreshold:F

    const p1, 0xf9310f

    .line 3
    iput p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mPeakColor:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 5
    sget p1, Lcom/android/camera/effect/renders/FocusPeakingRender;->DEFAULT_THRESHOLD:F

    iput p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mThreshold:F

    const p1, 0xf9310f

    .line 6
    iput p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mPeakColor:I

    return-void
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "precision mediump float; \nuniform float uThreshold; \nuniform vec3 uPeakColor; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nfloat laplacian_filter() { \n    vec2 step = uStep; \n    float tl = texture2D(sTexture, vTexCoord + vec2(-step.x, step.y)).r; \n    float tm = texture2D(sTexture, vTexCoord + vec2(0.0,     step.y)).r; \n    float tr = texture2D(sTexture, vTexCoord + vec2(step.x,  step.y)).r; \n    float ml = texture2D(sTexture, vTexCoord + vec2(-step.x,    0.0)).r; \n    float mr = texture2D(sTexture, vTexCoord + vec2(step.x,     0.0)).r; \n    float bl = texture2D(sTexture, vTexCoord + vec2(-step.x,    -step.y)).r; \n    float bm = texture2D(sTexture, vTexCoord + vec2(0.0,    -step.y)).r; \n    float br = texture2D(sTexture, vTexCoord + vec2(step.x,    -step.y)).r; \n    float GradX = -tl + tr - 2.0 * ml + 2.0 * mr - bl + br; \n    float GradY = tl +  2.0 * tm + tr - bl - 2.0 * bm - br; \n    return length(vec2(GradX,GradY)); \n} \nvoid main() { \n    float gray = laplacian_filter(); \n    if (gray > uThreshold) { \n        gl_FragColor.rgb = uPeakColor; \n        gl_FragColor.a = 1.0; \n    } else { \n        gl_FragColor = texture2D(sTexture, vTexCoord); \n    } \n}"

    return-object v0
.end method

.method public initShader()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShader()V

    .line 2
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uThreshold"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mUniformThresholdH:I

    .line 3
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uPeakColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mUniformPeakColorH:I

    return-void
.end method

.method public initShaderValue(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShaderValue(Z)V

    .line 2
    iget p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mUniformThresholdH:I

    iget v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mThreshold:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 3
    iget p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mUniformPeakColorH:I

    iget v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mPeakColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mPeakColor:I

    .line 4
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mPeakColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 5
    invoke-static {p1, v0, v2, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    return-void
.end method

.method public setPeakColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mPeakColor:I

    return-void
.end method

.method public setThreshold(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mThreshold:F

    return-void
.end method
