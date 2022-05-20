.class public Lcom/android/camera/fragment/vv/FragmentVVProcess$1;
.super Ljava/lang/Object;
.source "FragmentVVProcess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVProcess;->showReverseConfirmDialog()V
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
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "showReverseConfirmDialog onClick positive"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-static {p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$100(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Lcom/android/camera/fragment/vv/VVItem;

    move-result-object p1

    iget-object p1, p1, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    const-string/jumbo v0, "value_vv_reverse_confirm"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/LiveModuleSubVV;

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/module/LiveModuleSubVV;->doReverse()V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-static {p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$200(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Z

    return-void

    .line 9
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onClick: delete is not allowed!!!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
