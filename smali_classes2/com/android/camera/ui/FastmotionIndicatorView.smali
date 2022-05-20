.class public Lcom/android/camera/ui/FastmotionIndicatorView;
.super Landroid/view/View;
.source "FastmotionIndicatorView.java"


# static fields
.field public static final HEIGHT_COMPENSATION:F = 1.1f

.field public static final WIDTH_COMPENSATION:F = 1.1f


# instance fields
.field public mDuration:Ljava/lang/String;

.field public mDurationTextPaint:Landroid/text/TextPaint;

.field public mDurationTextSize:I

.field public mNeedExtendSpeedWidth:Z

.field public mNeedExtendTotalWidth:Z

.field public mNumber:Ljava/lang/String;

.field public mPaint:Landroid/graphics/Paint;

.field public mSpeed:Ljava/lang/String;

.field public mSpeedTextPaint:Landroid/text/TextPaint;

.field public mSpeedTextSize:I

.field public mTextBold:Z

.field public mTextColor:I

.field public mlineColor:I

.field public mlineGap:I

.field public mlineHeight:I

.field public mlineWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/FastmotionIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/FastmotionIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, ""

    .line 12
    iput-object p3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/FastmotionIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p3, ""

    .line 17
    iput-object p3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/FastmotionIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/camera/R$styleable;->FastmotionIndicatorView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextSize:I

    .line 3
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextSize:I

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mTextBold:Z

    .line 5
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineGap:I

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineHeight:I

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineWidth:I

    .line 8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f06037c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mTextColor:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0602fb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineColor:I

    .line 11
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    .line 12
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    iget p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    iget p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mTextColor:I

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/camera/Util;->getMiuiTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 16
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    const/high16 p2, -0x80000000

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, p2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 17
    iget-boolean p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mTextBold:Z

    if-eqz p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 19
    :cond_1
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    .line 20
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextSize:I

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mTextColor:I

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/camera/Util;->getMiuiTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 24
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v2, v2, p2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 25
    iget-boolean p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mTextBold:Z

    if-eqz p1, :cond_2

    .line 26
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    const-string/jumbo p2, "tnum"

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mPaint:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 7
    iget v2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 10
    iget-object v5, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v7, v1, v7

    iget v8, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 11
    iget-boolean v5, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendSpeedWidth:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    :goto_0
    iget v6, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineGap:I

    add-int/2addr v5, v6

    int-to-float v7, v5

    iget v5, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineHeight:I

    sub-int v5, v1, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v8, v5

    iget-boolean v5, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendSpeedWidth:Z

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    :goto_1
    iget v6, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineGap:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineWidth:I

    add-int/2addr v5, v6

    int-to-float v9, v5

    iget v5, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineHeight:I

    add-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    int-to-float v10, v5

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v12, 0x40000000    # 2.0f

    iget-object v13, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 12
    iget-object v5, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendSpeedWidth:Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v4, :cond_3

    add-int/lit8 v0, v0, 0xa

    :cond_3
    iget v4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineGap:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineWidth:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v1, v4

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 14
    :cond_4
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 15
    iget-object v6, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v4, v8, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 16
    iget-object v4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendSpeedWidth:Z

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    :goto_2
    iget v7, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineGap:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineWidth:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v7, v1, v7

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v2, v7

    iget-object v7, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v6, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 17
    iget-object v2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendSpeedWidth:Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v4, :cond_6

    add-int/lit8 v0, v0, 0xa

    :cond_6
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineGap:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineWidth:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v1, v4

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1, p1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 4
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDurationTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    iget v1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 8
    iget-object v3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iget-boolean v2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendSpeedWidth:Z

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eqz v2, :cond_1

    add-int/lit8 p1, p1, 0xa

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineWidth:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineGap:I

    goto :goto_0

    .line 10
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iget-object v4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeedTextPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v2, v6, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 12
    iget-boolean v2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendSpeedWidth:Z

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eqz v2, :cond_3

    add-int/lit8 p1, p1, 0xa

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineWidth:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mlineGap:I

    :goto_0
    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 13
    iget-boolean p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendTotalWidth:Z

    if-eqz p2, :cond_4

    int-to-float p1, p1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_4
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method public showFastmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    iput-boolean p4, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendSpeedWidth:Z

    .line 2
    iput-boolean p5, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNeedExtendTotalWidth:Z

    .line 3
    iput-object p1, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mSpeed:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mNumber:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/android/camera/ui/FastmotionIndicatorView;->mDuration:Ljava/lang/String;

    .line 6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
