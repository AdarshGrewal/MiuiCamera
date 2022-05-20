.class public Lmiuix/internal/view/CheckWidgetCircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CheckWidgetCircleDrawable.java"


# static fields
.field public static final PADDING:I = 0x3


# instance fields
.field public mHasStroke:Z

.field public mPaint:Landroid/graphics/Paint;

.field public mScale:F

.field public mStrokeDisableAlpha:I

.field public mStrokeNormalAlpha:I

.field public mStrokePaint:Landroid/graphics/Paint;

.field public mUncheckedDisableAlpha:I

.field public mUncheckedNormalAlpha:I


# direct methods
.method public constructor <init>(III)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lmiuix/internal/view/CheckWidgetCircleDrawable;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mScale:F

    .line 6
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iput p2, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mUncheckedNormalAlpha:I

    .line 9
    iput p3, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mUncheckedDisableAlpha:I

    if-eqz p4, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iput-boolean p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mHasStroke:Z

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    :cond_1
    iput p5, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokeNormalAlpha:I

    .line 15
    iput p6, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokeDisableAlpha:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    .line 3
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int v5, v4, v0

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v4

    .line 4
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v3

    int-to-float v2, v5

    int-to-float v0, v0

    .line 5
    iget v3, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mScale:F

    mul-float/2addr v3, v0

    const/high16 v4, 0x40400000    # 3.0f

    sub-float/2addr v3, v4

    iget-object v5, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6
    iget-boolean v3, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mHasStroke:Z

    if-eqz v3, :cond_0

    .line 7
    iget v3, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mScale:F

    mul-float/2addr v0, v3

    sub-float/2addr v0, v4

    iget-object v3, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mScale:F

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2
    iget-boolean v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mHasStroke:Z

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mUncheckedNormalAlpha:I

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokeNormalAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mUncheckedDisableAlpha:I

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokeDisableAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mScale:F

    return-void
.end method
