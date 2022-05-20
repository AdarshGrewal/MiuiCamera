.class public Lcom/android/camera/ui/MutiStateButton;
.super Landroid/widget/LinearLayout;
.source "MutiStateButton.java"


# static fields
.field public static final DEFAULT_ANIMATION_DURATION:I = 0xc8

.field public static final DEFAULT_TEXT_SIZE:I = 0x1e


# instance fields
.field public mAniBGRectF:Landroid/graphics/RectF;

.field public mAnimDuration:I

.field public mAnimation:Z

.field public mAnimator:Landroid/animation/ValueAnimator;

.field public mBGColor:I

.field public mBGPaint:Landroid/graphics/Paint;

.field public mCurrentIndex:I

.field public mCurrentView:Landroid/widget/TextView;

.field public mItemLeftRightMargin:I

.field public mItemLeftRightPaddingOther:I

.field public mItemLeftRightPaddingZH:I

.field public mItemLists:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mItemTopBottomMargin:I

.field public mItemTopBottomPaddingOther:I

.field public mItemTopBottomPaddingZH:I

.field public mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public mRadius:F

.field public mTextColor:I

.field public mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentIndex:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mItems:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mItemLists:Ljava/util/LinkedList;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentView:Landroid/widget/TextView;

    .line 6
    iput-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mAniBGRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentIndex:I

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mItems:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mItemLists:Ljava/util/LinkedList;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentView:Landroid/widget/TextView;

    .line 12
    iput-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mAniBGRectF:Landroid/graphics/RectF;

    .line 13
    invoke-direct {p0, p2}, Lcom/android/camera/ui/MutiStateButton;->dealWithAttributeSet(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentIndex:I

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mItems:Ljava/util/ArrayList;

    .line 17
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mItemLists:Ljava/util/LinkedList;

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentView:Landroid/widget/TextView;

    .line 19
    iput-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mAniBGRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private dealWithAttributeSet(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/camera/R$styleable;->MutiStateButton:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/MutiStateButton;->mItemTopBottomPaddingZH:I

    const/4 v1, 0x4

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/MutiStateButton;->mItemLeftRightPaddingZH:I

    const/4 v1, 0x6

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/MutiStateButton;->mItemTopBottomPaddingOther:I

    const/4 v1, 0x3

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/MutiStateButton;->mItemLeftRightPaddingOther:I

    const/4 v1, 0x5

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/MutiStateButton;->mItemTopBottomMargin:I

    const/4 v1, 0x2

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/MutiStateButton;->mItemLeftRightMargin:I

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/MutiStateButton;->mRadius:F

    .line 9
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/MutiStateButton;->mBGColor:I

    const/16 v0, 0x8

    const/4 v1, -0x1

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/MutiStateButton;->mTextColor:I

    const/16 v0, 0x9

    const/16 v1, 0x1e

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/MutiStateButton;->mTextSize:F

    const/16 v0, 0xc8

    .line 12
    iput v0, p0, Lcom/android/camera/ui/MutiStateButton;->mAnimDuration:I

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getBGRectF()Landroid/graphics/RectF;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4
    iget-object v1, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 5
    iget-object v1, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method private getItemMarginLayoutParams(Landroid/view/View;ZZ)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget v0, p0, Lcom/android/camera/ui/MutiStateButton;->mItemTopBottomMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 4
    iget p2, p0, Lcom/android/camera/ui/MutiStateButton;->mItemLeftRightMargin:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz p3, :cond_0

    move v0, p2

    .line 5
    :cond_0
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 6
    :cond_1
    iget p2, p0, Lcom/android/camera/ui/MutiStateButton;->mItemLeftRightMargin:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz p3, :cond_2

    move v0, p2

    .line 7
    :cond_2
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    return-object p1
.end method

.method private startSwtichAnimation(Landroid/widget/TextView;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/MutiStateButton;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/MutiStateButton;->mAnimator:Landroid/animation/ValueAnimator;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/MutiStateButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/MutiStateButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/MutiStateButton;->mAniBGRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/MutiStateButton;->mAniBGRectF:Landroid/graphics/RectF;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/MutiStateButton;->mAniBGRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/MutiStateButton;->mAniBGRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/MutiStateButton;->mAniBGRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/MutiStateButton;->mAniBGRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 11
    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    int-to-float v3, v0

    .line 12
    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result p1

    int-to-float v5, p1

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result p1

    int-to-float p1, p1

    sub-float v4, p1, v3

    .line 14
    iget-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result p1

    int-to-float p1, p1

    sub-float v6, p1, v5

    .line 15
    iget-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    if-le p2, v0, :cond_3

    iget p2, p0, Lcom/android/camera/ui/MutiStateButton;->mAnimDuration:I

    int-to-double v0, p2

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v7

    double-to-long v0, v0

    goto :goto_0

    :cond_3
    iget p2, p0, Lcom/android/camera/ui/MutiStateButton;->mAnimDuration:I

    int-to-long v0, p2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    iget-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOo0;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOo0;-><init>(Lcom/android/camera/ui/MutiStateButton;FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public synthetic OooO00o(FFFFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/MutiStateButton;->mAniBGRectF:Landroid/graphics/RectF;

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, p2

    add-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mAniBGRectF:Landroid/graphics/RectF;

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p2, p4

    add-float/2addr p3, p2

    iput p3, p1, Landroid/graphics/RectF;->right:F

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public initItems(Ljava/util/LinkedHashMap;Landroid/view/View$OnClickListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isLocaleChinese()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v1

    .line 3
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/MutiStateButton;->mBGPaint:Landroid/graphics/Paint;

    .line 4
    iget v3, p0, Lcom/android/camera/ui/MutiStateButton;->mBGColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v2, p0, Lcom/android/camera/ui/MutiStateButton;->mBGPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 7
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 10
    iget v6, p0, Lcom/android/camera/ui/MutiStateButton;->mTextColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x11

    .line 11
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz v0, :cond_0

    .line 12
    iget v6, p0, Lcom/android/camera/ui/MutiStateButton;->mItemLeftRightPaddingZH:I

    iget v7, p0, Lcom/android/camera/ui/MutiStateButton;->mItemTopBottomPaddingZH:I

    invoke-virtual {v5, v6, v7, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 13
    :cond_0
    iget v6, p0, Lcom/android/camera/ui/MutiStateButton;->mItemLeftRightPaddingOther:I

    iget v7, p0, Lcom/android/camera/ui/MutiStateButton;->mItemTopBottomPaddingOther:I

    invoke-virtual {v5, v6, v7, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 14
    :goto_1
    iget v6, p0, Lcom/android/camera/ui/MutiStateButton;->mTextSize:F

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 15
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 17
    iget-object v6, p0, Lcom/android/camera/ui/MutiStateButton;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v6, p0, Lcom/android/camera/ui/MutiStateButton;->mItemLists:Ljava/util/LinkedList;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v4, p0, Lcom/android/camera/ui/MutiStateButton;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    if-ne v4, v6, :cond_1

    move v7, v3

    :cond_1
    invoke-direct {p0, v5, v1, v7}, Lcom/android/camera/ui/MutiStateButton;->getItemMarginLayoutParams(Landroid/view/View;ZZ)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/MutiStateButton;->mAnimation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/MutiStateButton;->mAniBGRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    .line 4
    iget v1, p0, Lcom/android/camera/ui/MutiStateButton;->mRadius:F

    iget-object v2, p0, Lcom/android/camera/ui/MutiStateButton;->mBGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/MutiStateButton;->getBGRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/MutiStateButton;->mRadius:F

    iget-object v2, p0, Lcom/android/camera/ui/MutiStateButton;->mBGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public updateCurrentIndex(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/MutiStateButton;->mItemLists:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentIndex:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr v0, p1

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentView:Landroid/widget/TextView;

    .line 5
    iput p1, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentIndex:I

    .line 6
    iget-object v2, p0, Lcom/android/camera/ui/MutiStateButton;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/ui/MutiStateButton;->mCurrentView:Landroid/widget/TextView;

    .line 7
    iput-boolean p2, p0, Lcom/android/camera/ui/MutiStateButton;->mAnimation:Z

    if-eqz p2, :cond_1

    .line 8
    invoke-direct {p0, v1, v0}, Lcom/android/camera/ui/MutiStateButton;->startSwtichAnimation(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method
