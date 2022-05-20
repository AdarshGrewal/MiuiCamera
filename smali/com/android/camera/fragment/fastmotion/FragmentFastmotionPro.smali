.class public Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentFastmotionPro.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$FastmotionProAdjust;
.implements Lcom/android/camera/fragment/manually/ManuallyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro$ItemPadding;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public mComponentRunningFastMotionPro:Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;

.field public mCurrentAdjustType:I

.field public mCurrentState:I

.field public mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

.field public mIsSuperEISEnabled:Z

.field public mIsVideoRecording:Z

.field public mManuallyComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;"
        }
    .end annotation
.end field

.field public mManuallyParent:Landroid/view/ViewGroup;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mRecyclerViewItemWidth:F

.field public mRootView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mCurrentAdjustType:I

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mCurrentState:I

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/data/data/ComponentData;ZLcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;)V
    .locals 0

    .line 1
    check-cast p0, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-virtual {p2, p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->showCustomWB(Lcom/android/camera/data/data/config/ComponentManuallyWB;Z)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->toUpdateAutoButton()V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->toUpdateAutoButton()V

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->toUpdateAutoButton()V

    return-void
.end method

.method public static synthetic OooO0Oo(Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->toUpdateAutoButton()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private getExtraFragment()Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private initManually()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->initManuallyDataList()Ljava/util/List;

    .line 2
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mManuallyComponents:Ljava/util/List;

    iget v3, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRecyclerViewItemWidth:F

    .line 3
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;-><init>(ILandroid/view/View$OnClickListener;Ljava/util/List;I)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->getExtraFragment()Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->updateData()V

    .line 6
    invoke-virtual {v1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->getCurrentTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 7
    :cond_0
    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8
    check-cast v0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setRotate(I)V

    return-void
.end method

.method private initManuallyDataList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mManuallyComponents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mManuallyComponents:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyWB()Lcom/android/camera/data/data/config/ComponentManuallyWB;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0OO00O()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isAFRegionSupported()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->setFixedFocusLens(Z)V

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyISO()Lcom/android/camera/data/data/config/ComponentManuallyISO;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallyEV()Lcom/android/camera/data/data/config/ComponentManuallyEV;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mManuallyComponents:Ljava/util/List;

    return-object v0
.end method

.method private onDismissFinished(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->setManuallyLayoutVisible(ZI)V

    return-void
.end method

.method private performFocusValueChangedViberator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    rem-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0oO()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private reCheckFastmotionSpeedValue()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionSpeed()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v1

    const/16 v2, 0xa9

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;->getItems()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    .line 6
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 7
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/data/data/ComponentDataItem;

    .line 8
    iget-object v7, v6, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v9, v7, v3

    if-ltz v9, :cond_0

    .line 9
    iget-object v1, v6, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 10
    sget-object v5, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reCheckFastmotionSpeedValue speedValue "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " etValue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "120"

    .line 11
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 14
    sget-object v0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reCheckFastmotionSpeedValue max "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeExtra()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private resetTips()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_0

    .line 2
    sget-boolean v1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    .line 4
    :cond_0
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_2
    return-void
.end method

.method private updateEVState(I)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallyEV()Lcom/android/camera/data/data/config/ComponentManuallyEV;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyISO()Lcom/android/camera/data/data/config/ComponentManuallyISO;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/32 v7, 0x7735940

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    if-lez v5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 10
    :goto_0
    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/config/ComponentManuallyEV;->setDisabled(Z)V

    if-eqz v6, :cond_2

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->getCurrentTitle()I

    move-result p1

    const v0, 0x7f12073e

    if-ne p1, v0, :cond_2

    .line 13
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->removeExtra()V

    :cond_2
    return-void
.end method


# virtual methods
.method public dismiss(II)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->reCheckFastmotionSpeedValue()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mCurrentState:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v3, 0xa0

    invoke-virtual {p1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p1, :cond_2

    new-array v2, v2, [I

    .line 5
    invoke-interface {p1, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateDeparture(Landroid/view/View;)V

    .line 7
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->onDismissFinished(I)V

    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfffff6

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d007c

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRootView:Landroid/view/View;

    .line 2
    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    const v0, 0x7f0a0170

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mManuallyParent:Landroid/view/ViewGroup;

    const v0, 0x7f0a0173

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 6
    new-instance p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "manually_recycler_view"

    invoke-direct {p1, v1, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro$ItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro$ItemPadding;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRecyclerViewItemWidth:F

    const/4 p1, 0x1

    const/4 v0, 0x4

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->setManuallyLayoutVisible(ZI)V

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionPro()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mComponentRunningFastMotionPro:Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;

    return-void
.end method

.method public isShowing()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onBackEvent(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->getCurrentTitle()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    invoke-virtual {v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->animateOut()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mCurrentState:I

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 4
    :cond_3
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->dismiss(II)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentData;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v1

    .line 5
    sget-object v2, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->getExtraFragment()Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    if-nez p1, :cond_1

    .line 7
    sget-object p1, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onClick FragmentFastmotionProExtra show"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance p1, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    invoke-direct {p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    .line 9
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->setmFragmentManually(Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    iget-boolean v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mIsVideoRecording:Z

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->updateRecordingState(Z)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3, p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->setComponentData(Lcom/android/camera/data/data/ComponentData;IZLcom/android/camera/fragment/manually/ManuallyListener;)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a0172

    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    .line 14
    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {p1, v0, v2, v3}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->getCurrentTitle()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 18
    sget-object p1, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick FragmentFastmotionProExtra hide"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    invoke-virtual {p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->animateOut()V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    goto :goto_0

    .line 21
    :cond_2
    sget-object p1, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onClick FragmentFastmotionProExtra reset"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    iget-boolean v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mIsVideoRecording:Z

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->updateRecordingState(Z)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mFragmentFastmotionProExtra:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->resetData(Lcom/android/camera/data/data/ComponentData;)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    :goto_0
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mComponentRunningFastMotionPro:Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;->setClosed(Z)V

    :cond_0
    return-void
.end method

.method public onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p5, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v2

    const/16 v3, 0x3e8

    const-string v4, "0"

    const/4 v5, 0x6

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    .line 6
    :sswitch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->getExtraFragment()Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p4

    sget-object v2, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOO0/OooO0oO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOO0/OooO0oO;

    invoke-virtual {p4, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/16 p4, 0x9

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getManualFocusName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p4, v6, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 9
    :cond_3
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onFocusValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyFocus;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-boolean p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mIsVideoRecording:Z

    if-nez p1, :cond_9

    .line 11
    invoke-direct {p0, p2, p3}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->performFocusValueChangedViberator(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 12
    :sswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionPro()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;

    .line 13
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 14
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->getExtraFragment()Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p4

    sget-object v2, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOO0/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOO0/OooO0o;

    invoke-virtual {p4, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v2

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, v5, v6, p4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 16
    :cond_4
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyET;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onETValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyET;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-boolean p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mIsVideoRecording:Z

    if-nez p1, :cond_9

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1, v5}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0OO()V

    goto/16 :goto_0

    :sswitch_2
    const-string p2, "manual"

    .line 20
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 21
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000OO()Z

    move-result p2

    .line 22
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->getExtraFragment()Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOO0/OooO0Oo;

    invoke-direct {v3, p1, p2}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOO0/OooO0Oo;-><init>(Lcom/android/camera/data/data/ComponentData;Z)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 23
    :cond_5
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-interface {v0, p1, p3, p4}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onWBValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyWB;Ljava/lang/String;Z)V

    if-eqz p4, :cond_6

    .line 24
    iget-boolean p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mIsVideoRecording:Z

    if-nez p1, :cond_6

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1, v5}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0OO()V

    :cond_6
    if-eqz p4, :cond_9

    const/4 p1, 0x5

    .line 27
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWB()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, v6, p2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 28
    :sswitch_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 29
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->getExtraFragment()Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    sget-object p4, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOO0/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOO0/OooO0OO;

    invoke-virtual {p2, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/16 p2, 0x8

    .line 30
    iget p4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p4}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, p2, v6, p4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 31
    :cond_7
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyEV;

    invoke-interface {v0, p1, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onEVValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyEV;Ljava/lang/String;)V

    .line 32
    iget-boolean p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mIsVideoRecording:Z

    if-nez p1, :cond_9

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1, v5}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0OO()V

    goto :goto_0

    .line 35
    :sswitch_4
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_8

    .line 36
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->getExtraFragment()Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p4

    sget-object v2, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOO0/OooO0o0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOO0/OooO0o0;

    invoke-virtual {p4, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p4, 0x7

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v3}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p4, v6, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 38
    :cond_8
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyISO;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onISOValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyISO;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-boolean p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mIsVideoRecording:Z

    if-nez p1, :cond_9

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1, v5}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0OO()V

    .line 42
    :cond_9
    :goto_0
    invoke-direct {p0, p5}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->updateEVState(I)V

    .line 43
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa4

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    .line 44
    invoke-interface {p1, v6}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterResetTip(Z)V

    .line 45
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    .line 46
    :cond_a
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro$1;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro$1;-><init>(Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_b
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f120719 -> :sswitch_4
        0x7f12073e -> :sswitch_3
        0x7f1207d6 -> :sswitch_2
        0x7f120817 -> :sswitch_1
        0x7f120831 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 4
    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v0

    const v2, 0xfffff6

    if-ne v0, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->onBackEvent(I)Z

    :cond_0
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

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mCurrentState:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->onBackEvent(I)Z

    return-void
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

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
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setRotate(I)V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->getExtraFragment()Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->getExtraFragment()Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->provideRotateItem(Ljava/util/List;I)V

    :cond_2
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0x3a4

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public resetManually()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mManuallyComponents:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->getExtraFragment()Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->getCurrentTitle()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 4
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v1

    .line 5
    :goto_1
    iget-object v6, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 6
    iget-object v6, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/data/data/ComponentData;

    .line 7
    instance-of v7, v6, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    if-eqz v7, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 9
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    .line 11
    invoke-virtual {v6}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v6

    if-ne v6, v2, :cond_4

    move v5, v4

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12
    :cond_5
    iget-object v4, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eq v2, v1, :cond_6

    if-eq v5, v1, :cond_6

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->resetData(Lcom/android/camera/data/data/ComponentData;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 15
    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-nez v0, :cond_7

    return-void

    .line 17
    :cond_7
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->resetManuallyParameters(Ljava/util/List;)V

    .line 18
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->updateEVState(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setManuallyLayoutVisible(ZI)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->updateEVState(I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->initManually()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    iput v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mCurrentState:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mCurrentState:I

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mComponentRunningFastMotionPro:Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;->setClosed(Z)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v2, 0xa1

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result p1

    if-nez p1, :cond_2

    if-eq p2, v0, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->resetTips()V

    .line 12
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v2, 0xa4

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    .line 13
    invoke-interface {p1, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterResetTip(Z)V

    if-eq p2, v0, :cond_3

    .line 14
    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckFastMotion(Z)V

    :cond_3
    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->setManuallyLayoutVisible(ZI)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance(Landroid/view/View;)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0x3a4

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->removeExtra()V

    return-void
.end method

.method public visibleHeight()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mCurrentAdjustType:I

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070743

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
