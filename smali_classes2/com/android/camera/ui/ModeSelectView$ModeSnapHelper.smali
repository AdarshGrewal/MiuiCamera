.class public Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;
.super Landroidx/recyclerview/widget/LinearSnapHelper;
.source "ModeSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModeSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeSnapHelper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/ModeSelectView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ModeSelectView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    return-object p1
.end method

.method public calculateScrollDistance(II)[I
    .locals 2

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeSelectView;->access$1300(Lcom/android/camera/ui/ModeSelectView;)Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    :goto_0
    aput p1, p2, v1

    :cond_1
    return-object p2
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearSnapHelper;->findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I

    move-result p1

    return p1
.end method
