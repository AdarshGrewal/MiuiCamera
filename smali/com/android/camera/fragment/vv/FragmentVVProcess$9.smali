.class public Lcom/android/camera/fragment/vv/FragmentVVProcess$9;
.super Ljava/lang/Object;
.source "FragmentVVProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVProcess;->onResultPreviewFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$9;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$9;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$1300(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v3, v2, v1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$1400(Lcom/android/camera/fragment/vv/FragmentVVProcess;IZLandroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$9;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$1500(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
