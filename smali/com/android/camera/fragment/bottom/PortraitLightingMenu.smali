.class public Lcom/android/camera/fragment/bottom/PortraitLightingMenu;
.super Lcom/android/camera/fragment/bottom/AbBottomMenu;
.source "PortraitLightingMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final PORTRAIT_LIGHTING_TYPE:I


# instance fields
.field public mLiveSpeedMenuTabList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/fragment/bottom/MenuItem;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/AbBottomMenu;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllView()V
    .locals 7

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/PortraitLightingMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/PortraitLightingMenu;->getMenuData()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/bottom/MenuItem;

    .line 5
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d002c

    .line 6
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {v4, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ColorActivateTextView;

    .line 8
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v5

    const v6, 0x7f060305

    invoke-virtual {v5, v6}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    .line 9
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v5

    const v6, 0x7f130165

    invoke-virtual {v5, v4, v6}, Lcom/android/camera/customization/ThemeResource;->setTextShadowStyle(Landroid/widget/TextView;I)V

    .line 10
    iget-object v5, v3, Lcom/android/camera/fragment/bottom/MenuItem;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget v5, v3, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget v5, v3, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    if-nez v5, :cond_0

    .line 14
    iput-object v4, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mCurrentBeautyTextView:Lcom/android/camera/ui/ColorActivateTextView;

    .line 15
    :cond_0
    invoke-virtual {v4, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 16
    iget-object v5, p0, Lcom/android/camera/fragment/bottom/PortraitLightingMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    iget v3, v3, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_1
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
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/PortraitLightingMenu;->mMenuTextViewList:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getDefaultType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuData()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/fragment/bottom/MenuItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/PortraitLightingMenu;->mLiveSpeedMenuTabList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/PortraitLightingMenu;->mLiveSpeedMenuTabList:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Lcom/android/camera/fragment/bottom/MenuItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/bottom/MenuItem;-><init>()V

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/android/camera/fragment/bottom/MenuItem;->type:I

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->isLightingVersion1()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120458

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/fragment/bottom/MenuItem;->text:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12045d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/fragment/bottom/MenuItem;->text:Ljava/lang/String;

    .line 8
    :goto_0
    iput v1, v0, Lcom/android/camera/fragment/bottom/MenuItem;->number:I

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/PortraitLightingMenu;->mLiveSpeedMenuTabList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/PortraitLightingMenu;->mLiveSpeedMenuTabList:Landroid/util/SparseArray;

    return-object v0
.end method

.method public isRefreshUI()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public switchMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/AbBottomMenu;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/PortraitLightingMenu;->addAllView()V

    return-void
.end method
