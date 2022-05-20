.class public abstract Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseRecyclerAdapter"


# instance fields
.field public mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

.field public mDdataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mDegree:I

.field public onRecyclerItemClickListener:Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    .line 4
    new-instance p1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    return-void
.end method


# virtual methods
.method public declared-synchronized addData(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addData(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCubicEaseOut()Lmiuix/view/animation/CubicEaseOutInterpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mCubicEaseOut:Lmiuix/view/animation/CubicEaseOutInterpolator;

    return-object v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    return-object v0
.end method

.method public getDegree()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDegree:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public isAvailablePosion(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->onBindViewHolder(Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->onBindViewHolder(Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;I)V
    .locals 0

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    sget-object v1, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->TAG:Ljava/lang/String;

    const-string v2, "data null error"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p3, :cond_2

    .line 6
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->getRotateViews()[Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->getRotateViews()[Landroid/view/View;

    move-result-object p3

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p3, v2

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDegree()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1, v0, p2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->setData(Ljava/lang/Object;I)V

    .line 11
    :cond_4
    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->onRecyclerItemClickListener:Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;

    if-eqz p3, :cond_5

    .line 12
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p3, v0, p2, v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->setClickListener(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;Ljava/lang/Object;ILandroid/view/View;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public abstract onCreateBaseRecyclerViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->onCreateBaseRecyclerViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized removeData(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnRecyclerItemClickListener(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->onRecyclerItemClickListener:Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDegree:I

    return-void
.end method

.method public declared-synchronized updateData(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->addData(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    if-ltz p1, :cond_4

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->addData(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->mDdataList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
