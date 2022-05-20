.class public Lcom/android/camera/fragment/vv/FragmentVVWorkspace$FragmentVVWorkspaceFooterItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FragmentVVWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/vv/FragmentVVWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentVVWorkspaceFooterItemDecoration"
.end annotation


# instance fields
.field public offset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$FragmentVVWorkspaceFooterItemDecoration;->offset:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 3
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    const/4 p4, 0x0

    if-ne p2, p3, :cond_0

    .line 4
    iget p2, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$FragmentVVWorkspaceFooterItemDecoration;->offset:I

    invoke-virtual {p1, p4, p4, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method
