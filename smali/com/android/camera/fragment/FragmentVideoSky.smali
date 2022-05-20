.class public Lcom/android/camera/fragment/FragmentVideoSky;
.super Lcom/android/camera/fragment/BasePanelFragment;
.source "FragmentVideoSky.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;
.implements Lcom/android/camera/protocol/ModeProtocol$VideoSkyProtocol;


# static fields
.field public static final FRAGMENT_INFO:I = 0xffffff

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public isAnimation:Z

.field public mComponentRunningVideoSky:Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

.field public mCurrentIndex:I

.field public mCurrentState:I

.field public mEffectItemAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

.field public mEffectItemPadding:Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

.field public mHolderHeight:I

.field public mHolderWidth:I

.field public mLastIndex:I

.field public mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mRootView:Landroid/view/View;

.field public mTotalWidth:I

.field public mViewParent:Landroid/widget/LinearLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/FragmentVideoSky;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/FragmentVideoSky;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BasePanelFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentState:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLastIndex:I

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentIndex:I

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->isAnimation:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/FragmentVideoSky;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentVideoSky;->setIsAnimation(Z)V

    return-void
.end method

.method private onDismissFinished()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentVideoSky;->showZoomTipImage()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private onItemSelected(IZ)V
    .locals 6

    const-string v0, "invalid filter id: "

    .line 1
    sget-object v1, Lcom/android/camera/fragment/FragmentVideoSky;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onItemSelected: index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fromClick = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mCurrentMode = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", DataRepository.dataItemGlobal().getCurrentMode() = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v1, 0xa4

    .line 5
    invoke-virtual {p2, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez p2, :cond_0

    .line 6
    sget-object p1, Lcom/android/camera/fragment/FragmentVideoSky;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onItemSelected: configChanges = null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mComponentRunningVideoSky:Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mComponentRunningVideoSky:Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    if-lez v2, :cond_1

    .line 9
    sget-object v3, Lcom/android/camera/fragment/FragmentVideoSky;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onItemSelected: filterId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " filterName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentVideoSky;->selectItem(I)V

    .line 13
    invoke-interface {p2, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->setVideoSky(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    sget-object p2, Lcom/android/camera/fragment/FragmentVideoSky;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 15
    sget-object p2, Lcom/android/camera/fragment/FragmentVideoSky;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private scrollIfNeed(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    .line 6
    invoke-virtual {v1}, Lcom/android/camera/fragment/EffectItemAdapter;->getItemCount()I

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
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemPadding:Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    iget v0, v0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;->padding:I

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-lez p1, :cond_3

    if-eqz v1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemPadding:Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    iget v0, v0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;->padding:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method private selectItem(I)V
    .locals 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 1
    iget v1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentIndex:I

    iput v1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLastIndex:I

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentIndex:I

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentVideoSky;->scrollIfNeed(I)V

    .line 4
    new-instance p1, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLastIndex:I

    invoke-direct {p1, v1, v2}, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;-><init>(ZI)V

    .line 5
    new-instance v1, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;

    iget v2, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentIndex:I

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;-><init>(ZI)V

    .line 6
    iget v2, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLastIndex:I

    if-le v2, v0, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mComponentRunningVideoSky:Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->getItems()Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLastIndex:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 9
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v5, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLastIndex:I

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 10
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f120465

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    iget v4, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLastIndex:I

    invoke-virtual {v2, v4, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 12
    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentIndex:I

    if-le p1, v0, :cond_4

    .line 13
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mComponentRunningVideoSky:Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->getItems()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentIndex:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0, p1, v3}, Lcom/android/camera/fragment/EffectItemAdapter;->setAccessible(Landroid/view/View;IZ)V

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    iget v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentIndex:I

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private setIsAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->isAnimation:Z

    return-void
.end method

.method private setItemInCenter(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentIndex:I

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mHolderWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private showZoomTipImage()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 4
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o00o()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o00o0()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 6
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 7
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAIWatermarkOn(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    :cond_1
    return-void
.end method

.method private updateCurrentIndex()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mComponentRunningVideoSky:Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->getMagicVideoSkyValue()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mComponentRunningVideoSky:Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3
    sget-object v1, Lcom/android/camera/fragment/FragmentVideoSky;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentVideoSky;->setItemInCenter(I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentVideoSky;->onDismissFinished()V

    return-void
.end method

.method public dismiss(II)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentState:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iput v2, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentState:I

    const/4 v0, 0x2

    const/4 v2, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRootView:Landroid/view/View;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0OO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0OO;-><init>(Lcom/android/camera/fragment/FragmentVideoSky;)V

    invoke-static {p1, v0}, Lcom/android/camera/animation/FolmeUtils;->animateDeparture(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p1, :cond_2

    new-array v0, v1, [I

    .line 5
    invoke-interface {p1, v2, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 6
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onShineDismiss(I)V

    .line 8
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterDescriptionTip()V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public getAnimationType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentIndex:I

    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xffffff

    return v0
.end method

.method public getHolderHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mHolderHeight:I

    return v0
.end method

.method public getHolderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mHolderWidth:I

    return v0
.end method

.method public getLastIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLastIndex:I

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d00b9

    return v0
.end method

.method public getTextureHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTextureOffsetX()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTextureOffsetY()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTotalWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mTotalWidth:I

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0474

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const v0, 0x7f0a0475

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mViewParent:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mTotalWidth:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07012e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mHolderWidth:I

    .line 10
    iput p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mHolderHeight:I

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningVideoSky()Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mComponentRunningVideoSky:Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    .line 12
    new-instance p1, Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mComponentRunningVideoSky:Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    invoke-direct {p1, v0, v2, v1}, Lcom/android/camera/fragment/EffectItemAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;Z)V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    .line 13
    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/EffectItemAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/EffectItemAdapter;->setOnEffectItemListener(Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/EffectItemAdapter;->setRotation(I)V

    .line 16
    new-instance p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "video_sky_list"

    invoke-direct {p1, v0, v1, v1, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemPadding:Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemPadding:Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    .line 20
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/fragment/FragmentVideoSky$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentVideoSky$1;-><init>(Lcom/android/camera/fragment/FragmentVideoSky;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 23
    new-instance p1, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {p1}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x96

    .line 24
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 25
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 26
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentVideoSky;->show()V

    return-void
.end method

.method public isAnimation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->isAnimation:Z

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onBackEvent(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 2
    :cond_2
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/FragmentVideoSky;->dismiss(II)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/fragment/FragmentVideoSky;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mComponentRunningVideoSky:Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->getItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

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

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7
    iget v1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentIndex:I

    if-ne v1, v0, :cond_3

    .line 8
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x8000

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentVideoSky;->setIsAnimation(Z)V

    const/4 p1, 0x1

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/FragmentVideoSky;->onItemSelected(IZ)V

    :cond_4
    :goto_0
    return-void
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

    const v2, 0xffffff

    if-ne v0, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentVideoSky;->onBackEvent(I)Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BasePanelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentVideoSky;->updateCurrentIndex()V

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
    iget p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentState:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x7

    if-ne p3, p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentVideoSky;->onBackEvent(I)Z

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 3
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
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/EffectItemAdapter;->setRotation(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    :goto_1
    if-ge v1, p1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/EffectItemAdapter;->getItemCount()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0x2a8

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput v1, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mCurrentState:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mRootView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    if-eqz v0, :cond_1

    .line 5
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/EffectItemAdapter;->setRotation(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoSky;->mEffectItemAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentVideoSky;->updateCurrentIndex()V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterDescriptionTip()V

    :cond_2
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0x2a8

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
