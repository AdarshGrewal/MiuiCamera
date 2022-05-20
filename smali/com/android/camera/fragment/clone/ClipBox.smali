.class public Lcom/android/camera/fragment/clone/ClipBox;
.super Ljava/lang/Object;
.source "ClipBox.java"


# instance fields
.field public final mAxisTouchWidth:I

.field public final mAxisWidth:I

.field public final mBgColor:I

.field public mBottom:I

.field public final mCornerRatio:I

.field public mDrawingBottom:I

.field public mDrawingTop:I

.field public final mInnerCornerRatio:I

.field public mLeftAxisLeft:I

.field public mLeftAxisRight:I

.field public final mLineWidth:I

.field public final mPaddingLeft:I

.field public final mPaintNormal:Landroid/graphics/Paint;

.field public final mPointRatio:I

.field public mRightAxisLeft:I

.field public mRightAxisRight:I

.field public final mSemiLineWidth:I

.field public final mTextPaint:Landroid/graphics/Paint;

.field public final mTextWidth:I

.field public final mTintText:Ljava/lang/String;

.field public mTop:I

.field public mVisibleAreaLeft:I

.field public mVisibleAreaRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070715

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLineWidth:I

    .line 4
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mSemiLineWidth:I

    const v1, 0x7f07070d

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mAxisWidth:I

    const v1, 0x7f07070c

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mAxisTouchWidth:I

    .line 7
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mAxisWidth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaddingLeft:I

    const v0, 0x7f070710

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mCornerRatio:I

    const v0, 0x7f07070e

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mInnerCornerRatio:I

    const v0, 0x7f070714

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPointRatio:I

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const v3, 0x7f060349

    invoke-virtual {p1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v0, 0x7f060096

    .line 15
    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mBgColor:I

    const v0, 0x7f12096b

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTintText:Ljava/lang/String;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTextPaint:Landroid/graphics/Paint;

    .line 18
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x7f070712

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const-string/jumbo v2, "sans-serif-medium"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 25
    iget-object v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTintText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 26
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const v1, 0x7f070716

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTextWidth:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mVisibleAreaLeft:I

    iget v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTop:I

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mVisibleAreaRight:I

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisRight:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisLeft:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisLeft:I

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaddingLeft:I

    add-int/2addr v0, v2

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisRight:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    int-to-float v6, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mCornerRatio:I

    int-to-float v7, v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 9
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisRight:I

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mCornerRatio:I

    sub-int v2, v0, v2

    int-to-float v4, v2

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    int-to-float v5, v2

    int-to-float v6, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 10
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisLeft:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisRight:I

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaddingLeft:I

    sub-int/2addr v0, v2

    int-to-float v5, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    int-to-float v6, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mCornerRatio:I

    int-to-float v7, v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 11
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisLeft:I

    int-to-float v3, v0

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    int-to-float v4, v2

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mCornerRatio:I

    add-int/2addr v0, v2

    int-to-float v5, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mBottom:I

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTop:I

    sub-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x1

    .line 15
    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisLeft:I

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mAxisWidth:I

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPointRatio:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 16
    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisLeft:I

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mAxisWidth:I

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPointRatio:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 19
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisLeft:I

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisRight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTextWidth:I

    if-le v0, v2, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 21
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v0, v2

    .line 22
    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTintText:Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisLeft:I

    iget v4, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisRight:I

    sub-int/2addr v4, v3

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 24
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mVisibleAreaLeft:I

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mAxisWidth:I

    add-int/2addr v0, v2

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTop:I

    iget v4, p0, Lcom/android/camera/fragment/clone/ClipBox;->mVisibleAreaRight:I

    sub-int/2addr v4, v2

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mBottom:I

    invoke-virtual {p1, v0, v3, v4, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 25
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisRight:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisLeft:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mInnerCornerRatio:I

    int-to-float v6, v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 29
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisRight:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisLeft:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getClipAxisWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mAxisTouchWidth:I

    return v0
.end method

.method public getLineWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLineWidth:I

    return v0
.end method

.method public setClipBoxLeftAndRight(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mSemiLineWidth:I

    sub-int v1, p1, v0

    iput v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisRight:I

    add-int/2addr v0, p2

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisLeft:I

    .line 3
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mAxisTouchWidth:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisLeft:I

    .line 4
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mVisibleAreaLeft:I

    if-ge p1, v0, :cond_0

    .line 5
    iput v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisLeft:I

    .line 6
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mAxisTouchWidth:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisRight:I

    .line 7
    iget p1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mVisibleAreaRight:I

    if-le p2, p1, :cond_1

    .line 8
    iput p1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisRight:I

    :cond_1
    return-void
.end method

.method public setVisibleArea(IIII)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mVisibleAreaLeft:I

    .line 2
    iput p3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mVisibleAreaRight:I

    .line 3
    iput p2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTop:I

    .line 4
    iput p4, p0, Lcom/android/camera/fragment/clone/ClipBox;->mBottom:I

    .line 5
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mSemiLineWidth:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    sub-int/2addr p4, v0

    .line 6
    iput p4, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    .line 7
    invoke-virtual {p0, p1, p3}, Lcom/android/camera/fragment/clone/ClipBox;->setClipBoxLeftAndRight(II)V

    return-void
.end method
