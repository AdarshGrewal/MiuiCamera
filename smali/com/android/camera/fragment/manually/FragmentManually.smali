.class public Lcom/android/camera/fragment/manually/FragmentManually;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentManually.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;
.implements Lcom/android/camera/fragment/manually/ManuallyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/manually/FragmentManually$ItemPadding;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public mCurrentAdjustType:I

.field public mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

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
    const-class v0, Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/manually/FragmentManually;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/data/data/ComponentData;ZLcom/android/camera/fragment/manually/FragmentManuallyExtra;)V
    .locals 0

    .line 1
    check-cast p0, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-virtual {p2, p0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->showCustomWB(Lcom/android/camera/data/data/config/ComponentManuallyWB;Z)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/fragment/manually/FragmentManuallyExtra;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->toUpdateAutoButton()V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/fragment/manually/FragmentManuallyExtra;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->toUpdateAutoButton()V

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/fragment/manually/FragmentManuallyExtra;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->toUpdateAutoButton()V

    return-void
.end method

.method public static synthetic OooO0Oo(Lcom/android/camera/fragment/manually/FragmentManuallyExtra;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->toUpdateAutoButton()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/manually/FragmentManually;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private initManually()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initManuallyDataList()Ljava/util/List;

    .line 2
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    iget v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewItemWidth:F

    .line 3
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;-><init>(ILandroid/view/View$OnClickListener;Ljava/util/List;I)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->updateData()V

    .line 6
    invoke-virtual {v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->getCurrentTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 7
    :cond_0
    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

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
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

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
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyISO()Lcom/android/camera/data/data/config/ComponentManuallyISO;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallyEV()Lcom/android/camera/data/data/config/ComponentManuallyEV;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0ooo()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    if-nez v1, :cond_4

    .line 15
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    return-object v0
.end method

.method private initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 3
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->initTilt(Lcom/android/camera/fragment/manually/ManuallyListener;)V

    goto :goto_0

    .line 4
    :cond_1
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 5
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->initScene(Lcom/android/camera/fragment/manually/ManuallyListener;)V

    goto :goto_0

    .line 6
    :cond_2
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initManually()V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p1

    :cond_3
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 10
    iget-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return p1
.end method

.method private initScene(Lcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSceneValue()Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    move-result-object v2

    .line 2
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewItemWidth:F

    .line 3
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;-><init>(Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;II)V

    .line 4
    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method private initTilt(Lcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewItemWidth:F

    .line 3
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v1, v0, v2, p1, v3}, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;-><init>(Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;I)V

    .line 4
    iput-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method private isReinitNeeded(III)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/16 p1, 0xb4

    const/16 v0, 0xa7

    if-eq p3, v0, :cond_2

    if-eq p3, p1, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    return v1

    :cond_2
    if-ne p2, p1, :cond_3

    return v1

    .line 2
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result p1

    .line 3
    iget-boolean p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsSuperEISEnabled:Z

    if-eq p2, p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
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

.method private reInitManuallyLayout(IIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/manually/FragmentManually;->isReinitNeeded(III)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsSuperEISEnabled:Z

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    if-eqz p1, :cond_2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p3, p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 5
    invoke-direct {p0, p3, p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I

    :goto_0
    if-nez p1, :cond_4

    if-eqz p4, :cond_4

    const/16 p1, 0xa7

    if-eq p2, p1, :cond_3

    const/16 p1, 0xb4

    if-eq p2, p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateHide(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    :cond_4
    return-void
.end method

.method private removeExtra()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private setManuallyLayoutViewVisible(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/16 v1, 0xfe

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    const/4 v0, 0x1

    const/16 v1, 0x118

    const/16 v2, 0x50

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/4 v3, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setAnimateViewVisible(Landroid/view/View;I)V

    goto :goto_0

    .line 6
    :cond_1
    iput v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p1, v2}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->directSetResult(Landroid/view/View;I)V

    goto :goto_0

    .line 8
    :cond_2
    iput v3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 9
    new-instance p1, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-direct {p1, v0, v2}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    .line 10
    invoke-virtual {p1, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 14
    :cond_3
    new-instance p1, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-direct {p1, v0, v2}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    .line 15
    invoke-virtual {p1, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 16
    invoke-virtual {p1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_0
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
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->getCurrentTitle()I

    move-result p1

    const v0, 0x7f12073e

    if-ne p1, v0, :cond_2

    .line 13
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->removeExtra()V

    :cond_2
    return-void
.end method


# virtual methods
.method public forceUpdateManualView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xf7

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0091

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRootView:Landroid/view/View;

    .line 2
    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    const v0, 0x7f0a0260

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const v0, 0x7f0a026b

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 6
    new-instance p1, Lcom/android/camera/fragment/manually/FragmentManually$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "manually_recycler_view"

    invoke-direct {p1, p0, v1, v2}, Lcom/android/camera/fragment/manually/FragmentManually$1;-><init>(Lcom/android/camera/fragment/manually/FragmentManually;Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/fragment/manually/FragmentManually$ItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/manually/FragmentManually$ItemPadding;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewItemWidth:F

    .line 11
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/manually/FragmentManually;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xc2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0x3a6

    .line 5
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 7
    :goto_1
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa7

    if-eq v1, v2, :cond_2

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    if-nez v0, :cond_3

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    :cond_3
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    iget p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p2, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initManuallyDataList()Ljava/util/List;

    .line 4
    iget-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->notifyDataChanged(II)V

    :cond_1
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->getCurrentTitle()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "M_manual_"

    const-string v3, "manual_edit_tab_hide"

    .line 4
    invoke-static {v2, v3, p1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->animateOut()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    :cond_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/fragment/manually/FragmentManually;->TAG:Ljava/lang/String;

    const-string v0, "ignore click due to disabled"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p1, Lcom/android/camera/fragment/manually/FragmentManually;->TAG:Ljava/lang/String;

    const-string v0, "ignore click due to doing action"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentData;

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v1

    .line 9
    sget-object v2, Lcom/android/camera/fragment/manually/FragmentManually;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->getSelectedTitle()I

    move-result p1

    if-ne p1, v2, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 13
    :goto_0
    iget-object v4, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz v4, :cond_5

    if-eqz p1, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v4}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->getCurrentTitle()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 15
    sget-object p1, Lcom/android/camera/fragment/manually/FragmentManually;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick FragmentManuallyExtra hide"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->animateOut()V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    goto :goto_2

    .line 18
    :cond_4
    sget-object p1, Lcom/android/camera/fragment/manually/FragmentManually;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onClick FragmentManuallyExtra reset"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    iget-boolean v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->updateRecordingState(Z)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->resetData(Lcom/android/camera/data/data/ComponentData;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    goto :goto_2

    .line 22
    :cond_5
    :goto_1
    sget-object p1, Lcom/android/camera/fragment/manually/FragmentManually;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onClick FragmentManuallyExtra show"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance p1, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-direct {p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    .line 24
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->setFragmentManually(Lcom/android/camera/fragment/manually/FragmentManually;)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    iget-boolean v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->updateRecordingState(Z)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v0, v2, v3, p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->setComponentData(Lcom/android/camera/data/data/ComponentData;IZLcom/android/camera/fragment/manually/ManuallyListener;)V

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a026a

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    .line 29
    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-static {p1, v0, v2, v4}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 32
    :goto_2
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 33
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {p1, v3}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->setClickEnable(Z)V

    :cond_6
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p5, v0, :cond_0

    goto/16 :goto_2

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
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->getModuleIndex()I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    .line 5
    sget-object p1, Lcom/android/camera/fragment/manually/FragmentManually;->TAG:Ljava/lang/String;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->getModuleIndex()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v4

    iget p3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    const-string/jumbo p3, "onManuallyDataChanged canceled receiver %d sender %d"

    .line 7
    invoke-static {p1, p3, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v1, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v2

    const/16 v5, 0x3e8

    const-string v6, "0"

    const/4 v7, 0x6

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    .line 10
    :sswitch_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p4

    sget-object v2, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOo0/OooO0o0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOo0/OooO0o0;

    invoke-virtual {p4, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/16 p4, 0x9

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/camera/CameraSettings;->getManualFocusName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p4, v4, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 13
    :cond_4
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onFocusValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyFocus;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    if-nez p1, :cond_a

    .line 15
    invoke-direct {p0, p2, p3}, Lcom/android/camera/fragment/manually/FragmentManually;->performFocusValueChangedViberator(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 16
    :sswitch_1
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 17
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p4

    sget-object v2, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOo0/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOo0/OooO0OO;

    invoke-virtual {p4, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v2

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, v7, v4, p4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 19
    :cond_5
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyET;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onETValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyET;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    if-nez p1, :cond_a

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1, v7}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0OO()V

    goto/16 :goto_0

    .line 23
    :sswitch_2
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onDualLensSwitch(Lcom/android/camera/data/data/config/ComponentManuallyDualLens;I)V

    move v3, v4

    goto/16 :goto_0

    :sswitch_3
    const-string p2, "manual"

    .line 24
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 25
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000OO()Z

    move-result p2

    .line 26
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v5, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOo0/OooO0Oo;

    invoke-direct {v5, p1, p2}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOo0/OooO0Oo;-><init>(Lcom/android/camera/data/data/ComponentData;Z)V

    invoke-virtual {v2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 27
    :cond_6
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-interface {v0, p1, p3, p4}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onWBValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyWB;Ljava/lang/String;Z)V

    if-eqz p4, :cond_7

    .line 28
    iget-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    if-nez p1, :cond_7

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1, v7}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0OO()V

    :cond_7
    if-eqz p4, :cond_a

    const/4 p1, 0x5

    .line 31
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWB()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, v4, p2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 32
    :sswitch_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 33
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    sget-object p4, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOo0/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOo0/OooO0o;

    invoke-virtual {p2, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/16 p2, 0x8

    .line 34
    iget p4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p4}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, p2, v4, p4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 35
    :cond_8
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyEV;

    invoke-interface {v0, p1, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onEVValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyEV;Ljava/lang/String;)V

    .line 36
    iget-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    if-nez p1, :cond_a

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1, v7}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0OO()V

    goto :goto_0

    .line 39
    :sswitch_5
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_9

    .line 40
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p4

    sget-object v2, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOo0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOo0/OooO0O0;

    invoke-virtual {p4, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p4, 0x7

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v5}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p4, v4, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 42
    :cond_9
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyISO;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onISOValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyISO;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    if-nez p1, :cond_a

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1, v7}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0OO()V

    .line 46
    :cond_a
    :goto_0
    invoke-direct {p0, p5}, Lcom/android/camera/fragment/manually/FragmentManually;->updateEVState(I)V

    if-eqz v3, :cond_b

    .line 47
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa4

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    .line 48
    invoke-interface {p1, v4}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterResetTip(Z)V

    goto :goto_1

    .line 49
    :cond_b
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    .line 50
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    .line 51
    :cond_c
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/android/camera/fragment/manually/FragmentManually$2;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/manually/FragmentManually$2;-><init>(Lcom/android/camera/fragment/manually/FragmentManually;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 52
    :cond_d
    :goto_2
    sget-object p1, Lcom/android/camera/fragment/manually/FragmentManually;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onManuallyDataChanged ignored"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120719 -> :sswitch_5
        0x7f12073e -> :sswitch_4
        0x7f1207d6 -> :sswitch_3
        0x7f1207e6 -> :sswitch_2
        0x7f120817 -> :sswitch_1
        0x7f120831 -> :sswitch_0
    .end sparse-switch
.end method

.method public onRecordingPrepare()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->updateRecordingState(Z)V

    const v1, 0x7f1207e6

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {v2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->getCurrentTitle()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->animateOut()V

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 7
    :cond_0
    invoke-direct {p0, v0, p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I

    const/16 v1, 0xb4

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/manually/FragmentManually;->notifyDataChanged(II)V

    return-void
.end method

.method public onRecordingStop()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsVideoRecording:Z

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->updateRecordingState(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0, p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I

    const/16 v1, 0xb4

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/manually/FragmentManually;->notifyDataChanged(II)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
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
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/16 p3, 0xa7

    if-eq p1, p3, :cond_0

    const/16 p3, 0xb4

    if-eq p1, p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    if-eqz p3, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManually;->updateEVState(I)V

    .line 4
    :cond_1
    invoke-direct {p0, p3, v0, p1, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->reInitManuallyLayout(IIILjava/util/List;)V

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
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRootView:Landroid/view/View;

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
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setRotate(I)V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->provideRotateItem(Ljava/util/List;I)V

    :cond_2
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb5

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public resetManually()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->getCurrentTitle()I

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
    iget-object v6, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 6
    iget-object v6, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

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
    iget-object v4, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eq v2, v1, :cond_6

    if-eq v5, v1, :cond_6

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->resetData(Lcom/android/camera/data/data/ComponentData;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

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

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/manually/FragmentManually;->updateEVState(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setClickEnable(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->setClickEnable(Z)V

    :cond_0
    return-void
.end method

.method public setManuallyLayoutVisible(Z)V
    .locals 3

    const/16 v0, 0xa7

    const/16 v1, 0xb4

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    :goto_0
    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 5
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    goto :goto_3

    .line 7
    :cond_3
    iput v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 8
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x4

    if-eq p1, v1, :cond_5

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 10
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I
    .locals 1

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I

    move-result p3

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->setManuallyLayoutViewVisible(I)V

    return p3
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb5

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->removeExtra()V

    return-void
.end method

.method public visibleHeight()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

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
