.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$3;
.super Ljava/lang/Object;
.source "L.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$3;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$3;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;

    iget-object p1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->access$102(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;Z)Z

    .line 2
    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$3;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;

    iget-object v1, v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getSelectedRemoteDeviceId()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$3;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;

    iget-object v2, v2, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getRemoteDeviceById(I)Lcom/android/camera/dualvideo/remote/RemoteDevice;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setConnectionSuspended(Lcom/android/camera/dualvideo/remote/RemoteDevice;Z)V

    :cond_0
    return-void
.end method
