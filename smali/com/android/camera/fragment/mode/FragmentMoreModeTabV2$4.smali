.class public Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$4;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "FragmentMoreModeTabV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->createLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;Landroid/content/Context;IIZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$4;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$4;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$800(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$4;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->fadeScrollbar(Z)V

    return-void
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOO0o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v0

    return v0
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$4;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$700(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)Landroid/view/View;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOoO/OooO0O0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOoO/OooO0O0;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$4;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
