.class public Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;
.super Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;
.source "FragmentBottomMenu3.java"


# instance fields
.field public mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

.field public mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;-><init>(I)V

    return-void
.end method

.method private expandMenu(Lcom/android/camera/fragment/bottom/AbBottomMenu;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->init(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->switchMenu()V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

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

.method public init(Lcom/android/camera/fragment/bottom/AbBottomMenu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->initView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;->animator(Landroid/view/ViewGroup;)Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->expandMenu(Lcom/android/camera/fragment/bottom/AbBottomMenu;)V

    :cond_0
    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->notifyThemeChanged(ILjava/util/List;I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->getCurrentBeautyTextView()Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->getNeedActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->mBottomMenu:Lcom/android/camera/fragment/bottom/AbBottomMenu;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->getCurrentBeautyTextView()Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    :cond_0
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
