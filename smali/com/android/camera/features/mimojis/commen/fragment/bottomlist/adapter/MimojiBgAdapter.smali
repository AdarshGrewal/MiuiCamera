.class public Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;
.super Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;
.source "MimojiBgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter$BgViewViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter<",
        "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;",
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
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;->mLastSelectedPosition:I

    return-void
.end method


# virtual methods
.method public clearState()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    .line 4
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2, v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->setSelected(Z)V

    .line 6
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
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
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d009f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter$BgViewViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter$BgViewViewHolder;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setSelectState(I)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;->mLastSelectedPosition:I

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
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;->mLastSelectedPosition:I

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->isAvailablePosion(I)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    .line 9
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v4, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->setSelected(Z)V

    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    invoke-virtual {v0, v3}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->setSelected(Z)V

    .line 13
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 14
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;->mLastSelectedPosition:I

    :cond_3
    return v3
.end method
