.class public Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field public mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field public mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/view/CollapsibleActionView;

    invoke-interface {p1}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 3
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v0, 0x0

    iput-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 6
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    move-result p1

    const/4 v1, 0x2

    and-int/2addr p1, v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    move-result-object p1

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V

    .line 12
    :cond_3
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 13
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 14
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 15
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 16
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 17
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 18
    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 19
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 20
    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    move-result p1

    if-ne p1, v3, :cond_8

    .line 21
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 22
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_9

    .line 23
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 25
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 26
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 27
    invoke-virtual {p2, v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    return v3
.end method

.method public expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eq p1, v0, :cond_0

    .line 6
    iget-object p1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eq p1, v0, :cond_1

    .line 8
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V

    .line 13
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 14
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 15
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 17
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 18
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 19
    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 20
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 21
    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 22
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 23
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 24
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 27
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object p2, p2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, p2, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_a

    .line 28
    check-cast p2, Landroid/view/CollapsibleActionView;

    invoke-interface {p2}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    :cond_a
    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 3
    :cond_0
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 4
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    :cond_2
    return-void
.end method
