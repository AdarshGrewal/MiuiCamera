.class public Lcom/android/camera/fragment/bottom/FrontBeautyMenu;
.super Lcom/android/camera/fragment/bottom/AbBottomMenu;
.source "FrontBeautyMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final BEAUTY_MODEL_BEAUTY_TAB_ID:I = 0x1

.field public static final BEAUTY_MODEL_TYPE:I = 0x2

.field public static final FRON_LEVEL_BEAUTY_TAB_ID:I = 0x0

.field public static final LEVEL_BEAUTY_TYPE:I = 0x1

.field public static final MAKE_UP_BEAUTY_TAB_ID:I = 0x2

.field public static final MAKE_UP_TYPE:I = 0x3

.field public static final MIMOJI_TYPE:I = 0x8


# instance fields
.field public mFrontBeautyMenuTabList:Landroid/util/SparseArray;

.field public mLastCamerId:I

.field public mMenuTextViewList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/ui/ColorActivateTextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->mLastCamerId:I

    return-void
.end method

.method private isCameraSwitch()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->mLastCamerId:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_0
    iput v0, p0, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->mLastCamerId:I

    const/4 v0, 0x0

    return v0
.end method

.method private isJustBeautyTab()Z
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Ooo0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v2, 0xa2

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa1

    if-eq v0, v2, :cond_2

    const/16 v2, 0xb7

    if-eq v0, v2, :cond_2

    const/16 v2, 0xab

    if-eq v0, v2, :cond_2

    const/16 v2, 0xb0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public addAllView()V
    .locals 9

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->getMenuData()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 4
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/bottom/MenuItem;

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->isJustBeautyTab()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 6
    iget v4, v3, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    if-eq v4, v5, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0d002c

    .line 8
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {v4, v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ColorActivateTextView;

    const v6, -0x66000001

    .line 10
    invoke-virtual {v4, v6}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->isJustBeautyTab()Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, -0x4c000001

    .line 12
    invoke-virtual {v4, v6}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    goto :goto_1

    :cond_1
    const/16 v6, -0x31ea

    .line 13
    invoke-virtual {v4, v6}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    .line 14
    :goto_1
    iget-object v6, v3, Lcom/android/camera/fragment/bottom/MenuItem;->text:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget v6, v3, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-boolean v6, v3, Lcom/android/camera/fragment/bottom/MenuItem;->redDot:Z

    if-eqz v6, :cond_2

    .line 18
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080286

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 19
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070122

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 20
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/4 v7, 0x0

    .line 21
    invoke-virtual {v4, v7, v7, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 22
    :cond_2
    iget v6, v3, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    if-ne v5, v6, :cond_3

    .line 23
    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 24
    iput-object v4, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Lcom/android/camera/ui/ColorActivateTextView;

    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {v4, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 26
    :goto_2
    iget-object v5, p0, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    iget v3, v3, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 28
    :cond_4
    invoke-super {p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->addAllView()V

    return-void
.end method

.method public getChildMenuViewList()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/ui/ColorActivateTextView;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getDefaultType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMenuData()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/fragment/bottom/MenuItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->mFrontBeautyMenuTabList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->mFrontBeautyMenuTabList:Landroid/util/SparseArray;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->mFrontBeautyMenuTabList:Landroid/util/SparseArray;

    .line 4
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120212

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120213

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120210

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00Oo0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12020f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f120211

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_1
    new-instance v3, Lcom/android/camera/fragment/bottom/MenuItem;

    invoke-direct {v3}, Lcom/android/camera/fragment/bottom/MenuItem;-><init>()V

    const/4 v4, 0x1

    .line 11
    iput v4, v3, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    .line 12
    iput-object v0, v3, Lcom/android/camera/fragment/bottom/MenuItem;->text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput v0, v3, Lcom/android/camera/fragment/bottom/MenuItem;->number:I

    .line 14
    new-instance v0, Lcom/android/camera/fragment/bottom/MenuItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/bottom/MenuItem;-><init>()V

    const/4 v5, 0x2

    .line 15
    iput v5, v0, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    .line 16
    iput-object v1, v0, Lcom/android/camera/fragment/bottom/MenuItem;->text:Ljava/lang/String;

    .line 17
    iput v4, v0, Lcom/android/camera/fragment/bottom/MenuItem;->number:I

    .line 18
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->mFrontBeautyMenuTabList:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->mFrontBeautyMenuTabList:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O000oo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    new-instance v0, Lcom/android/camera/fragment/bottom/MenuItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/bottom/MenuItem;-><init>()V

    const/4 v1, 0x3

    .line 22
    iput v1, v0, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    .line 23
    iput-object v2, v0, Lcom/android/camera/fragment/bottom/MenuItem;->text:Ljava/lang/String;

    .line 24
    iput v5, v0, Lcom/android/camera/fragment/bottom/MenuItem;->number:I

    .line 25
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->mFrontBeautyMenuTabList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->mFrontBeautyMenuTabList:Landroid/util/SparseArray;

    return-object v0
.end method

.method public isRefreshUI()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->isCameraSwitch()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->isJustBeautyTab()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->isClickEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->selectBeautyType(I)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBeautyMakeupClicked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->setBeautyMakeupClicked()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Lcom/android/camera/ui/ColorActivateTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public switchMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mBeautyMenuAnimator:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;->resetAll()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->addAllView()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/FrontBeautyMenu;->getDefaultType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;->selectBeautyType(I)V

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyLevel()Ljava/lang/String;

    return-void
.end method
