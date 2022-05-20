.class public Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;
.super Landroidx/recyclerview/widget/SnapHelper;
.source "PagerGridSnapHelper.java"


# instance fields
.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private snapFromFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    instance-of v1, p1, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getSnapOffset(I)[I

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
    .locals 1

    .line 1
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lcom/android/camera/fragment/vv/page/PagerGridSmoothScroller;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/vv/page/PagerGridSmoothScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p1
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->findSnapView()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 1

    if-eqz p1, :cond_3

    .line 1
    instance-of v0, p1, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/fragment/vv/page/PagerConfig;->getFlingThreshold()I

    move-result p3

    if-le p2, p3, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->findNextPageFirstPos()I

    move-result p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/vv/page/PagerConfig;->getFlingThreshold()I

    move-result p3

    neg-int p3, p3

    if-ge p2, p3, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->findPrePageFirstPos()I

    move-result p1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->canScrollVertically()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/fragment/vv/page/PagerConfig;->getFlingThreshold()I

    move-result p2

    if-le p3, p2, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->findNextPageFirstPos()I

    move-result p1

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {}, Lcom/android/camera/fragment/vv/page/PagerConfig;->getFlingThreshold()I

    move-result p2

    neg-int p2, p2

    if-ge p3, p2, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->findPrePageFirstPos()I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public onFling(II)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/fragment/vv/page/PagerConfig;->getFlingThreshold()I

    move-result v2

    .line 4
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_3

    .line 5
    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->snapFromFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public setFlingThreshold(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/fragment/vv/page/PagerConfig;->setFlingThreshold(I)V

    return-void
.end method
