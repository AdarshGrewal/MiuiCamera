.class public Lcom/android/camera/fragment/vv/FragmentVVWorkspace$1;
.super Ljava/lang/Object;
.source "FragmentVVWorkspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->updateSelectedCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$100(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-static {v1}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$000(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lcom/android/camera/fragment/vv/FragmentVVWorkspace$FragmentVVWorkspaceFooterItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
