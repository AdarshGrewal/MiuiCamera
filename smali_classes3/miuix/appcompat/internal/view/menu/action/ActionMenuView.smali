.class public abstract Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lmiuix/appcompat/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;,
        Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# instance fields
.field public mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

.field public mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

.field public mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 4
    new-instance p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    instance-of p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeAlpha(FZZ)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v1, 0x41200000    # 10.0f

    if-eqz p2, :cond_1

    sub-float/2addr v0, p1

    mul-float/2addr v0, v1

    float-to-int p1, v0

    :goto_0
    int-to-float p1, p1

    div-float v0, p1, v1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    mul-float/2addr p1, v1

    float-to-int p1, p1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public computeTranslationY(FZZ)F
    .locals 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    float-to-double p2, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p2, p2, v2

    const/high16 p3, 0x40000000    # 2.0f

    if-gez p2, :cond_0

    mul-float/2addr p1, p3

    goto :goto_0

    :cond_0
    sub-float/2addr v1, p1

    mul-float p1, v1, p3

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    sub-float p1, v1, p1

    :cond_2
    :goto_0
    mul-float/2addr p1, v0

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public filterLeftoverView(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .locals 2

    .line 3
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .locals 2

    .line 5
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .locals 1

    .line 6
    instance-of v0, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;-><init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;)V

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateOverflowButtonLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->generateDefaultLayoutParams()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object v0
.end method

.method public abstract getCollapsedHeight()I
.end method

.method public getPresenter()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasBackgroundView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasBlurBackgroundView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasDividerBeforeChildAt(I)Z
    .locals 4

    add-int/lit8 v0, p1, -0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_0

    instance-of v2, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    if-eqz v2, :cond_0

    .line 4
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v0

    or-int/2addr v3, v0

    :cond_0
    if-lez p1, :cond_1

    .line 5
    instance-of p1, v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    if-eqz p1, :cond_1

    .line 6
    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;

    invoke-interface {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result p1

    or-int/2addr v3, p1

    :cond_1
    return v3
.end method

.method public initialize(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    .line 1
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->computeAlpha(FZZ)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->computeTranslationY(FZZ)F

    move-result p1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 6
    :cond_2
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->setTranslationY(F)V

    return-void
.end method

.method public playCloseAnimator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->close()V

    return-void
.end method

.method public playOpenAnimator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mOpenCloseAnimator:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->open()V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPresenter(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    return-void
.end method
