.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;
.super Lcom/android/camera/ui/drawable/snap/PaintPattern;
.source "CameraSnapPaintRoundPatternBitmap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/ui/drawable/snap/PaintPattern<",
        "Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;",
        ">;"
    }
.end annotation


# instance fields
.field public alphaCurrent:I

.field public alphaDst:I

.field public alphaSrc:I

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mOffsetX:F

.field public mOffsetY:F

.field public mPaint:Landroid/graphics/Paint;

.field public matrix:Landroid/graphics/Matrix;

.field public scaleCurrent:F

.field public scaleDst:F

.field public scaleSrc:F


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;-><init>(Lcom/android/camera/ui/drawable/CameraPaintBase;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iput-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private drawCenterBitmap(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->matrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->matrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->matrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->matrix:Landroid/graphics/Matrix;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->alphaCurrent:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleCurrent:F

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v1, v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mOffsetX:F

    iget v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleCurrent:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    check-cast v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v2, v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget-object v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 12
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mOffsetY:F

    iget v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleCurrent:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mPaint:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public directlyResult()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleSrc:F

    .line 2
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleCurrent:F

    .line 3
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleDst:F

    const/16 v0, 0xff

    .line 4
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->alphaSrc:I

    .line 5
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->alphaCurrent:I

    .line 6
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->alphaDst:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->drawCenterBitmap(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public interceptDraw()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepareAlpha(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->alphaSrc:I

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->alphaDst:I

    return-void
.end method

.method public prepareTargetPattern()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleSrc:F

    .line 2
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleCurrent:F

    .line 3
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleDst:F

    return-void
.end method

.method public recycle()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->recycle()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public setOffset(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mOffsetX:F

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->mOffsetY:F

    return-void
.end method

.method public setTargetScale(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleCurrent:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleSrc:F

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleDst:F

    return-void
.end method

.method public updateValue(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleSrc:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleDst:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->calculateCurrentValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->scaleCurrent:F

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->alphaSrc:I

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->alphaDst:I

    if-eq v0, v1, :cond_1

    int-to-float v0, v0

    int-to-float v1, v1

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->calculateCurrentValue(FFF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->alphaCurrent:I

    :cond_1
    return-void
.end method
