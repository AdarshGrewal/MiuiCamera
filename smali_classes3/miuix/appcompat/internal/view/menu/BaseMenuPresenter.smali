.class public abstract Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter;


# instance fields
.field public mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

.field public mContext:Landroid/content/Context;

.field public mId:I

.field public mInflater:Landroid/view/LayoutInflater;

.field public mItemLayoutRes:I

.field public mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public mMenuLayoutRes:I

.field public mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

.field public mSystemContext:Landroid/content/Context;

.field public mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 4
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 5
    iput p3, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    return-void
.end method

.method public static close(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->close(Z)V

    return-void
.end method

.method public static createMenuItemImpl(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .locals 9

    .line 1
    new-instance v8, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    return-object v8
.end method

.method public static dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static notifyItemsChanged(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method


# virtual methods
.method public addItemView(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public abstract bindItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    return-object p1
.end method

.method public expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mId:I

    return v0
.end method

.method public getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    instance-of v0, p2, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p3}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    move-result-object p2

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->bindItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;)V

    .line 5
    check-cast p2, Landroid/view/View;

    return-object p2
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuView;

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-interface {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuView;->initialize(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 3
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mId:I

    return-void
.end method

.method public shouldIncludeItem(ILmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public updateMenuView(Z)V
    .locals 7

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lmiuix/appcompat/internal/view/menu/MenuView;->hasBackgroundView()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    invoke-interface {v2}, Lmiuix/appcompat/internal/view/menu/MenuView;->hasBlurBackgroundView()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 4
    :cond_2
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_7

    .line 5
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 6
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 8
    invoke-virtual {p0, p1, v3}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 10
    instance-of v5, v4, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 11
    invoke-interface {v5}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->getItemData()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object v5

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 12
    :goto_2
    invoke-virtual {p0, v3, v4, v0}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->getItemView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    if-eq v3, v5, :cond_5

    .line 13
    invoke-virtual {v6, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_5
    if-eq v6, v4, :cond_6

    .line 14
    invoke-virtual {p0, v6, p1}, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 15
    :cond_7
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_8

    .line 16
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    invoke-interface {v1, p1}, Lmiuix/appcompat/internal/view/menu/MenuView;->filterLeftoverView(I)Z

    move-result v1

    if-nez v1, :cond_7

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method
