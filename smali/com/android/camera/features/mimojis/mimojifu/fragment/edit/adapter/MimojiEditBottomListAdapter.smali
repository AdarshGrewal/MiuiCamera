.class public Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;
.super Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;
.source "MimojiEditBottomListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$OnMimojiEditListClickListener;,
        Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$MimojiFuEditHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter<",
        "Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MimojiEditBottomListAdapter"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mLastSelectPosition:I

.field public mOnMimojiEditListClickListener:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$OnMimojiEditListClickListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;->mLastSelectPosition:I

    .line 3
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;)Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$OnMimojiEditListClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;->mOnMimojiEditListClickListener:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$OnMimojiEditListClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public onCreateBaseRecyclerViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder<",
            "Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00d2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$MimojiFuEditHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$MimojiFuEditHolder;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setLastSelectPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;->mLastSelectPosition:I

    return-void
.end method

.method public setOnMimojiEditListClickListener(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$OnMimojiEditListClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;->mOnMimojiEditListClickListener:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$OnMimojiEditListClickListener;

    return-void
.end method

.method public setSelectState(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;->mLastSelectPosition:I

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-ne v0, p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->isAvailablePosion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;->mLastSelectPosition:I

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->isAvailablePosion(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;->mLastSelectPosition:I

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->isAvailablePosion(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 9
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;->mLastSelectPosition:I

    :cond_2
    return-void
.end method
