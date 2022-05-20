.class public Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;
.super Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;
.source "MimojiTimbreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter$TimbreViewViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter<",
        "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;",
        ">;"
    }
.end annotation


# instance fields
.field public mLastSelectedPosition:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->mLastSelectedPosition:I

    return-void
.end method


# virtual methods
.method public clearState()V
    .locals 4

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->mLastSelectedPosition:I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    .line 5
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2, v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->setSelected(Z)V

    .line 7
    invoke-virtual {v2, v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->setIsCompsing(Z)V

    .line 8
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hideProgress()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->mLastSelectedPosition:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->mLastSelectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->isCompsing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->mLastSelectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->setIsCompsing(Z)V

    .line 3
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->mLastSelectedPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public onCreateBaseRecyclerViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00a1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter$TimbreViewViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter$TimbreViewViewHolder;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setSelectState(IZ)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->mLastSelectedPosition:I

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-ne v0, p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->isAvailablePosion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return v1

    :cond_0
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->mLastSelectedPosition:I

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    .line 9
    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {v3, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->setSelected(Z)V

    .line 11
    invoke-virtual {v3, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->setIsCompsing(Z)V

    .line 12
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->isAvailablePosion(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->setSelected(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    invoke-virtual {v0, p2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->setIsCompsing(Z)V

    .line 16
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 17
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->mLastSelectedPosition:I

    :cond_3
    return v1
.end method
