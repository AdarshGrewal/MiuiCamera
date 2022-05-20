.class public Lcom/android/camera/fragment/beauty/VideoBokehColorRetentionFragment;
.super Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;
.source "VideoBokehColorRetentionFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;-><init>()V

    return-void
.end method

.method private getPositionByMode(I)I
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0
.end method


# virtual methods
.method public augmentItemList()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->augmentItemList()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehColorRetentionMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/beauty/VideoBokehColorRetentionFragment;->getPositionByMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    return-void
.end method

.method public getClassString()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/beauty/VideoBokehColorRetentionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShineType()Ljava/lang/String;
    .locals 1

    const-string v0, "8"

    return-object v0
.end method

.method public initExtraType()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAlphaElement:I

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mBetaElement:I

    return-void
.end method

.method public onAdapterItemClick(Lcom/android/camera/data/data/TypeItem;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb4

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    iget p1, p1, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public onClearClick()V
    .locals 0

    return-void
.end method

.method public onResetClick()V
    .locals 0

    return-void
.end method

.method public onViewCreatedAndVisibleToUser(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehColorRetentionMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/beauty/VideoBokehColorRetentionFragment;->getPositionByMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setSelectedPosition(I)V

    .line 4
    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->onViewCreatedAndVisibleToUser(Z)V

    return-void
.end method
