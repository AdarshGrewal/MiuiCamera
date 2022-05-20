.class public Lcom/android/camera/fragment/beauty/BeautyBodyFragment;
.super Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;
.source "BeautyBodyFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BeautyBodyFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassString()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/beauty/BeautyBodyFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShineType()Ljava/lang/String;
    .locals 1

    const-string v0, "6"

    return-object v0
.end method

.method public initExtraType()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAlphaElement:I

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mBetaElement:I

    return-void
.end method

.method public onAdapterItemClick(Lcom/android/camera/data/data/TypeItem;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;IZ)V

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    const-string v0, "6"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClearClick()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->clearBeauty()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->selectFirstItem()V

    return-void
.end method

.method public onResetClick()V
    .locals 2

    const-string v0, "BeautyBodyFragment"

    const-string/jumbo v1, "onResetClick"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->resetBeauty()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->selectFirstItem()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/TypeItem;

    iget-object v0, v0, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    const-string/jumbo v1, "pref_beautify_skin_smooth_ratio_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120234

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->toast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "6"

    const-string v1, "RESET"

    .line 8
    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
