.class public Lcom/android/camera/customization/TintColorTableView;
.super Landroid/widget/LinearLayout;
.source "TintColorTableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;
    }
.end annotation


# instance fields
.field public itemPaddingLeft:I

.field public mColorOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/customization/TintColor;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentSelection:I

.field public mOnColorChangeListener:Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    .line 3
    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->itemPaddingLeft:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    .line 6
    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->itemPaddingLeft:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    .line 9
    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->itemPaddingLeft:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    .line 12
    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->itemPaddingLeft:I

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x80

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private addColorItem(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d017e

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/TintShapeView;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance v2, Lcom/android/camera/customization/TintShapeView$TintShape;

    invoke-direct {v2}, Lcom/android/camera/customization/TintShapeView$TintShape;-><init>()V

    sget-object v3, Lcom/android/camera/customization/TintShapeView$ShapeType;->CIRCLE:Lcom/android/camera/customization/TintShapeView$ShapeType;

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/TintShapeView$TintShape;->shape(Lcom/android/camera/customization/TintShapeView$ShapeType;)Lcom/android/camera/customization/TintShapeView$TintShape;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/customization/TintColorTableView;->mColorOptions:Ljava/util/List;

    .line 5
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/customization/TintColor;

    invoke-virtual {v3}, Lcom/android/camera/customization/TintColor;->color()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/TintShapeView$TintShape;->innerColor(I)Lcom/android/camera/customization/TintShapeView$TintShape;

    move-result-object v2

    const/4 v3, -0x1

    .line 6
    invoke-virtual {v2, v3}, Lcom/android/camera/customization/TintShapeView$TintShape;->outerColor(I)Lcom/android/camera/customization/TintShapeView$TintShape;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/TintShapeView$TintShape;->innerRadius(I)Lcom/android/camera/customization/TintShapeView$TintShape;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/TintShapeView$TintShape;->outerRadius(I)Lcom/android/camera/customization/TintShapeView$TintShape;

    move-result-object v2

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/TintShapeView$TintShape;->stroke(F)Lcom/android/camera/customization/TintShapeView$TintShape;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Lcom/android/camera/customization/TintShapeView;->config(Lcom/android/camera/customization/TintShapeView$TintShape;)V

    .line 11
    iget v2, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/camera/customization/TintShapeView;->setSelection(Z)V

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 13
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 14
    iget-object v4, p0, Lcom/android/camera/customization/TintColorTableView;->mColorOptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne p1, v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/android/camera/customization/TintColorTableView;->itemPaddingLeft:I

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 15
    iget v4, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    if-ne p1, v4, :cond_2

    move v1, v3

    :cond_2
    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/customization/TintColorTableView;->setAccessible(Landroid/view/View;IZ)V

    .line 16
    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private calculateLeftPadding()I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    .line 3
    :goto_1
    iget-object v4, p0, Lcom/android/camera/customization/TintColorTableView;->mColorOptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701e0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/2addr v5, v2

    sub-int/2addr v0, v5

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0701dc

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v2, v4

    sub-int/2addr v0, v2

    if-ne v4, v3, :cond_2

    goto :goto_2

    :cond_2
    sub-int/2addr v4, v3

    .line 6
    div-int v1, v0, v4

    :goto_2
    return v1
.end method

.method private setAccessible(Landroid/view/View;IZ)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/customization/TintColorTableView;->mColorOptions:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/customization/TintColor;

    invoke-virtual {p2}, Lcom/android/camera/customization/TintColor;->name()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1200ae

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    new-instance p2, LOooO00o/OooO0O0/OooO00o/Oooo0o/OooO0O0;

    invoke-direct {p2, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0o/OooO0O0;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public initialize(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/customization/TintColor;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/customization/TintColorTableView;->mColorOptions:Ljava/util/List;

    .line 2
    iput p2, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/customization/TintColorTableView;->calculateLeftPadding()I

    move-result p1

    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->itemPaddingLeft:I

    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object p2, p0, Lcom/android/camera/customization/TintColorTableView;->mColorOptions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/customization/TintColorTableView;->addColorItem(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/customization/TintColorTableView;->setCurrent(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/customization/TintColorTableView;->mOnColorChangeListener:Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    invoke-interface {p1, v0}, Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;->onColorChange(I)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public setCurrent(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/android/camera/customization/TintShapeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/TintShapeView;->setSelection(Z)V

    .line 4
    iget v1, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/customization/TintColorTableView;->setAccessible(Landroid/view/View;IZ)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    move-object v1, v0

    check-cast v1, Lcom/android/camera/customization/TintShapeView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/TintShapeView;->setSelection(Z)V

    .line 7
    invoke-direct {p0, v0, p1, v2}, Lcom/android/camera/customization/TintColorTableView;->setAccessible(Landroid/view/View;IZ)V

    .line 8
    iput p1, p0, Lcom/android/camera/customization/TintColorTableView;->mCurrentSelection:I

    return-void
.end method

.method public setOnColorChangeListener(Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/customization/TintColorTableView;->mOnColorChangeListener:Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;

    return-void
.end method
