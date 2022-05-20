.class public Lcom/android/camera/ui/zoom/ZoomTextImageView;
.super Landroid/view/View;
.source "ZoomTextImageView.java"


# static fields
.field public static final TYPE_ICON:I = 0x2

.field public static final TYPE_TEXT_CIRCLE:I = 0x3

.field public static final TYPE_TEXT_NORMAL:I = 0x0

.field public static final TYPE_TEXT_SNAP:I = 0x1

.field public static final mTextActivatedColorState:[I


# instance fields
.field public mBackColorAnim:Landroid/animation/ValueAnimator;

.field public mCircleColor:I

.field public mCirclePaint:Landroid/graphics/Paint;

.field public mCircleSize:I

.field public mCurrentBackgroundColor:I

.field public mCurrentText:Ljava/lang/String;

.field public mCurrentType:I

.field public mIconAlpha:F

.field public mIconCirclePaint:Landroid/graphics/Paint;

.field public mIconRadius:F

.field public mIconShadowPaint:Landroid/graphics/Paint;

.field public mImagePaint:Landroid/graphics/Paint;

.field public mIsSelect:Z

.field public mNormalBackgroundColor:I

.field public mNormalTextColor:Landroid/content/res/ColorStateList;

.field public mNormalTextSize:I

.field public mRotation:F

.field public mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102fe

    aput v2, v0, v1

    .line 1
    sput-object v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextActivatedColorState:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mImagePaint:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    .line 5
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mImagePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 7
    fill-array-data v2, :array_0

    const v3, 0x7f1302fb

    .line 8
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalTextSize:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalTextSize:I

    .line 10
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalTextColor:Landroid/content/res/ColorStateList;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060372

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    .line 12
    iput v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCircleColor:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v3, v0

    sub-int/2addr v2, v3

    div-int/2addr v2, v0

    iput v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCircleSize:I

    .line 15
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIconShadowPaint:Landroid/graphics/Paint;

    .line 16
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIconCirclePaint:Landroid/graphics/Paint;

    .line 17
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIconShadowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIconShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07084b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07084a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIconRadius:F

    .line 21
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIconShadowPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIconCirclePaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method


# virtual methods
.method public getAlpha()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIconAlpha:F

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentType:I

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "X"

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x2

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    if-eq v0, v8, :cond_3

    if-eq v0, v7, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v7

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v7

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/2addr v8, v7

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 11
    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    iget-object v8, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v8

    add-float/2addr v2, v8

    .line 12
    iget-object v8, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 13
    iget-object v9, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    iget-object v10, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v10

    add-float/2addr v9, v10

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 15
    iget v10, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/2addr v11, v7

    int-to-float v11, v11

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/2addr v12, v7

    int-to-float v12, v12

    invoke-virtual {p1, v10, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/2addr v10, v7

    int-to-float v10, v10

    invoke-virtual {p1, v3, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    add-int/2addr v3, v10

    int-to-float v3, v3

    add-float v7, v1, v8

    div-float/2addr v7, v6

    sub-float/2addr v3, v7

    neg-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v2, v4

    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, v1

    sub-float/2addr v2, v8

    div-float/2addr v2, v6

    add-float/2addr v0, v2

    neg-float v1, v9

    div-float/2addr v1, v6

    add-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 20
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v7

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v7

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIconRadius:F

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIconShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIconShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v7

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v7

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIconRadius:F

    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIconCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 23
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v7

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v7

    int-to-float v1, v1

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCircleSize:I

    int-to-float v5, v5

    iget-object v8, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalTextColor:Landroid/content/res/ColorStateList;

    sget-object v5, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextActivatedColorState:[I

    invoke-virtual {v1, v5, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 28
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 30
    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/2addr v8, v7

    int-to-float v8, v8

    invoke-virtual {p1, v2, v5, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v7

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v7

    int-to-float v3, v3

    div-float/2addr v0, v6

    sub-float/2addr v3, v0

    neg-float v0, v1

    div-float/2addr v0, v6

    add-float/2addr v0, v4

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 34
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCircleColor:I

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v7

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/2addr v8, v7

    int-to-float v8, v8

    iget v9, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCircleSize:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalTextColor:Landroid/content/res/ColorStateList;

    sget-object v9, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextActivatedColorState:[I

    invoke-virtual {v8, v9, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 41
    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    iget-object v8, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v8

    add-float/2addr v2, v8

    .line 42
    iget-object v8, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 43
    iget-object v9, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    iget-object v10, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v10

    add-float/2addr v9, v10

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 45
    iget v10, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/2addr v11, v7

    int-to-float v11, v11

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/2addr v12, v7

    int-to-float v12, v12

    invoke-virtual {p1, v10, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/2addr v10, v7

    int-to-float v10, v10

    invoke-virtual {p1, v3, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v7

    int-to-float v3, v3

    add-float v7, v1, v8

    div-float/2addr v7, v6

    sub-float/2addr v3, v7

    neg-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v2, v4

    iget-object v7, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    sub-float/2addr v0, v8

    div-float/2addr v0, v6

    neg-float v1, v9

    div-float/2addr v1, v6

    add-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_1
    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIconAlpha:F

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIconShadowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIconCirclePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentBackgroundColor:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCircleColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCircleColor:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIcon()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentType:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setNormalBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setBackgroundColor(I)V

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mRotation:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setText(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentType:I

    .line 2
    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentText:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public toToggle(ZZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 5
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mIsSelect:Z

    const/4 v0, -0x1

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "backgroundColor"

    if-eqz p1, :cond_2

    new-array p1, v2, [I

    .line 6
    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    aput v2, p1, v1

    aput v0, p1, p2

    invoke-static {p0, v3, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_2
    new-array p1, v2, [I

    aput v0, p1, v1

    .line 7
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    aput v0, p1, p2

    invoke-static {p0, v3, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mBackColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mNormalBackgroundColor:I

    :goto_1
    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomTextImageView;->mCurrentBackgroundColor:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
