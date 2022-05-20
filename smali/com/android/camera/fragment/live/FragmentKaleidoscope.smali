.class public Lcom/android/camera/fragment/live/FragmentKaleidoscope;
.super Lcom/android/camera/fragment/beauty/BaseBeautyFragment;
.source "FragmentKaleidoscope.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FragmentKaleidoscope"


# instance fields
.field public mAdapter:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

.field public mComponentRunningKaleidoscope:Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

.field public mFutureSelectIndex:I

.field public mItemWidth:I

.field public mKaleidoscopeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public mKaleidoscopeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

.field public mSelectIndex:I

.field public mTotalWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/live/FragmentKaleidoscope;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/live/FragmentKaleidoscope;)Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mAdapter:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070370

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mItemWidth:I

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mTotalWidth:I

    const v0, 0x7f0a01ef

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mSelectIndex:I

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningKaleidoscope()Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mComponentRunningKaleidoscope:Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;->getItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeList:Ljava/util/List;

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mComponentRunningKaleidoscope:Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;->getKaleidoscopeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move v1, p1

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    iput v1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mSelectIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeList:Ljava/util/List;

    iget v3, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mSelectIndex:I

    new-instance v4, Lcom/android/camera/fragment/live/FragmentKaleidoscope$1;

    invoke-direct {v4, p0}, Lcom/android/camera/fragment/live/FragmentKaleidoscope$1;-><init>(Lcom/android/camera/fragment/live/FragmentKaleidoscope;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mAdapter:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

    .line 12
    iget v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->mScreenOrientation:I

    invoke-static {v1}, Lcom/android/camera/display/Display;->getDegreeByScreenOrientation(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->setDisplayOrientation(I)V

    .line 13
    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "kaleidoscope_list"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 14
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    new-instance v0, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x96

    .line 17
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 18
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 19
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 20
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 22
    new-instance p1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;-><init>(Landroid/content/Context;)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mAdapter:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    iget v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mSelectIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->setItemInCenter(I)V

    .line 26
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/live/FragmentKaleidoscope$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/live/FragmentKaleidoscope$2;-><init>(Lcom/android/camera/fragment/live/FragmentKaleidoscope;Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private refreshDisplayOrientation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mAdapter:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->mScreenOrientation:I

    invoke-static {v1}, Lcom/android/camera/display/Display;->getDegreeByScreenOrientation(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->setDisplayOrientation(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mAdapter:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private scrollIfNeed(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_2

    :cond_2
    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 5
    iget-object v3, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v0, p1, -0x1

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    if-eq v0, p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return v2

    :cond_4
    return v1
.end method

.method private setItemInCenter(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mItemWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method


# virtual methods
.method public getAnimateView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
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
    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mAdapter:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0085

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onItemSelected(ILandroid/view/View;)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mFutureSelectIndex:I

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mKaleidoscopeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "select kaleidoscope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentKaleidoscope"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mSelectIndex:I

    .line 5
    iput p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mSelectIndex:I

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mAdapter:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

    invoke-virtual {v1, p1}, Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;->setSelectIndex(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mAdapter:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mAdapter:Lcom/android/camera/fragment/live/FragmentKaleidoscope$KaleidoscopeAdapter;

    iget v0, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mSelectIndex:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 9
    iget p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mSelectIndex:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->scrollIfNeed(I)Z

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->mComponentRunningKaleidoscope:Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    iget-object v0, p2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;->setKaleidoscopeValue(Ljava/lang/String;)V

    .line 11
    iget-object p1, p2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackKaleidoscopeValue(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_0

    .line 14
    iget-object p2, p2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->setKaleidoscope(Ljava/lang/String;)V

    :cond_0
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
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->provideOrientationChanged(ILjava/util/List;I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->refreshDisplayOrientation()V

    return-void
.end method

.method public setScreenOrientation(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->setScreenOrientation(I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->refreshDisplayOrientation()V

    return-void
.end method
