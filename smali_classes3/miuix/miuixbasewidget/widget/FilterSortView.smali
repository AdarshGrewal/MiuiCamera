.class public Lmiuix/miuixbasewidget/widget/FilterSortView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "FilterSortView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
    }
.end annotation


# static fields
.field public static final GONE:I = 0x8

.field public static final TAG:Ljava/lang/String; = "miuix:FilterSortView"

.field public static final VISIBLE:I


# instance fields
.field public mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

.field public mEnabled:Z

.field public mFilteredId:I

.field public mFilteredUpdated:Z

.field public mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

.field public mTabViewChildIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    .line 8
    new-instance v2, Lmiuix/miuixbasewidget/widget/FilterSortView$1;

    invoke-direct {v2, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$1;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView;)V

    iput-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    .line 9
    sget-object v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView:[I

    sget v3, Lmiuix/miuixbasewidget/R$style;->Widget_FilterSortView_DayNight:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView_filterSortViewBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 11
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView_filterSortTabViewCoverBg:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 12
    sget v2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortView_android_enabled:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_filter_sort_view_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 15
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 16
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 17
    invoke-direct {p0, p3}, Lmiuix/miuixbasewidget/widget/FilterSortView;->initCoverBg(Landroid/graphics/drawable/Drawable;)V

    .line 18
    invoke-static {p0, v1}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$500(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    return-object p0
.end method

.method public static synthetic access$602(Lmiuix/miuixbasewidget/widget/FilterSortView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    return p1
.end method

.method private inflateTabView()Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lmiuix/miuixbasewidget/R$layout;->layout_filter_tab_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    return-object v0
.end method

.method private initCoverBg(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->inflateTabView()Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$000(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$100(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setEnabled(Z)V

    .line 7
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private refreshTabState()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 3
    iget-boolean v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    invoke-virtual {v1, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateChildIdsFromXml()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 4
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 5
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    invoke-static {v2, v3}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;)V

    .line 6
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateFiltered(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 4
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 5
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 6
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setX(F)V

    .line 7
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getY()F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setY(F)V

    .line 8
    new-instance p1, LOooO0OO/OooO0Oo/OooO00o/OooO0OO;

    invoke-direct {p1, p0, v0}, LOooO0OO/OooO0Oo/OooO00o/OooO0OO;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateTabViews(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3
    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    const/4 v3, -0x2

    .line 4
    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalWeight(IF)V

    if-nez v1, :cond_0

    move v3, v0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 7
    :goto_1
    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    move v4, v0

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 8
    :goto_2
    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->centerVertically(II)V

    const/4 v5, 0x7

    const/4 v6, 0x6

    if-nez v3, :cond_2

    move v7, v6

    goto :goto_3

    :cond_2
    move v7, v5

    .line 9
    :goto_3
    invoke-virtual {p1, v2, v6, v3, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    if-nez v4, :cond_3

    move v6, v5

    .line 10
    :cond_3
    invoke-virtual {p1, v2, v5, v4, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v3, 0x3

    .line 11
    invoke-virtual {p1, v2, v3, v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v3, 0x4

    .line 12
    invoke-virtual {p1, v2, v3, v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addTab(Ljava/lang/CharSequence;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->addTab(Ljava/lang/CharSequence;Z)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    move-result-object p1

    return-object p1
.end method

.method public addTab(Ljava/lang/CharSequence;Z)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
    .locals 3

    .line 2
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->inflateTabView()Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    invoke-static {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;)V

    .line 4
    iget-boolean v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setEnabled(Z)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mTabViewChildIds:Ljava/util/List;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 8
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 9
    invoke-direct {p0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateTabViews(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 10
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 11
    invoke-static {v0, p1, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$300(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Ljava/lang/CharSequence;Z)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    .line 2
    iget p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    if-nez p1, :cond_1

    .line 3
    :cond_0
    iget p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateFiltered(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    .line 5
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredUpdated:Z

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 2
    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 3
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mEnabled:Z

    .line 4
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->refreshTabState()V

    :cond_0
    return-void
.end method

.method public setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView;->mFilteredId:I

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$400(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    .line 3
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->updateChildIdsFromXml()V

    return-void
.end method

.method public setTabIncatorVisibility(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 3
    invoke-virtual {v1, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setIndicatorVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
