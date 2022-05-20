.class public Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;
.super Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;
.source "FragmentBottomMenu1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCurrentEntry:Ljava/lang/String;

.field public mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

.field public mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public mMenuSwitchProtocol:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic animateShineBeauty(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->animateShineBeauty(Z)V

    return-void
.end method

.method public expandMenu(Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 3
    :goto_0
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v3

    :goto_1
    if-ge v7, v1, :cond_2

    .line 5
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/data/data/ComponentDataItem;

    const v9, 0x7f0d002c

    .line 6
    iget-object v10, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {v0, v9, v10, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ui/ColorActivateTextView;

    .line 8
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v10

    const v11, 0x7f060305

    invoke-virtual {v10, v11}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    .line 9
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v10

    const v11, 0x7f130165

    invoke-virtual {v10, v9, v11}, Lcom/android/camera/customization/ThemeResource;->setTextShadowStyle(Landroid/widget/TextView;I)V

    .line 11
    iget v10, v8, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-eqz v4, :cond_1

    .line 13
    invoke-virtual {v9, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_1

    .line 14
    iget-object v8, v8, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 15
    iput-object v9, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1200ae

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v9, v2}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 18
    :cond_1
    invoke-virtual {v9, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 19
    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    .line 20
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v8, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_2
    const/4 p1, 0x2

    if-ne v1, p1, :cond_3

    .line 22
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_2
    sub-int/2addr p1, p2

    goto :goto_3

    :cond_3
    const/4 p2, 0x3

    if-ne v1, p2, :cond_4

    .line 23
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_2

    :cond_4
    move p1, v3

    .line 24
    :goto_3
    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-lez p1, :cond_5

    .line 25
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 26
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_4

    .line 27
    :cond_5
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    neg-int p1, p1

    .line 28
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 29
    :goto_4
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->mMenuView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic getFragmentInto()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->getFragmentInto()I

    move-result v0

    return v0
.end method

.method public init(Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mList:Ljava/util/List;

    .line 2
    iput-object p2, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mCurrentEntry:Ljava/lang/String;

    .line 3
    iput p3, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mMenuSwitchProtocol:I

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase;->initView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mCurrentEntry:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->expandMenu(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 1
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
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    .line 5
    invoke-virtual {p3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f1200ae

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/ColorActivateTextView;

    iput-object v0, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mLastSelectedView:Lcom/android/camera/ui/ColorActivateTextView;

    .line 7
    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1200ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    if-nez v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object v2, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 11
    iget v3, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    if-lez v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, ""

    .line 12
    :goto_0
    sget-object v0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick: shineType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->mMenuSwitchProtocol:I

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    .line 14
    instance-of v0, p1, Lcom/android/camera/protocol/ModeProtocol$MenuSwitch;

    if-eqz v0, :cond_4

    .line 15
    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MenuSwitch;

    invoke-interface {p1, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$MenuSwitch;->switchType(Ljava/lang/String;Z)V

    :cond_4
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
