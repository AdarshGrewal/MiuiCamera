.class public Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FragmentMoreModeTabV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$2;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$2;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$100(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$2;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->fadeScrollbar(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$2;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$200(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)V

    return-void
.end method
