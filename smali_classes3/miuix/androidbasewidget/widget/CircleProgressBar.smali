.class public Lmiuix/androidbasewidget/widget/CircleProgressBar;
.super Lmiuix/androidbasewidget/widget/ProgressBar;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;
    }
.end annotation


# static fields
.field public static final ALPHA_NEED_DRAW_MIN_VALUE:I = 0xa

.field public static final DEFAULT_FADE_OUT_DURATION:I = 0x12c

.field public static final DEFAULT_ROTATE_VELOCITY:I = 0x12c


# instance fields
.field public mArcPath:Landroid/graphics/Path;

.field public mArcRect:Landroid/graphics/RectF;

.field public mBitmapForSoftLayer:Landroid/graphics/Bitmap;

.field public mCanvasForSoftLayer:Landroid/graphics/Canvas;

.field public mChangeProgressAnimator:Landroid/animation/Animator;

.field public mCurrentLevel:I

.field public mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

.field public mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

.field public mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

.field public mPaint:Landroid/graphics/Paint;

.field public mPrevAlpha:I

.field public mPrevLevel:I

.field public mProgressChangedListener:Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;

.field public mProgressLevels:[I

.field public mRotateVelocity:I

.field public mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    const/16 p2, 0x12c

    .line 5
    iput p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mRotateVelocity:I

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 7
    sget p2, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progressbar_circle_color_light:I

    .line 8
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 9
    sget p2, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progressbar_circle_color_dark:I

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 11
    sget p3, Lmiuix/androidbasewidget/R$attr;->circleProgressBarColor:I

    invoke-static {p1, p3, p2}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;II)I

    move-result p1

    .line 12
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private calcDuration(I)I
    .locals 1

    mul-int/lit16 p1, p1, 0x3e8

    .line 1
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mRotateVelocity:I

    div-int/2addr p1, v0

    return p1
.end method

.method private drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    .locals 9

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p2

    const/high16 v0, 0x43b40000    # 360.0f

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, p2

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, p2

    .line 5
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, p2

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p2

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    .line 6
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 7
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 10
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    mul-float/2addr p5, v0

    invoke-virtual {p2, v1, v2, p5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 11
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    iget-object p5, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 12
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 p5, 0x0

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 15
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 17
    :cond_1
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    .line 18
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 19
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 20
    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    .line 21
    new-instance p2, Landroid/graphics/Canvas;

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    .line 22
    :cond_2
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 23
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 24
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 25
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    iget-object v4, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    const/high16 v5, -0x3d4c0000    # -90.0f

    mul-float v6, p5, v0

    const/4 v7, 0x1

    iget-object v8, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 26
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 27
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 28
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 29
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p5

    iget p5, p5, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p5, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 30
    :goto_0
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_3

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 32
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result p5

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    .line 33
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result p5

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr p5, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p5, v1

    div-int/lit8 p5, p5, 0x2

    .line 34
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 35
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 36
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    int-to-float v0, p4

    int-to-float v4, p5

    invoke-virtual {p1, v3, v0, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 37
    div-int/lit8 v1, v1, 0x2

    sub-int v0, p4, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v3, p5, v2

    add-int/2addr p4, v1

    add-int/2addr p5, v2

    invoke-virtual {p2, v0, v3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 38
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    if-eqz p3, :cond_4

    .line 40
    invoke-virtual {p3, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 41
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method private getBackDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method private getDrawables([I)[Landroid/graphics/drawable/Drawable;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    array-length v1, p1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 4
    aget v4, p1, v3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    .line 5
    aget-object v4, v1, v3

    aget-object v5, v1, v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    aget-object v6, v1, v3

    .line 6
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 7
    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getForeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method private getIntrinsicHeight()I
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 3
    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4
    :cond_0
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 5
    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    return v1
.end method

.method private getIntrinsicWidth()I
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 3
    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4
    :cond_0
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 5
    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    return v1
.end method

.method private getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method private getRate()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getProgressLevelCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4
    :cond_0
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5
    :cond_1
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    aget-object v2, v2, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    return-void
.end method

.method public getPrevAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    return v0
.end method

.method public getProgressLevelCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, v0

    add-int/2addr v1, v0

    :goto_0
    return v1
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getBackDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getForeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    .line 2
    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getRate()F

    move-result v6

    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    rsub-int v7, v0, 0xff

    move-object v1, p0

    move-object v2, p1

    .line 3
    invoke-direct/range {v1 .. v7}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    .line 4
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 5
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevLevel:I

    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getBackDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevLevel:I

    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getForeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevLevel:I

    .line 6
    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getRate()F

    move-result v6

    iget v7, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    move-object v1, p0

    move-object v2, p1

    .line 7
    invoke-direct/range {v1 .. v7}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onMeasure(II)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getIntrinsicWidth()I

    move-result p1

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDrawablesForLevels([I[I[I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p2}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 19
    invoke-direct {p0, p3}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object p3, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 5
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    array-length p1, p2

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    .line 7
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 8
    array-length p1, p3

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_2

    aget-object v2, p3, v1

    .line 9
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_6

    .line 10
    array-length p1, p2

    move p3, v0

    :goto_3
    if-ge p3, p1, :cond_5

    aget-object v1, p2, p3

    .line 11
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 12
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_4

    .line 13
    :cond_3
    instance-of v2, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_4

    .line 14
    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'middles\' must a bitmap or nine patch drawable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_5
    new-instance p1, Landroid/graphics/RectF;

    aget-object p3, p2, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    add-int/lit8 p3, p3, -0x5

    int-to-float p3, p3

    aget-object v1, p2, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    aget-object v2, p2, v0

    .line 17
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p2, p2, 0x5

    int-to-float p2, p2

    invoke-direct {p1, p3, v1, v2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    :cond_6
    return-void
.end method

.method public setOnProgressChangedListener(Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressChangedListener:Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;

    return-void
.end method

.method public setPrevAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    array-length v0, v0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_2

    .line 4
    iget-object v4, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    aget v4, v4, v2

    if-ge p1, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    .line 5
    :goto_2
    iget p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    if-eq v0, p1, :cond_4

    .line 6
    iget p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    iput p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevLevel:I

    .line 7
    iput v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    const/16 p1, 0xff

    .line 8
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setPrevAlpha(I)V

    const-string p1, "prevAlpha"

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    .line 9
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 11
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 13
    :cond_4
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressChangedListener:Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;

    if-eqz p1, :cond_5

    .line 14
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressChangedListener:Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;

    invoke-interface {p1}, Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;->onProgressChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressByAnimator(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->stopProgressAnimator()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const-string p1, "progress"

    .line 4
    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    .line 5
    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->calcDuration(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 6
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_0

    .line 7
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public setProgressLevels([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    return-void
.end method

.method public setRotateVelocity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mRotateVelocity:I

    return-void
.end method

.method public setThumb(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public stopProgressAnimator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method
