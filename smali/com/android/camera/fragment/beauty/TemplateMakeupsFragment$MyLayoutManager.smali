.class public Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "TemplateMakeupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLayoutManager"
.end annotation


# instance fields
.field public isScrollEnabled:Z

.field public final synthetic this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;->isScrollEnabled:Z

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;->isScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$MyLayoutManager;->isScrollEnabled:Z

    return-void
.end method
