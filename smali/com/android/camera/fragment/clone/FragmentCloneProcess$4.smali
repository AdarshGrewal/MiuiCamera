.class public Lcom/android/camera/fragment/clone/FragmentCloneProcess$4;
.super Ljava/lang/Object;
.source "FragmentCloneProcess.java"

# interfaces
.implements Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showShareSheet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/clone/FragmentCloneProcess;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/clone/FragmentCloneProcess;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$4;->this$0:Lcom/android/camera/fragment/clone/FragmentCloneProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelect(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$4;->this$0:Lcom/android/camera/fragment/clone/FragmentCloneProcess;

    invoke-static {v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->access$000(Lcom/android/camera/fragment/clone/FragmentCloneProcess;)Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->setSelectedPage(I)V

    return-void
.end method

.method public onPageSizeChanged(I)V
    .locals 0

    return-void
.end method
