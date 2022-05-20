.class public Lcom/android/camera/fragment/FragmentFNumberAdjust;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentFNumberAdjust.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$FNumberController;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/fragment/manually/ZoomValueListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;


# static fields
.field public static final FRAGMENT_INFO:I = 0xffb

.field public static final TAG:Ljava/lang/String; = "FragmentFNumberAdjust"


# instance fields
.field public mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

.field public mBeautyLensBottomTextView:Landroid/widget/TextView;

.field public mBeautyLensListContainer:Landroid/widget/FrameLayout;

.field public mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

.field public mCurrentIndex:I

.field public mCurrentState:I

.field public mHolderHeight:I

.field public mHolderWidth:I

.field public mHorizontalSlideView:Lcom/android/camera/ui/HorizontalZoomView;

.field public mIsSupportBeautyLens:Z

.field public mLastIndex:I

.field public mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

.field public mParentLayout:Landroid/widget/RelativeLayout;

.field public mSliderContainer:Landroid/widget/FrameLayout;

.field public mSliderLayoutHeight:I

.field public mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

.field public mTotalWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentState:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastIndex:I

    return-void
.end method

.method private initSlideFNumberView()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->readFNumber()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/fragment/manually/ZoomValueListener;)V

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/ui/HorizontalZoomView;->setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/ui/HorizontalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mapValueToPosition(Ljava/lang/Object;)F

    move-result v0

    float-to-int v0, v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    return-void
.end method

