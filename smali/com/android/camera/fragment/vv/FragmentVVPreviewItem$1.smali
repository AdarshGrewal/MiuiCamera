.class public Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;
.super Ljava/lang/Object;
.source "FragmentVVPreviewItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->handleDownloadStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;

.field public final synthetic val$init:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;

    iput-boolean p2, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;->val$init:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->access$000(Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;)Lcom/android/camera/fragment/vv/VVItem;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/resource/BaseResourceItem;->setState(I)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;->val$init:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->access$100(Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->startPlay()V

    :cond_0
    return-void
.end method
