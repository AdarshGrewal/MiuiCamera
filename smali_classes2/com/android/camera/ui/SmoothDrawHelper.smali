.class public Lcom/android/camera/ui/SmoothDrawHelper;
.super Ljava/lang/Object;
.source "SmoothDrawHelper.java"


# instance fields
.field public mArcColor:I

.field public mArcPaint:Landroid/graphics/Paint;

.field public mArcPath:Landroid/graphics/Path;

.field public mClipPaint:Landroid/graphics/Paint;

.field public mClipPath:Landroid/graphics/Path;

.field public mLayer:Landroid/graphics/RectF;

.field public mOutterPath:Landroid/graphics/Path;

.field public mPathProvider:Lcom/android/camera/ui/SmoothPathProvider;

.field public mProgress:I

.field public mRadii:[F

.field public mRadius:F

.field public mStrokeColor:I

.field public mStrokePaint:Landroid/graphics/Paint;

.field public mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokeWidth:I

    .line 3
    iput v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokeColor:I

    .line 4
    iput v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mArcColor:I

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    .line 7
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mArcPaint:Landroid/graphics/Paint;

    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mArcColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    .line 13
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mArcPath:Landroid/graphics/Path;

    .line 14
    new-instance v0, Lcom/android/camera/ui/SmoothPathProvider;

    invoke-direct {v0}, Lcom/android/camera/ui/SmoothPathProvider;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mPathProvider:Lcom/android/camera/ui/SmoothPathProvider;

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    return-void
.end method

.method private getNormalPath(Landroid/graphics/Path;Landroid/graphics/RectF;[FFFF)Landroid/graphics/Path;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 2
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p5

    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p6

    iget v2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, p5

    iget p5, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p5, p6

    invoke-virtual {p2, v0, v1, v2, p5}, Landroid/graphics/RectF;->set(FFFF)V

    if-nez p3, :cond_0

    .line 3
    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p4, p4, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-object p1
.end method

.method private getSmoothPathFromProvider(Landroid/graphics/Path;Landroid/graphics/RectF;[FFFF)Landroid/graphics/Path;
    .locals 0

    if-nez p3, :cond_0

    .line 1
    iget-object p3, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mPathProvider:Lcom/android/camera/ui/SmoothPathProvider;

    invoke-virtual {p3, p2, p4, p5, p6}, Lcom/android/camera/ui/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;FFF)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p4, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mPathProvider:Lcom/android/camera/ui/SmoothPathProvider;

    invoke-virtual {p4, p2, p3, p5, p6}, Lcom/android/camera/ui/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;[FFF)V

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mPathProvider:Lcom/android/camera/ui/SmoothPathProvider;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/SmoothPathProvider;->getSmoothPath(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public drawArc(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mProgress:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 3
    iget-object p2, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mArcColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v3, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    int-to-float v5, v0

    iget-object v7, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mArcPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2
    iget-object p2, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    if-eqz p3, :cond_0

    .line 5
    iget-object p2, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public drawStroke(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokeWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokeColor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 4
    iget-object p2, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokeWidth:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object p2, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokeColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p2, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public getArcColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mArcColor:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mProgress:I

    return v0
.end method

.method public getRadii()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mRadii:[F

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokeColor:I

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokeWidth:I

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    add-float/2addr p1, v2

    invoke-virtual {v0, v1, v3, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    iget p1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokeWidth:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokeColor:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget p1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokeWidth:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float/2addr v2, p1

    :cond_1
    move v9, v2

    if-eqz p2, :cond_2

    .line 5
    iget-object v4, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mRadii:[F

    iget v7, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mRadius:F

    move-object v3, p0

    move v8, v9

    .line 6
    invoke-direct/range {v3 .. v9}, Lcom/android/camera/ui/SmoothDrawHelper;->getSmoothPathFromProvider(Landroid/graphics/Path;Landroid/graphics/RectF;[FFFF)Landroid/graphics/Path;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mRadii:[F

    iget v7, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mRadius:F

    move-object v3, p0

    move v8, v9

    .line 7
    invoke-direct/range {v3 .. v9}, Lcom/android/camera/ui/SmoothDrawHelper;->getNormalPath(Landroid/graphics/Path;Landroid/graphics/RectF;[FFFF)Landroid/graphics/Path;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    goto :goto_2

    .line 10
    :cond_3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    .line 11
    :goto_2
    iget-object p1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method

.method public setArcColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mArcColor:I

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mProgress:I

    return-void
.end method

.method public setRadii([F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mRadii:[F

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mRadius:F

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokeColor:I

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/SmoothDrawHelper;->mStrokeWidth:I

    return-void
.end method
