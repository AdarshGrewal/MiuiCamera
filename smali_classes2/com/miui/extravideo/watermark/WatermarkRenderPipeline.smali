.class public Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;
.super Ljava/lang/Object;
.source "WatermarkRenderPipeline.java"


# instance fields
.field public mEglCore:Lcom/miui/extravideo/watermark/gles/EglCore;

.field public mParentH:I

.field public mParentW:I

.field public mPostFrameBuffer:Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

.field public mPreFrameBuffer:Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

.field public mRenderSurface:Lcom/miui/extravideo/watermark/gles/PbufferSurface;

.field public mRgbToYuvRender:Lcom/miui/extravideo/watermark/render/RgbToYuvRender;

.field public mWatermarkBitmapTexId:I

.field public mWatermarkH:I

.field public mWatermarkRange:[I

.field public mWatermarkRotation:I

.field public mWatermarkTextureRenderExt:Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;

.field public mWatermarkW:I

.field public mYuvToRgbRender:Lcom/miui/extravideo/watermark/render/YuvToRgbRender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcDualCameraWatermarkLocation(IIIIFFF)[I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x44340000    # 720.0f

    div-float/2addr p0, p1

    mul-float/2addr p4, p0

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p4, p1

    float-to-int p1, p4

    int-to-float p4, p1

    int-to-float p2, p2

    mul-float/2addr p4, p2

    int-to-float p2, p3

    div-float/2addr p4, p2

    float-to-int p2, p4

    mul-float/2addr p5, p0

    .line 2
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p3

    and-int/lit8 p3, p3, -0x2

    mul-float/2addr p6, p0

    .line 3
    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p0

    and-int/lit8 p0, p0, -0x2

    const/4 p4, 0x4

    new-array p4, p4, [I

    const/4 p5, 0x0

    aput p3, p4, p5

    const/4 p3, 0x1

    aput p0, p4, p3

    const/4 p0, 0x2

    aput p2, p4, p0

    const/4 p0, 0x3

    aput p1, p4, p0

    return-object p4
.end method

.method private checkPostFrameBuffer(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mPostFrameBuffer:Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mPostFrameBuffer:Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    .line 3
    invoke-virtual {v0}, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mPostFrameBuffer:Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->release()V

    .line 6
    :cond_1
    new-instance v0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    invoke-direct {v0, p1, p2}, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mPostFrameBuffer:Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    :cond_2
    return-void
.end method

.method private checkPreFrameBuffer(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mPreFrameBuffer:Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mPreFrameBuffer:Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    .line 3
    invoke-virtual {v0}, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mPreFrameBuffer:Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->release()V

    .line 6
    :cond_1
    new-instance v0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    invoke-direct {v0, p1, p2}, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mPreFrameBuffer:Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    :cond_2
    return-void
.end method

.method private getWatermarkRange(IIIZZF)[I
    .locals 7

    const/4 v0, 0x6

    new-array v0, v0, [I

    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_9

    const/16 v6, 0x5a

    if-eq p3, v6, :cond_6

    const/16 v6, 0xb4

    if-eq p3, v6, :cond_3

    const/16 v1, 0x10e

    if-eq p3, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    aput v5, v0, v5

    int-to-float p3, p2

    mul-float/2addr p3, p6

    float-to-int p3, p3

    sub-int p4, p2, p3

    aput p4, v0, v4

    aput p1, v0, v3

    aput p3, v0, v2

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    aput v5, v0, v5

    int-to-float p3, p2

    mul-float/2addr p3, p6

    float-to-int p3, p3

    sub-int p4, p2, p3

    aput p4, v0, v4

    .line 2
    div-int/lit8 p4, p1, 0x2

    aput p4, v0, v3

    aput p3, v0, v2

    goto :goto_0

    .line 3
    :cond_2
    div-int/lit8 p3, p1, 0x2

    aput p3, v0, v5

    int-to-float p4, p2

    mul-float/2addr p4, p6

    float-to-int p4, p4

    sub-int p5, p2, p4

    aput p5, v0, v4

    aput p3, v0, v3

    aput p4, v0, v2

    goto/16 :goto_3

    :cond_3
    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    aput v5, v0, v5

    aput v5, v0, v4

    int-to-float p3, p1

    mul-float/2addr p3, p6

    float-to-int p3, p3

    aput p3, v0, v3

    aput p2, v0, v2

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    aput v5, v0, v5

    aput v5, v0, v4

    int-to-float p3, p1

    mul-float/2addr p3, p6

    float-to-int p3, p3

    aput p3, v0, v3

    int-to-float p3, p2

    mul-float/2addr p3, v1

    float-to-int p3, p3

    aput p3, v0, v2

    goto :goto_1

    :cond_5
    aput v5, v0, v5

    .line 4
    div-int/lit8 p3, p2, 0x2

    aput p3, v0, v4

    int-to-float p4, p1

    mul-float/2addr p4, p6

    float-to-int p4, p4

    aput p4, v0, v3

    aput p3, v0, v2

    :goto_0
    move p4, v4

    move p3, v5

    goto/16 :goto_5

    :cond_6
    if-eqz p4, :cond_7

    if-eqz p5, :cond_7

    aput v5, v0, v5

    aput v5, v0, v4

    aput p1, v0, v3

    int-to-float p3, p2

    mul-float/2addr p3, p6

    float-to-int p3, p3

    aput p3, v0, v2

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_8

    .line 5
    div-int/lit8 p3, p1, 0x2

    aput p3, v0, v5

    aput v5, v0, v4

    aput p3, v0, v3

    int-to-float p3, p2

    mul-float/2addr p3, p6

    float-to-int p3, p3

    aput p3, v0, v2

    goto :goto_4

    :cond_8
    aput v5, v0, v5

    aput v5, v0, v4

    .line 6
    div-int/lit8 p3, p1, 0x2

    aput p3, v0, v3

    int-to-float p3, p2

    mul-float/2addr p3, p6

    float-to-int p3, p3

    aput p3, v0, v2

    :goto_1
    move p3, v5

    :goto_2
    move p4, p3

    goto :goto_5

    :cond_9
    if-eqz p4, :cond_a

    if-eqz p5, :cond_a

    int-to-float p3, p1

    mul-float/2addr p3, p6

    float-to-int p3, p3

    sub-int p4, p1, p3

    aput p4, v0, v5

    aput v5, v0, v4

    aput p3, v0, v3

    aput p2, v0, v2

    goto :goto_4

    :cond_a
    if-eqz p4, :cond_b

    int-to-float p3, p1

    mul-float/2addr p3, p6

    float-to-int p3, p3

    sub-int p4, p1, p3

    aput p4, v0, v5

    int-to-float p4, p2

    const p5, 0x3ecccccd    # 0.4f

    mul-float/2addr p5, p4

    float-to-int p5, p5

    aput p5, v0, v4

    aput p3, v0, v3

    mul-float/2addr p4, v1

    float-to-int p3, p4

    aput p3, v0, v2

    :goto_3
    move p3, v4

    goto :goto_2

    :cond_b
    int-to-float p3, p1

    mul-float/2addr p3, p6

    float-to-int p3, p3

    sub-int p4, p1, p3

    aput p4, v0, v5

    aput v5, v0, v4

    aput p3, v0, v3

    .line 7
    div-int/lit8 p3, p2, 0x2

    aput p3, v0, v2

    :goto_4
    move p3, v4

    move p4, v5

    .line 8
    :goto_5
    aget p5, v0, v5

    div-int/2addr p5, v3

    mul-int/2addr p5, v3

    aput p5, v0, v5

    .line 9
    aget p5, v0, v4

    div-int/2addr p5, v3

    mul-int/2addr p5, v3

    aput p5, v0, v4

    .line 10
    aget p5, v0, v3

    const/4 p6, 0x4

    div-int/2addr p5, p6

    mul-int/2addr p5, p6

    aput p5, v0, v3

    .line 11
    aget p5, v0, v2

    div-int/2addr p5, p6

    mul-int/2addr p5, p6

    aput p5, v0, v2

    if-ne p3, v4, :cond_c

    .line 12
    aget p3, v0, v5

    aget p5, v0, v3

    add-int/2addr p3, p5

    if-eq p3, p1, :cond_c

    .line 13
    aget p3, v0, v5

    sub-int/2addr p1, p3

    aget p3, v0, v3

    sub-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    aput p1, v0, p6

    goto :goto_6

    :cond_c
    aput v5, v0, p6

    :goto_6
    const/4 p1, 0x5

    if-ne p4, v4, :cond_d

    .line 14
    aget p3, v0, v4

    aget p4, v0, v2

    add-int/2addr p3, p4

    if-eq p3, p2, :cond_d

    .line 15
    aget p3, v0, v4

    sub-int/2addr p2, p3

    aget p3, v0, v2

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    aput p2, v0, p1

    goto :goto_7

    :cond_d
    aput v5, v0, p1

    :goto_7
    return-object v0
.end method

.method private initEGL(Landroid/opengl/EGLContext;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mEglCore:Lcom/miui/extravideo/watermark/gles/EglCore;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/miui/extravideo/watermark/gles/EglCore;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/miui/extravideo/watermark/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mEglCore:Lcom/miui/extravideo/watermark/gles/EglCore;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mRenderSurface:Lcom/miui/extravideo/watermark/gles/PbufferSurface;

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lcom/miui/extravideo/watermark/gles/PbufferSurface;

    iget-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mEglCore:Lcom/miui/extravideo/watermark/gles/EglCore;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v1}, Lcom/miui/extravideo/watermark/gles/PbufferSurface;-><init>(Lcom/miui/extravideo/watermark/gles/EglCore;II)V

    iput-object p1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mRenderSurface:Lcom/miui/extravideo/watermark/gles/PbufferSurface;

    :cond_1
    return-void
.end method


# virtual methods
.method public getWatermarkRange(IIIZZ)[I
    .locals 7

    add-int/lit16 p3, p3, 0x10e

    .line 1
    rem-int/lit16 v3, p3, 0x168

    const v6, 0x3de147ae    # 0.11f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->getWatermarkRange(IIIZZF)[I

    move-result-object p1

    return-object p1
.end method

.method public init(IILandroid/graphics/Bitmap;[FI)V
    .locals 9

    .line 1
    iput p1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mParentW:I

    .line 2
    iput p2, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mParentH:I

    .line 3
    iput p5, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkRotation:I

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->initEGL(Landroid/opengl/EGLContext;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p5

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->getWatermarkRange(IIIZZ)[I

    move-result-object p5

    iput-object p5, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkRange:[I

    const/4 v0, 0x2

    .line 6
    aget v1, p5, v0

    iput v1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkW:I

    const/4 v1, 0x3

    .line 7
    aget p5, p5, v1

    iput p5, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkH:I

    .line 8
    iget-object p5, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mRenderSurface:Lcom/miui/extravideo/watermark/gles/PbufferSurface;

    invoke-virtual {p5}, Lcom/miui/extravideo/watermark/gles/EglSurfaceBase;->makeCurrent()V

    .line 9
    new-instance p5, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    iget v1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkW:I

    iget v2, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkH:I

    invoke-direct {p5, v1, v2}, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;-><init>(II)V

    iput-object p5, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mPreFrameBuffer:Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    .line 10
    new-instance p5, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    iget v1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkW:I

    iget v2, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkH:I

    invoke-direct {p5, v1, v2}, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;-><init>(II)V

    iput-object p5, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mPostFrameBuffer:Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    .line 11
    new-instance p5, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;

    invoke-direct {p5}, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;-><init>()V

    iput-object p5, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mYuvToRgbRender:Lcom/miui/extravideo/watermark/render/YuvToRgbRender;

    .line 12
    new-instance p5, Lcom/miui/extravideo/watermark/render/RgbToYuvRender;

    invoke-direct {p5}, Lcom/miui/extravideo/watermark/render/RgbToYuvRender;-><init>()V

    iput-object p5, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mRgbToYuvRender:Lcom/miui/extravideo/watermark/render/RgbToYuvRender;

    .line 13
    iget p5, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkRotation:I

    add-int/lit16 v1, p5, 0x168

    rem-int/lit16 v1, v1, 0x168

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1

    add-int/lit16 p5, p5, 0x168

    rem-int/lit16 p5, p5, 0x168

    const/16 v1, 0x10e

    if-ne p5, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, p1

    move v3, p2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, p1

    move v2, p2

    .line 14
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 p1, 0x0

    aget v6, p4, p1

    const/4 p2, 0x1

    aget v7, p4, p2

    aget v8, p4, v0

    invoke-static/range {v2 .. v8}, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->calcDualCameraWatermarkLocation(IIIIFFF)[I

    move-result-object p4

    .line 15
    aget p5, p4, p1

    iget-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkRange:[I

    const/4 v1, 0x4

    aget v1, v0, v1

    sub-int/2addr p5, v1

    aput p5, p4, p1

    .line 16
    aget p1, p4, p2

    const/4 p5, 0x5

    aget p5, v0, p5

    sub-int/2addr p1, p5

    aput p1, p4, p2

    .line 17
    new-instance p1, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;

    iget p5, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkW:I

    iget v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkH:I

    if-le p5, v0, :cond_2

    goto :goto_2

    :cond_2
    move p5, v0

    :goto_2
    iget v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkW:I

    iget v1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkH:I

    if-le v0, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-direct {p1, p5, v0, p4}, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;-><init>(II[I)V

    iput-object p1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkTextureRenderExt:Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;

    const/4 p1, -0x1

    .line 18
    invoke-static {p3, p1, p2}, Lcom/miui/extravideo/watermark/gles/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result p1

    iput p1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkBitmapTexId:I

    .line 19
    iget-object p1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mRenderSurface:Lcom/miui/extravideo/watermark/gles/PbufferSurface;

    invoke-virtual {p1}, Lcom/miui/extravideo/watermark/gles/EglSurfaceBase;->makeNothingCurrent()V

    return-void
.end method

.method public process([B)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mRenderSurface:Lcom/miui/extravideo/watermark/gles/PbufferSurface;

    invoke-virtual {v0}, Lcom/miui/extravideo/watermark/gles/EglSurfaceBase;->makeCurrent()V

    .line 2
    iget v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkW:I

    iget v1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkH:I

    invoke-direct {p0, v0, v1}, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->checkPreFrameBuffer(II)V

    .line 3
    iget-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mPreFrameBuffer:Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    invoke-virtual {v0}, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->getFrameBufferId()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 4
    iget v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkW:I

    iget v2, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkH:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 5
    invoke-static {v2, v2, v2, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v4, 0x4100

    .line 6
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 7
    iget-object v5, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mYuvToRgbRender:Lcom/miui/extravideo/watermark/render/YuvToRgbRender;

    iget v6, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mParentW:I

    iget v7, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mParentH:I

    iget-object v8, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkRange:[I

    invoke-virtual {v5, p1, v6, v7, v8}, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->draw([BII[I)V

    .line 8
    iget-object p1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkTextureRenderExt:Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;

    iget v5, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkBitmapTexId:I

    iget v6, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkRotation:I

    invoke-virtual {p1, v5, v6}, Lcom/miui/extravideo/watermark/render/WatermarkTextureRenderExt;->draw(II)V

    .line 9
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 10
    iget p1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkW:I

    iget v5, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkH:I

    invoke-direct {p0, p1, v5}, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->checkPostFrameBuffer(II)V

    .line 11
    iget-object p1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mPostFrameBuffer:Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    invoke-virtual {p1}, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->getFrameBufferId()I

    move-result p1

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 12
    iget p1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkW:I

    iget v5, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkH:I

    invoke-static {v3, v3, p1, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 13
    invoke-static {v2, v2, v2, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 14
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 15
    iget-object p1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mRgbToYuvRender:Lcom/miui/extravideo/watermark/render/RgbToYuvRender;

    iget-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mPreFrameBuffer:Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;

    invoke-virtual {v0}, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->getFrameBufferTextureId()I

    move-result v0

    iget v2, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkW:I

    iget v4, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkH:I

    invoke-virtual {p1, v0, v2, v4}, Lcom/miui/extravideo/watermark/render/RgbToYuvRender;->draw(III)V

    .line 16
    iget-object p1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkRange:[I

    const/4 v0, 0x1

    aget v2, p1, v0

    iget v4, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mParentW:I

    mul-int/2addr v2, v4

    aget v5, p1, v3

    add-int/2addr v2, v5

    add-int/2addr v2, v3

    .line 17
    aget v5, p1, v0

    shr-int/lit8 v0, v5, 0x1

    mul-int/2addr v0, v4

    aget p1, p1, v3

    add-int/2addr v0, p1

    add-int/2addr v0, v3

    .line 18
    iget p1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkW:I

    iget v4, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mWatermarkH:I

    invoke-static {p1, v4, v2, v0}, Lcom/miui/extravideo/watermark/render/YuvTextureJNI;->merge(IIII)V

    .line 19
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 20
    iget-object p1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mRenderSurface:Lcom/miui/extravideo/watermark/gles/PbufferSurface;

    invoke-virtual {p1}, Lcom/miui/extravideo/watermark/gles/EglSurfaceBase;->makeNothingCurrent()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mRenderSurface:Lcom/miui/extravideo/watermark/gles/PbufferSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/miui/extravideo/watermark/gles/PbufferSurface;->release()V

    .line 3
    iput-object v1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mRenderSurface:Lcom/miui/extravideo/watermark/gles/PbufferSurface;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mEglCore:Lcom/miui/extravideo/watermark/gles/EglCore;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/miui/extravideo/watermark/gles/EglCore;->release()V

    .line 6
    iput-object v1, p0, Lcom/miui/extravideo/watermark/WatermarkRenderPipeline;->mEglCore:Lcom/miui/extravideo/watermark/gles/EglCore;

    :cond_1
    return-void
.end method
