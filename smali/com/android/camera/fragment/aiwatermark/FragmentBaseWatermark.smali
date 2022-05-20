.class public abstract Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;
.super Lcom/android/camera/fragment/beauty/BaseBeautyFragment;
.source "FragmentBaseWatermark.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark$WatermarkItemPadding;
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xffff6

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mComponentRunningAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

.field public mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

.field public mEffectItemPadding:Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark$WatermarkItemPadding;

.field public mForceUpdateSelected:Z

.field public mHolderWidth:I

.field public mIsFixedZeroDegree:Z

.field public mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mTotalWidth:I

.field public mWatermarkAdapter:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mForceUpdateSelected:Z

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mComponentRunningAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isFixedOrientation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mIsFixedZeroDegree:Z

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f0a04db

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->getWatermarkList()Ljava/util/List;

    move-result-object v4

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mComponentRunningAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getCurrentKey()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {v3}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    move v6, v1

    .line 9
    new-instance v7, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    iget-object v2, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    move-object v0, v7

    move-object v1, p1

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/LinearLayoutManager;ILjava/util/List;Landroidx/fragment/app/Fragment;)V

    iput-object v7, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mWatermarkAdapter:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    .line 11
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->mDegree:I

    invoke-virtual {v7, v0}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->setRotation(I)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mWatermarkAdapter:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mEffectItemPadding:Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark$WatermarkItemPadding;

    if-nez v0, :cond_2

    .line 15
    new-instance v0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark$WatermarkItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark$WatermarkItemPadding;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mEffectItemPadding:Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark$WatermarkItemPadding;

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mEffectItemPadding:Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark$WatermarkItemPadding;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mTotalWidth:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070836

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mHolderWidth:I

    if-ltz v6, :cond_3

    .line 19
    invoke-direct {p0, v6}, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->setItemInCenter(I)V

    .line 20
    :cond_3
    new-instance p1, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {p1}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x96

    .line 21
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 22
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 23
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method private setItemInCenter(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mHolderWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method


# virtual methods
.method public getAnimateView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public abstract getWatermarkList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation
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
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mWatermarkAdapter:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00c9

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onViewCreatedAndVisibleToUser(Z)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->onViewCreatedAndVisibleToUser(Z)V

    if-nez p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mWatermarkAdapter:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mForceUpdateSelected:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->getSelectedIndex()I

    move-result p1

    if-ltz p1, :cond_3

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mWatermarkAdapter:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 5
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {v4}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mComponentRunningAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getCurrentKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mWatermarkAdapter:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->onSelected(IZ)V

    :cond_3
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
    iget-boolean v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mIsFixedZeroDegree:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mIsFixedZeroDegree:Z

    if-nez v0, :cond_1

    move v0, v1

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mWatermarkAdapter:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->setRotation(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 10
    iget-object p2, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    :goto_1
    if-ge v1, p1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mWatermarkAdapter:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mWatermarkAdapter:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->getItemCount()I

    move-result p1

    if-ge p2, p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mWatermarkAdapter:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setDegree(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mIsFixedZeroDegree:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->setDegree(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mWatermarkAdapter:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->setRotation(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentBaseWatermark;->mWatermarkAdapter:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
