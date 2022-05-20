.class public Lcom/android/camera/fragment/settings/CameraPreferenceFragment$10;
.super Ljava/lang/Object;
.source "CameraPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->toshowPermissionNotAskDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$10;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick PermissionNotAskDialog allow"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$10;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$10;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    .line 3
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$10;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->access$302(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;Z)Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$10;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-static {v0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->access$400(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$10;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->access$402(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
