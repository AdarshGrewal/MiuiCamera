.class public abstract Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBottomMenuBase.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;


# static fields
.field public static final FRAGMENT_INFO:I = 0xf5

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mMenuView:Landroid/widget/LinearLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private updateView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Lcom/android/camera/display/Display;->getDragLayoutTopMargin()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public animateShineBeauty(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_7

    .line 2
    iget-object v4, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ColorActivateTextView;

    .line 3
    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/data/ComponentDataItem;

    if-nez v5, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v5, v5, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const/4 v6, -0x1

    .line 5
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x31

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v7, v8, :cond_3

    const/16 v8, 0x39

    if-eq v7, v8, :cond_2

    const/16 v8, 0x621

    if-eq v7, v8, :cond_1

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v7, "7"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v6, 0x7

    goto :goto_1

    :pswitch_1
    const-string v7, "6"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v6, v9

    goto :goto_1

    :pswitch_2
    const-string v7, "5"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v6, v12

    goto :goto_1

    :pswitch_3
    const-string v7, "4"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v6, v13

    goto :goto_1

    :pswitch_4
    const-string v7, "3"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v6, v1

    goto :goto_1

    :cond_1
    const-string v7, "12"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v6, v10

    goto :goto_1

    :cond_2
    const-string v7, "9"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v6, v11

    goto :goto_1

    :cond_3
    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v6, 0x6

    :cond_4
    :goto_1
    if-eqz v6, :cond_5

    if-eq v6, v13, :cond_5

    if-eq v6, v12, :cond_5

    if-eq v6, v11, :cond_5

    if-eq v6, v10, :cond_5

    if-eq v6, v9, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    const/16 v3, 0x8

    goto :goto_2

    :cond_6
    move v3, v1

    .line 6
    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move v3, v13

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v3, :cond_9

    :goto_4
    if-ge v1, v0, :cond_9

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ColorActivateTextView;

    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    .line 9
    new-instance v2, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {v2, p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xf5

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d005d

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a008c

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->updateView()V

    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 3
    iget-object p3, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/camera/ui/ColorActivateTextView;

    .line 4
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f060305

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    .line 5
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f130165

    invoke-virtual {v0, p3, v1}, Lcom/android/camera/customization/ThemeResource;->setTextShadowStyle(Landroid/widget/TextView;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->updateView()V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
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
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa0

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    const/4 p3, 0x0

    new-array p3, p3, [I

    .line 3
    invoke-interface {p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->provideEnterAnimation(I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->provideExitAnimation(I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public provideOrientationChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideOrientationChanged(ILjava/util/List;I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->updateView()V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xc5

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xc5

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
