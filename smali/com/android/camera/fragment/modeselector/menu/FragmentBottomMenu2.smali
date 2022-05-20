.class public Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;
.super Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;
.source "FragmentBottomMenu2.java"


# instance fields
.field public mDisplayTitle:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;-><init>(I)V

    return-void
.end method

.method private expandMenu(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const v3, 0x7f0d002c

    .line 4
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ColorActivateTextView;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f060305

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic animateShineBeauty(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->animateShineBeauty(Z)V

    return-void
.end method

.method public bridge synthetic getFragmentInto()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->getFragmentInto()I

    move-result v0

    return v0
.end method

.method public init(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->mDisplayTitle:I

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->initView(Landroid/view/View;)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->mDisplayTitle:I

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->expandMenu(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic notifyThemeChanged(ILjava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->notifyThemeChanged(ILjava/util/List;I)V

    return-void
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic provideAnimateElement(ILjava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public bridge synthetic provideOrientationChanged(ILjava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->provideOrientationChanged(ILjava/util/List;I)V

    return-void
.end method
