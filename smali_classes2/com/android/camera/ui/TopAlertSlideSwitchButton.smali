.class public Lcom/android/camera/ui/TopAlertSlideSwitchButton;
.super Landroid/widget/LinearLayout;
.source "TopAlertSlideSwitchButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;,
        Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;
    }
.end annotation


# static fields
.field public static final DISABLE_COLOR:I = 0x4dffffff

.field public static final NONE:I = -0x1

.field public static final NORMAL_COLOR:I = -0x1


# instance fields
.field public SELECT_COLOR:I

.field public mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field public mBackgroundColor:I

.field public mBackgroundPaint:Landroid/graphics/Paint;

.field public mChildMargin:F

.field public mIndicatorColor:I

.field public mIndicatorPaint:Landroid/graphics/Paint;

.field public mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

.field public mIsTextView:Z

.field public mItemDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;",
            ">;"
        }
    .end annotation
.end field

.field public mItemHeight:F

.field public mItemWidth:F

.field public mMaxHeight:I

.field public mMaxTextWidth:I

.field public mMaxWidth:I

.field public mSelectChildWidth:F

.field public mSelectIndex:I

.field public mSelectMarginLeft:F

.field public mSlideSwitchListener:Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;

.field public mTextBold:Z

.field public mTextSize:F

.field public mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x33000000

    .line 4
    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mBackgroundColor:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 6
    iput v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    .line 7
    iput v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectChildWidth:F

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/android/camera/R$styleable;->SlideSwitchButton:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xc

    .line 9
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mChildMargin:F

    .line 10
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorColor:I

    const/4 p2, 0x5

    const/high16 p3, -0x1000000

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->SELECT_COLOR:I

    .line 12
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    const/4 p3, 0x4

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mMaxWidth:I

    const/4 p2, 0x3

    const/16 p3, 0xa0

    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mMaxHeight:I

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0706e8

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 p3, 0x7

    .line 15
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mMaxTextWidth:I

    const/4 p2, 0x2

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIsTextView:Z

    const/16 p2, 0x8

    const/16 p3, 0x30

    .line 17
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mTextSize:F

    const/4 p2, 0x6

    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mTextBold:Z

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 22
    iget p3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mBackgroundColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 25
    iget p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/ui/TopAlertSlideSwitchButton;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    return p1
.end method

