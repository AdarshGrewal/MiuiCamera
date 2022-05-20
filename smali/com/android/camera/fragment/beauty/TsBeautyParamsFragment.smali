.class public Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;
.super Lcom/android/camera/fragment/beauty/MakeupParamsFragment;
.source "TsBeautyParamsFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RemodelingParamsFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/TypeItem;

    iget-object p1, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p4, 0xb4

    .line 3
    invoke-virtual {p2, p4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz p2, :cond_0

    .line 4
    iget-object p4, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/data/data/TypeItem;

    iget p3, p3, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    const/4 p4, 0x1

    invoke-interface {p2, p1, p3, p4}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;IZ)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->getShineType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getShineType()Ljava/lang/String;
    .locals 1

    const-string v0, "5"

    return-object v0
.end method

.method public initExtraType()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    .line 2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/TypeItem;

    iget-object v0, v0, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    const-string/jumbo v3, "pref_beautify_skin_smooth_ratio_key"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    const/4 v0, -0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    move v2, v0

    .line 3
    :goto_0
    iput v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAlphaElement:I

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iput v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mBetaElement:I

    return-void
.end method

.method public initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0oo/OooO0o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0oo/OooO0o;-><init>(Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;)V

    return-object v0
.end method

.method public onBeautyNoneClick()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->onBeautyNoneClick()V

    return-void
.end method

.method public onClearClick()V
    .locals 3

    const-string v0, "RemodelingParamsFragment"

    const-string/jumbo v1, "onClearClick"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->onClearClick()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    const-string v2, "attr_click_beauty_face_clear"

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_beauty_face"

    .line 5
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public onResetClick()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->onResetClick()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    const-string v2, "attr_click_beauty_face_reset"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_beauty_face"

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