.method private isVisible(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private notifyItemChanged(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;-><init>(ZI)V

    .line 3
    new-instance v1, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;-><init>(ZI)V

    const/4 v3, -0x1

    if-le p1, v3, :cond_3

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/data/data/ComponentDataItem;

    iget v4, v4, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 6
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 7
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const v4, 0x7f120465

    :goto_0
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    :cond_2
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v4, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_3
    if-le p2, v3, :cond_5

    .line 9
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    iget v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 11
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 13
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3, v0, v2}, Lcom/android/camera/fragment/EffectItemAdapter;->setAccessible(Landroid/view/View;IZ)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_5
    if-nez p2, :cond_6

    .line 15
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initSlideFNumberView()V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->setEnable(Z)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensBottomTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 18
    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-direct {p1, p2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    if-nez p1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 20
    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensBottomTextView:Landroid/widget/TextView;

    invoke-direct {p1, p2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_7
    :goto_1
    return-void
.end method

.method private onItemSelected(IZ)V
    .locals 6

    const-string v0, "invalid filter id: "

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemSelected: index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fromClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mCurrentMode = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", DataRepository.dataItemGlobal().getCurrentMode() = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "FragmentFNumberAdjust"

    .line 3
    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v2, 0xa4

    .line 5
    invoke-virtual {p2, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez p2, :cond_0

    const-string/jumbo p1, "onItemSelected: configChanges = null"

    .line 6
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    if-lez v3, :cond_1

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onItemSelected: beautyLensValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " displayNameRes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "attr_beauty_lens_id"

    const-string v4, "click"

    .line 12
    invoke-static {v3, v2, v4}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p2, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->setBeautyLens(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->selectItem(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private scrollIfNeed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

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
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    const/4 v1, 0x0

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private selectItem(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastIndex:I

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->scrollIfNeed(I)V

    .line 4
    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastIndex:I

    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->notifyItemChanged(II)V

    :cond_0
    return-void
.end method

.method private showOrHideBottomMenu(ZZ)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {v0, v1, p2}, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;->setModeLayoutVisibility(IZ)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;->setModeLayoutVisibility(IZ)V

    :goto_0
    return-void
.end method

.method private toHideBokehPanel(Z)V
    .locals 2

    const-string v0, "FragmentFNumberAdjust"

    const-string/jumbo v1, "toHideBokehPanel"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->setEnable(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSliderContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->showOrHideBottomMenu(ZZ)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 8
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentState:I

    return-void
.end method

.method private updateImageBokehIndicatorUiMargin(Z)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x1

    const/16 v2, 0xab

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSliderLayoutHeight:I

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3
    :goto_0
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x4

    if-eq v2, v1, :cond_2

    goto :goto_1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x13

    invoke-static {v1, v2}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    .line 6
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v0

    :cond_3
    return v1
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xffb

    return v0
.end method

.method public getHolderHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHolderHeight:I

    return v0
.end method

.method public getHolderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHolderWidth:I

    return v0
.end method

.method public getLastIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastIndex:I

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d007f

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
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTotalWidth:I

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a0194

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 2
    invoke-static {v0}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    const v0, 0x7f0a0087

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0196

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSliderContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0086

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "beauty_lens_list"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance v0, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x96

    .line 9
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 10
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 11
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTotalWidth:I

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHolderWidth:I

    .line 17
    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHolderHeight:I

    const v0, 0x7f0a0195

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalZoomView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    const v0, 0x7f0a0083

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensBottomTextView:Landroid/widget/TextView;

    .line 20
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public isAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isDummySystemEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0xd1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
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
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initSlideFNumberView()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->isVisible(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2
    :goto_0
    iget v3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentState:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    return v1

    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    return v1

    .line 3
    :cond_3
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mIsSupportBeautyLens:Z

    if-eqz p1, :cond_5

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    return v1

    .line 5
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->toHideBeautyLensPanel()V

    goto :goto_1

    .line 6
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    xor-int/lit8 p1, v0, 0x1

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->toHideBokehPanel(Z)V

    :goto_1
    if-nez v0, :cond_7

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xaf

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p1, :cond_7

    .line 9
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    .line 10
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->updateImageBokehIndicatorUiMargin(Z)Z

    :cond_7
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    const-string v1, "FragmentFNumberAdjust"

    if-nez v0, :cond_0

    const-string p1, "ignore click due to disabled"

    .line 2
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa1

    .line 4
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ignore click due to doing action"

    .line 6
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10
    iget v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    if-ne v1, v0, :cond_5

    .line 11
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x8000

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_4
    return-void

    :cond_5
    const/4 p1, 0x1

    .line 13
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->onItemSelected(IZ)V

    return-void
.end method

.method public onManuallyDataChanged(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isInModeChanging()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xae

    .line 3
    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-nez p2, :cond_1

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5
    invoke-interface {p2, p1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onBokehFNumberValueChanged(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xac

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p2, :cond_2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, v1, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onZoomItemSlideOn(IZ)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentState:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->canProvide()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    const/4 p2, 0x6

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ActivityBase;->playCameraSound(IF)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o0()V

    :cond_1
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    const-string v1, "4x3"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_3

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p2, v1

    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0703b1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSliderLayoutHeight:I

    const/4 p2, 0x2

    if-ne p3, p2, :cond_4

    const/4 p2, 0x5

    goto :goto_2

    :cond_4
    const/4 p2, 0x4

    .line 8
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->onBackEvent(I)Z

    .line 9
    iget-boolean p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mIsSupportBeautyLens:Z

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedBeautyLens()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mIsSupportBeautyLens:Z

    if-eq p2, p3, :cond_5

    move p2, v1

    goto :goto_3

    :cond_5
    move p2, v2

    .line 11
    :goto_3
    iget-boolean p3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mIsSupportBeautyLens:Z

    if-eqz p3, :cond_6

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningBeautyLens()Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    .line 13
    new-instance p3, Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    invoke-direct {p3, v0, v3, v2}, Lcom/android/camera/fragment/EffectItemAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;Z)V

    iput-object p3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    goto :goto_4

    :cond_6
    const/4 p3, 0x0

    .line 14
    iput-object p3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    .line 15
    iput-object p3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    :goto_4
    const/16 p3, 0xab

    const/4 v0, -0x1

    if-ne p1, p3, :cond_8

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 17
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0O0()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->isLightingVersion1()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "0"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    move p1, v1

    goto :goto_6

    :cond_8
    :goto_5
    move p1, v0

    .line 20
    :goto_6
    iget p3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentState:I

    if-ne p3, p1, :cond_9

    if-nez p2, :cond_9

    return-void

    .line 21
    :cond_9
    iput p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentState:I

    .line 22
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xc2

    .line 23
    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    .line 24
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p3, 0x3a6

    .line 25
    invoke-virtual {p2, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    if-eqz p1, :cond_a

    .line 26
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p1

    if-nez p1, :cond_b

    :cond_a
    if-eqz p2, :cond_c

    .line 27
    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 28
    :cond_b
    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentState:I

    .line 29
    :cond_c
    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentState:I

    if-eq p1, v0, :cond_e

    if-eq p1, v1, :cond_d

    goto :goto_7

    .line 30
    :cond_d
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSliderContainer:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 32
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->updateImageBokehIndicatorUiMargin(Z)Z

    .line 33
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7

    .line 34
    :cond_e
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 35
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSliderContainer:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 36
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 37
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensBottomTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 38
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 39
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 40
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_f
    :goto_7
    return-void
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
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result p2

    iget p3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSliderLayoutHeight:I

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->updateImageBokehIndicatorUiMargin(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    :cond_1
    :goto_0
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
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/EffectItemAdapter;->setRotation(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    :goto_1
    if-ge v0, p1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/EffectItemAdapter;->getItemCount()I

    move-result p1

    if-ge p2, p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xd2

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public showBeautyLensPanel()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc2

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    const-string v1, "FragmentFNumberAdjust"

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "beauty panel shown. do not show the slide view."

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "showBeautyLensPanel"

    .line 5
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSliderContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/EffectItemAdapter;->setRotation(I)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/EffectItemAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/EffectItemAdapter;->setOnEffectItemListener(Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSliderLayoutHeight:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance(Landroid/view/View;)V

    .line 15
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensBottomTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 17
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initSlideFNumberView()V

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->setEnable(Z)V

    .line 19
    new-instance v0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-direct {v0, v2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 21
    new-instance v0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensBottomTextView:Landroid/widget/TextView;

    invoke-direct {v0, v2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 22
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa3

    .line 23
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 24
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;->switchModeOrExternalTipLayout(Z)V

    .line 25
    :cond_2
    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentState:I

    return-void
.end method

.method public showBokehPanel()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc2

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    const-string v1, "FragmentFNumberAdjust"

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "beauty panel shown. do not show the slide view."

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "showBokehPanel"

    .line 5
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initSlideFNumberView()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->setEnable(Z)V

    .line 8
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->updateImageBokehIndicatorUiMargin(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    iget v3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSliderLayoutHeight:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSliderContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 13
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x12c

    .line 14
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 15
    new-instance v2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 16
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->showOrHideBottomMenu(ZZ)V

    .line 18
    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentState:I

    return-void
.end method

.method public toHideBeautyLensPanel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FragmentFNumberAdjust"

    const-string/jumbo v1, "toHideBeautyLensPanel"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->setEnable(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 6
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensBottomTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSliderContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa3

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 16
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;->switchModeOrExternalTipLayout(Z)V

    :cond_2
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentState:I

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xd2

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
