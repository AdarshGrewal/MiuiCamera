.class public Lcom/android/camera/fragment/ambilight/FragmentAmbilight;
.super Lcom/android/camera/fragment/BasePanelFragment;
.source "FragmentAmbilight.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$TopAlertEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/ambilight/FragmentAmbilight$EffectItemPadding;,
        Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xfffff0

.field public static final TAG:Ljava/lang/String; = "FragmentAmbilight"


# instance fields
.field public mComponentConfigAmbilight:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

.field public mCurrentIndex:I

.field public mDebugInfoTextView:Landroid/widget/TextView;

.field public mEffectItemPadding:Lcom/android/camera/fragment/ambilight/FragmentAmbilight$EffectItemPadding;

.field public mIgnoreSameItemClick:Z

.field public mIndicatorButton:Landroid/widget/ImageView;

.field public mIsManuallyParentHiding:Z

.field public mIsShooting:Z

.field public mLastIndex:I

.field public mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

.field public mMode:I

.field public mRootLayout:Landroid/widget/LinearLayout;

.field public mRootView:Landroid/view/View;

.field public mSceneModeList:Landroidx/recyclerview/widget/RecyclerView;

.field public mSceneModeSelector:Landroid/widget/LinearLayout;

.field public mSceneModesItemAdapter:Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BasePanelFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mLastIndex:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIgnoreSameItemClick:Z

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/ambilight/FragmentAmbilight;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mCurrentIndex:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/ambilight/FragmentAmbilight;Landroid/view/View;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->setAccessible(Landroid/view/View;IZ)V

    return-void
.end method

