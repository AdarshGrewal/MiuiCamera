.class public Lcom/android/camera/fragment/settings/CameraPreferenceFragment$11;
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
    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$11;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick PermissionNotAskDialog cancel"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$11;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-static {v0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->access$500(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$11;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-static {v0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->access$400(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$11;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->access$402(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
