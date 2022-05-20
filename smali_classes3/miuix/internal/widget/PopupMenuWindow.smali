.class public Lmiuix/internal/widget/PopupMenuWindow;
.super Lmiuix/internal/widget/ListPopup;
.source "PopupMenuWindow.java"


# instance fields
.field public mAdapter:Lmiuix/internal/widget/PopupMenuAdapter;

.field public mLastAnchor:Landroid/view/View;

.field public mLastParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lmiuix/internal/widget/PopupMenuAdapter;

    invoke-direct {v0, p1}, Lmiuix/internal/widget/PopupMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/internal/widget/PopupMenuWindow;->mAdapter:Lmiuix/internal/widget/PopupMenuAdapter;

    .line 3
    invoke-virtual {p0, v0}, Lmiuix/internal/widget/ListPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    new-instance p1, LOooO0OO/OooO0OO/OooO0O0/OooO0o0;

    invoke-direct {p1, p0}, LOooO0OO/OooO0OO/OooO0O0/OooO0o0;-><init>(Lmiuix/internal/widget/PopupMenuWindow;)V

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5
    new-instance p1, LOooO0OO/OooO0OO/OooO0O0/OooO00o;

    invoke-direct {p1, p0}, LOooO0OO/OooO0OO/OooO0O0/OooO00o;-><init>(Lmiuix/internal/widget/PopupMenuWindow;)V

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/SubMenu;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/PopupMenuWindow;->update(Landroid/view/Menu;)V

    .line 3
    iget-object p1, p0, Lmiuix/internal/widget/PopupMenuWindow;->mLastAnchor:Landroid/view/View;

    iget-object v0, p0, Lmiuix/internal/widget/PopupMenuWindow;->mLastParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Lmiuix/internal/widget/PopupMenuWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public synthetic OooO0O0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmiuix/internal/widget/PopupMenuWindow;->mAdapter:Lmiuix/internal/widget/PopupMenuAdapter;

    invoke-virtual {p1, p3}, Lmiuix/internal/widget/PopupMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    .line 4
    new-instance p2, LOooO0OO/OooO0OO/OooO0O0/OooO0o;

    invoke-direct {p2, p0, p1}, LOooO0OO/OooO0OO/OooO0O0/OooO0o;-><init>(Lmiuix/internal/widget/PopupMenuWindow;Landroid/view/SubMenu;)V

    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/PopupMenuWindow;->onMenuItemClick(Landroid/view/MenuItem;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/internal/widget/PopupMenuWindow;->mLastAnchor:Landroid/view/View;

    .line 2
    iput-object p2, p0, Lmiuix/internal/widget/PopupMenuWindow;->mLastParent:Landroid/view/ViewGroup;

    .line 3
    invoke-super {p0, p1, p2}, Lmiuix/internal/widget/ListPopup;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/PopupMenuWindow;->mAdapter:Lmiuix/internal/widget/PopupMenuAdapter;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/PopupMenuAdapter;->update(Landroid/view/Menu;)V

    return-void
.end method