.method private animateAlphaShow(Landroid/view/View;IIF)V
    .locals 2

    .line 1
    invoke-static {p1, p4}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 2
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    int-to-long v0, p2

    .line 3
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    int-to-long p2, p3

    .line 4
    invoke-virtual {p1, p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private getAmbilightInfo()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/fragment/ambilight/AmbilightInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    new-instance v1, Lcom/android/camera/fragment/ambilight/AmbilightInfo;

    const/4 v6, 0x0

    const v4, 0x7f120149

    const v5, 0x7f080090

    const/4 v7, 0x4

    const/4 v3, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/fragment/ambilight/AmbilightInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/android/camera/fragment/ambilight/AmbilightInfo;

    const/4 v12, 0x1

    const v10, 0x7f12014e

    const v11, 0x7f080095

    const/4 v13, 0x0

    move-object v8, v1

    move v9, v12

    invoke-direct/range {v8 .. v13}, Lcom/android/camera/fragment/ambilight/AmbilightInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/android/camera/fragment/ambilight/AmbilightInfo;

    const/4 v6, 0x2

    const v4, 0x7f12014c

    const v5, 0x7f080093

    const/4 v7, 0x1

    move-object v2, v1

    move v3, v6

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/fragment/ambilight/AmbilightInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/android/camera/fragment/ambilight/AmbilightInfo;

    const/4 v12, 0x3

    const v10, 0x7f12014a

    const v11, 0x7f080091

    const/4 v13, 0x2

    move-object v8, v1

    move v9, v12

    invoke-direct/range {v8 .. v13}, Lcom/android/camera/fragment/ambilight/AmbilightInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/android/camera/fragment/ambilight/AmbilightInfo;

    const/4 v6, 0x4

    const v4, 0x7f12014b

    const v5, 0x7f080092

    const/4 v7, 0x5

    move-object v2, v1

    move v3, v6

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/fragment/ambilight/AmbilightInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcom/android/camera/fragment/ambilight/AmbilightInfo;

    const/4 v12, 0x5

    const v10, 0x7f12014d

    const v11, 0x7f080094

    const/4 v13, 0x3

    move-object v8, v1

    move v9, v12

    invoke-direct/range {v8 .. v13}, Lcom/android/camera/fragment/ambilight/AmbilightInfo;-><init>(IIIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private hideAmbilightLayout(I)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIsManuallyParentHiding:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIsManuallyParentHiding:Z

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeSelector:Landroid/widget/LinearLayout;

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0oO/OooO0O0;

    invoke-direct {v2, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0oO/OooO0O0;-><init>(Lcom/android/camera/fragment/ambilight/FragmentAmbilight;I)V

    invoke-static {v1, v2}, Lcom/android/camera/animation/FolmeUtils;->animateDeparture(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIndicatorButton:Landroid/widget/ImageView;

    const/16 v1, 0x96

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->animateAlphaShow(Landroid/view/View;IIF)V

    :cond_3
    return v0
.end method

.method private onHideFinished(I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIsManuallyParentHiding:Z

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeSelector:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->updateTips()V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeSelector:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 7
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private onItemSelected(IZ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onItemSelected: index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromClick = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mCurrentMode = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", DataRepository.dataItemGlobal().getCurrentMode() = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FragmentAmbilight"

    .line 3
    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v1, 0x1a4

    .line 5
    invoke-virtual {p2, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;

    if-nez p2, :cond_0

    const-string/jumbo p1, "onItemSelected: configChanges = null"

    .line 6
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mComponentConfigAmbilight:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigAmbilight;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mComponentConfigAmbilight:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/config/ComponentConfigAmbilight;->setAmbilightModeValue(I)V

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mMode:I

    .line 10
    invoke-interface {p2, v1}, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;->onSceneModeSelect(I)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->updateTips()V

    .line 12
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->selectItem(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid filter id: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onShowFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mRootLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigAmbilight()Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigAmbilight;->getAmbilightModeIndex()I

    move-result v0

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->selectItem(I)V

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->onItemSelected(IZ)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeSelector:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 7
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private scrollIfNeed(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModesItemAdapter:Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;

    .line 6
    invoke-virtual {v1}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mEffectItemPadding:Lcom/android/camera/fragment/ambilight/FragmentAmbilight$EffectItemPadding;

    iget v0, v0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$EffectItemPadding;->mHorizontalPadding:I

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-lez p1, :cond_3

    if-eqz v1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mEffectItemPadding:Lcom/android/camera/fragment/ambilight/FragmentAmbilight$EffectItemPadding;

    iget v0, v0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$EffectItemPadding;->mHorizontalPadding:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method private selectItem(I)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    .line 1
    iget v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mCurrentIndex:I

    if-ne p1, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mLastIndex:I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mCurrentIndex:I

    const v2, 0x7f120465

    if-le v1, v0, :cond_3

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mComponentConfigAmbilight:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigAmbilight;->getItems()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mLastIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 6
    iget-object v3, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeList:Landroidx/recyclerview/widget/RecyclerView;

    iget v4, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mLastIndex:I

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModesItemAdapter:Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;

    iget v3, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mLastIndex:I

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 9
    :cond_3
    iget v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mCurrentIndex:I

    if-le v1, v0, :cond_6

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mComponentConfigAmbilight:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigAmbilight;->getItems()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    iget v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectItem "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v0, :cond_4

    move v2, v0

    :cond_4
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentAmbilight"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mComponentConfigAmbilight:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    if-eqz v1, :cond_5

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeList:Landroidx/recyclerview/widget/RecyclerView;

    iget v3, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mCurrentIndex:I

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->setAccessible(Landroid/view/View;IZ)V

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModesItemAdapter:Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;

    iget v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mCurrentIndex:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 17
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->scrollIfNeed(I)V

    :cond_7
    return-void
.end method

.method private setAccessible(Landroid/view/View;IZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_2

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    const p2, 0x7f120465

    :goto_0
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f1200ae

    .line 2
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 5
    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0oO/OooO0OO;

    invoke-direct {p2, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0oO/OooO0OO;-><init>(Lcom/android/camera/fragment/ambilight/FragmentAmbilight;Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private showSelector()V
    .locals 2

    const-string v0, "FragmentAmbilight"

    const-string/jumbo v1, "onClick: showSelector"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeSelector:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->updateTips()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIndicatorButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->onShowFinished()V

    return-void
.end method

.method public synthetic OooO00o(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->onHideFinished(I)V

    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public getAnimationType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfffff0

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d004d

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mRootView:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getMarginStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getMarginEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const v0, 0x7f0a0060

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mRootLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a005f

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeList:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0061

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeSelector:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0102

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mDebugInfoTextView:Landroid/widget/TextView;

    .line 10
    new-instance v0, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x96

    .line 11
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 12
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 13
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 14
    iget-object v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 15
    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ambilight"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigAmbilight()Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mComponentConfigAmbilight:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    .line 20
    invoke-direct {p0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->getAmbilightInfo()Ljava/util/ArrayList;

    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mComponentConfigAmbilight:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v3, v2, v4}, Lcom/android/camera/data/data/config/ComponentConfigAmbilight;->mapToItems(Ljava/util/ArrayList;I)V

    .line 22
    new-instance v2, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;

    iget-object v3, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mComponentConfigAmbilight:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;-><init>(Lcom/android/camera/fragment/ambilight/FragmentAmbilight;Landroid/content/Context;Lcom/android/camera/data/data/config/ComponentConfigAmbilight;)V

    iput-object v2, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModesItemAdapter:Lcom/android/camera/fragment/ambilight/FragmentAmbilight$SceneModeItemAdapter;

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$1;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$1;-><init>(Lcom/android/camera/fragment/ambilight/FragmentAmbilight;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 25
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mEffectItemPadding:Lcom/android/camera/fragment/ambilight/FragmentAmbilight$EffectItemPadding;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$EffectItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$EffectItemPadding;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mEffectItemPadding:Lcom/android/camera/fragment/ambilight/FragmentAmbilight$EffectItemPadding;

    .line 27
    iget-object v2, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    const v0, 0x7f0a005e

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIndicatorButton:Landroid/widget/ImageView;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    aput-object p1, v0, v1

    .line 29
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeSelector:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->updateTips()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIndicatorButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeSelector:Landroid/widget/LinearLayout;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0oO/OooO00o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0oO/OooO00o;-><init>(Lcom/android/camera/fragment/ambilight/FragmentAmbilight;)V

    invoke-static {p1, v0}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;Ljava/lang/Runnable;)Lmiuix/animation/IVisibleStyle;

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeSelector:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIsManuallyParentHiding:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIsShooting:Z

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->hideAmbilightLayout(I)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "FragmentAmbilight"

    const-string/jumbo v1, "onClick: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeSelector:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a005e

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->showSelector()V

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9
    iget v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mCurrentIndex:I

    if-ne v1, v0, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIgnoreSameItemClick:Z

    if-eqz v1, :cond_4

    .line 10
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x8000

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_3
    return-void

    :cond_4
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->onItemSelected(IZ)V

    return-void
.end method

.method public onRecommendDescDismiss()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->updateTips()V

    :cond_0
    return-void
.end method

.method public onRecordingPrepare()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIsShooting:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mRootLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onRecordingStop()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIsShooting:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIndicatorButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

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
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/16 p2, 0xbb

    if-eq p1, p2, :cond_3

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-nez p1, :cond_1

    const/4 p1, 0x2

    const/4 v0, 0x0

    if-eq p3, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mComponentConfigAmbilight:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigAmbilight;->setAmbilightModeValue(I)V

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->selectItem(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 6
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->hideAmbilightLayout(I)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeSelector:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mSceneModeSelector:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    .line 9
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->onShowFinished()V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIndicatorButton:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xa1

    aput v1, p1, v0

    .line 1
    invoke-static {p1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xa2

    aput v1, p1, v0

    .line 1
    invoke-static {p1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

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
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0x1a5

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0x2a1

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setSelectorLayoutVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIndicatorButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->onBackEvent(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0x1a5

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0x2a1

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public updateDebugInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mDebugInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mDebugInfoTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mDebugInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateTips()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mIsShooting:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "speech_shutter_desc"

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget v1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->mMode:I

    const/4 v2, 0x2

    const v3, 0x7f120151

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const/16 v1, 0x8

    .line 6
    invoke-interface {v0, v1, v3, v5, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    goto :goto_0

    :cond_3
    const v1, 0x7f12014f

    .line 7
    invoke-interface {v0, v4, v1, v5, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    goto :goto_0

    .line 8
    :cond_4
    invoke-interface {v0, v4, v3, v5, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    :goto_0
    return-void
.end method
