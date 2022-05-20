.class public Lcom/android/camera/fragment/mode/FragmentMoreModeEdit$1;
.super Ljava/lang/Object;
.source "FragmentMoreModeEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;->showExitConfirm()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit$1;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "MoreModeEdit"

    const-string/jumbo v1, "showExitConfirm onClick positive"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "value_edit_mode_click_exit_confirm"

    .line 2
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackModeEditClick(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit$1;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;

    invoke-static {v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;->access$000(Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit$1;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;

    invoke-virtual {v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;->hide()V

    return-void
.end method