.method public static synthetic access$102(Lcom/android/camera/ui/TopAlertSlideSwitchButton;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectChildWidth:F

    return p1
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    return p0
.end method

.method public static synthetic access$202(Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    return p1
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getSelectColor(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)Landroid/animation/ArgbEvaluator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)Landroid/graphics/Paint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/ui/TopAlertSlideSwitchButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->SELECT_COLOR:I

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/ui/TopAlertSlideSwitchButton;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setChildColor(II)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/camera/ui/TopAlertSlideSwitchButton;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setAccessible(IZ)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setIndex(I)V

    return-void
.end method

.method private addImageChild(Ljava/lang/String;ILcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ColorImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1300(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 3
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1400(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    .line 6
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1400(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    .line 7
    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    .line 8
    iget-object v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getSelectColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    invoke-direct {p0, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getSelectColor(I)I

    move-result p2

    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorColor:I

    if-eq p2, v1, :cond_0

    .line 10
    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    goto :goto_0

    .line 11
    :cond_0
    iget p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->SELECT_COLOR:I

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    .line 12
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1500(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x4dffffff    # 5.3687088E8f

    .line 14
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    const/4 p2, 0x0

    .line 15
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 18
    :goto_1
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1400(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, v0, p3, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setAccessible(Landroid/view/View;Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;Z)V

    .line 19
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 21
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 22
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0706e6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0706e5

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 24
    iget p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mChildMargin:F

    float-to-int p3, p2

    float-to-int v1, p2

    float-to-int v2, p2

    float-to-int p2, p2

    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addTextChild(Ljava/lang/String;ILcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/camera/ui/AdaptiveTextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/AdaptiveTextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 3
    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mMaxTextWidth:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AdaptiveTextView;->setMaxWidth(I)V

    .line 4
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, -0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 11
    iget v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mTextSize:F

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1200(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 13
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1400(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mTextBold:Z

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0706e9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 16
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    .line 17
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1400(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    iget v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->SELECT_COLOR:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1500(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x4dffffff    # 5.3687088E8f

    .line 22
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 26
    :goto_0
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1400(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, v0, p3, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setAccessible(Landroid/view/View;Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;Z)V

    .line 27
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 29
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    .line 30
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 31
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 32
    iget p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mChildMargin:F

    float-to-int p3, p2

    float-to-int v1, p2

    float-to-int v2, p2

    float-to-int p2, p2

    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 33
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getIndex(Ljava/lang/String;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;

    invoke-static {v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1400(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private getSelectColor(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    if-ltz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;

    invoke-static {p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1000(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorColor:I

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isDataEqual(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private mapItemData(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;

    invoke-direct {v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;-><init>()V

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->setIconRes(I)V

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->setDisplayNameRes(I)V

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mContentDescriptionRes:I

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->setContentDescriptionRes(I)V

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-boolean v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->setIsDisabled(Z)V

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-boolean v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mIsShowText:Z

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->setIsShowText(Z)V

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mSelectColor:I

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->setOriginalSelectColor(I)V

    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->setValue(Ljava/lang/String;)V

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private setAccessible(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setAccessible(Landroid/view/View;Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;Z)V

    :cond_0
    return-void
.end method

.method private setAccessible(Landroid/view/View;Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;Z)V
    .locals 3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5
    invoke-static {p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1100(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I

    move-result v2

    if-lez v2, :cond_0

    .line 6
    invoke-static {p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1100(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I

    move-result p2

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1200(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I

    move-result p2

    .line 8
    :goto_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p2, ", "

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1200ae

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setChildColor(II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getSelectColor(I)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorColor:I

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setIndex(I)V
    .locals 4

    .line 17
    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->SELECT_COLOR:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setChildColor(II)V

    .line 18
    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 19
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setChildColor(II)V

    .line 20
    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setAccessible(IZ)V

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 23
    iget-object v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getSelectColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    const/4 v2, 0x1

    .line 25
    invoke-direct {p0, p1, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setAccessible(IZ)V

    int-to-float p1, v0

    .line 26
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    int-to-float p1, v1

    .line 27
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectChildWidth:F

    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private setIndex(IZ)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    if-eq v0, p1, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_0
    iget v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    .line 7
    iget v5, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectChildWidth:F

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 8
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    .line 9
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    iget-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;

    move-object v1, v0

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;-><init>(Lcom/android/camera/ui/TopAlertSlideSwitchButton;FIFII)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$2;-><init>(Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    iget-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 13
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setIndex(I)V

    .line 15
    :goto_0
    iget-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSlideSwitchListener:Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;

    if-eqz p2, :cond_2

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;->toSlideSwitch(ILjava/lang/String;)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setItemColor(Landroid/view/View;I)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/camera/ui/ColorImageView;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1}, Lcom/android/camera/ui/ColorImageView;->getColor()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 5
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    if-ne v0, p2, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateViewsStatus(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;

    invoke-static {v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1500(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    const v3, 0x4dffffff    # 5.3687088E8f

    .line 5
    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setItemColor(Landroid/view/View;I)V

    goto :goto_1

    .line 6
    :cond_0
    iget v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    const/4 v5, 0x1

    if-ne v3, v1, :cond_1

    .line 7
    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    iget v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->SELECT_COLOR:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setItemColor(Landroid/view/View;I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    invoke-direct {p0, v2, v4}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setItemColor(Landroid/view/View;I)V

    .line 11
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getSelectColor(I)I

    move-result v3

    iget v5, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorColor:I

    if-eq v3, v5, :cond_2

    .line 12
    invoke-direct {p0, v2, v4}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setItemColor(Landroid/view/View;I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getIndicatorCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mType:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSlideSwitchListener:Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;->enableSwitch()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    iget v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    if-ne v1, v2, :cond_5

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x8000

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    .line 8
    :cond_5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, v1, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setIndex(IZ)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectChildWidth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 4
    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectChildWidth:F

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    const/4 v9, 0x0

    add-int/2addr v0, v9

    int-to-float v4, v0

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 7
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 9
    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    if-ne v9, v0, :cond_2

    .line 10
    iget v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectChildWidth:F

    add-float v4, v0, v1

    .line 11
    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 12
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mBackgroundColor:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setComponentData(Lcom/android/camera/data/data/ComponentData;IZ)V
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    .line 1
    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    .line 2
    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectChildWidth:F

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mapItemData(Ljava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-direct {p0, v2, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->isDataEqual(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIsTextView:Z

    if-ne p1, p3, :cond_2

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getIndex(Ljava/lang/String;Ljava/util/List;)I

    move-result p1

    .line 7
    iget-object v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    if-eq p1, v3, :cond_1

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setIndex(I)V

    .line 9
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->updateViewsStatus(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object v2, v1

    .line 10
    :catch_1
    :cond_2
    iput-object v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    .line 11
    iput-boolean p3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIsTextView:Z

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 14
    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    const/4 p1, 0x0

    .line 15
    :goto_0
    iget-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 16
    iget-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;

    .line 17
    iget-boolean p3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIsTextView:Z

    if-eqz p3, :cond_3

    .line 18
    invoke-direct {p0, v1, p1, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->addTextChild(Ljava/lang/String;ILcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)V

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$1600(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 20
    invoke-direct {p0, v1, p1, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->addTextChild(Ljava/lang/String;ILcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)V

    goto :goto_1

    .line 21
    :cond_4
    invoke-direct {p0, v1, p1, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->addImageChild(Ljava/lang/String;ILcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorColor:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setSlideSwitchListener(Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSlideSwitchListener:Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mType:I

    return-void
.end method
