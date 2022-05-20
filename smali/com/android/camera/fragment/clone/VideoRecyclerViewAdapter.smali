.class public Lcom/android/camera/fragment/clone/VideoRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VideoRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/clone/VideoViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/clone/BaseVideoItem;",
            ">;"
        }
    .end annotation
.end field

.field public final mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/videoplayer/manager/VideoPlayerManager;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/videoplayer/manager/VideoPlayerManager;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/clone/BaseVideoItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/clone/VideoRecyclerViewAdapter;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    .line 3
    iput-object p2, p0, Lcom/android/camera/fragment/clone/VideoRecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/android/camera/fragment/clone/VideoRecyclerViewAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    const v0, 0x8000

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/VideoRecyclerViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/clone/VideoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/clone/VideoRecyclerViewAdapter;->onBindViewHolder(Lcom/android/camera/fragment/clone/VideoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/clone/VideoViewHolder;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/VideoRecyclerViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/clone/BaseVideoItem;

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/clone/VideoRecyclerViewAdapter;->mVideoPlayerManager:Lcom/android/camera/videoplayer/manager/VideoPlayerManager;

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/camera/fragment/clone/BaseVideoItem;->update(ILcom/android/camera/fragment/clone/VideoViewHolder;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;)V

    .line 4
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/camera/fragment/clone/BaseVideoItem;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object p2, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO0oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO0oo;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/clone/VideoRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/clone/VideoViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/clone/VideoViewHolder;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/VideoRecyclerViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/fragment/clone/BaseVideoItem;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/clone/VideoRecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6
    invoke-virtual {p2, p1, v0}, Lcom/android/camera/fragment/clone/BaseVideoItem;->createView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/android/camera/fragment/clone/VideoViewHolder;

    invoke-direct {p2, p1}, Lcom/android/camera/fragment/clone/VideoViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
