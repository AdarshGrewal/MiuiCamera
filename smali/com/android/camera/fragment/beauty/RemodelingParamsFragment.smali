.class public Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;
.super Lcom/android/camera/fragment/beauty/MakeupParamsFragment;
.source "RemodelingParamsFragment.java"


# static fields
.field public static final DEFAULT_SKIN_TYPE:Ljava/lang/String; = "0"

.field public static SKIN_COLOR_TYPE_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "RemodelingParamsFragment"


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/camera/data/data/TypeItem;

    .line 1
    new-instance v1, Lcom/android/camera/data/data/TypeItem;

    const-string v2, "-1"

    .line 2
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getString(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f0803ca

    const-string/jumbo v5, "pref_beautify_color_skin_ratio_key"

    invoke-direct {v1, v4, v3, v2, v5}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/TypeItem;

    const-string v2, "0"

    .line 3
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getString(Ljava/lang/String;)I

    move-result v3

    .line 4
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getSkinColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/data/data/TypeItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/TypeItem;

    const-string v2, "1"

    .line 5
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getString(Ljava/lang/String;)I

    move-result v3

    .line 6
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getSkinColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/data/data/TypeItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/TypeItem;

    const-string v2, "2"

    .line 7
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getString(Ljava/lang/String;)I

    move-result v3

    .line 8
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getSkinColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/data/data/TypeItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/TypeItem;

    const-string v2, "3"

    .line 9
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getString(Ljava/lang/String;)I

    move-result v3

    .line 10
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getSkinColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/data/data/TypeItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/TypeItem;

    const-string v2, "4"

    .line 11
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getString(Ljava/lang/String;)I

    move-result v3

    .line 12
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getSkinColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/data/data/TypeItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/TypeItem;

    const-string v2, "5"

    .line 13
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getString(Ljava/lang/String;)I

    move-result v3

    .line 14
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getSkinColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/data/data/TypeItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/TypeItem;

    const-string v2, "6"

    .line 15
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getString(Ljava/lang/String;)I

    move-result v3

    .line 16
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getSkinColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/data/data/TypeItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/TypeItem;

    const-string v2, "7"

    .line 17
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getString(Ljava/lang/String;)I

    move-result v3

    .line 18
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getSkinColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/data/data/TypeItem;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/TypeItem;

    const-string v2, "8"

    .line 19
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getString(Ljava/lang/String;)I

    move-result v3

    .line 20
    invoke-static {v2}, Lcom/android/camera/constant/SkinColorConstant;->getSkinColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/data/data/TypeItem;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 21
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->SKIN_COLOR_TYPE_LIST:Ljava/util/List;

    return-void
.end method

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
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->getShineType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getExtraList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x793fd29

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "pref_beautify_color_skin_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_2
    sget-object p1, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->SKIN_COLOR_TYPE_LIST:Ljava/util/List;

    return-object p1
.end method

.method public getShineType()Ljava/lang/String;
    .locals 1

    const-string v0, "4"

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
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0oo/OooO0OO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0oo/OooO0OO;-><init>(Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;)V

    return-object v0
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

.method public reSelectExtraItem(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "pref_beautify_color_skin_ratio_key"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSkinColorType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    const/4 v0, 0x1

    .line 4
    :goto_0
    sget-object v1, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->SKIN_COLOR_TYPE_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5
    sget-object v1, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->SKIN_COLOR_TYPE_LIST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/TypeItem;

    .line 6
    invoke-virtual {v1}, Lcom/android/camera/data/data/TypeItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->onExtraItemSelected(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
