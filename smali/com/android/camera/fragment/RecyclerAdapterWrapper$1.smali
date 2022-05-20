.class public Lcom/android/camera/fragment/RecyclerAdapterWrapper$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/RecyclerAdapterWrapper;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/RecyclerAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/RecyclerAdapterWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper$1;->this$0:Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper$1;->this$0:Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper$1;->this$0:Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    invoke-virtual {v0}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->getHeaderCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper$1;->this$0:Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    invoke-virtual {v0}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->getHeaderCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/RecyclerAdapterWrapper$1;->this$0:Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    invoke-virtual {v0}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->getHeaderCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
