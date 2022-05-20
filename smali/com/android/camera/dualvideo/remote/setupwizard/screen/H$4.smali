.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;
.super Ljava/lang/Object;
.source "H.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

.field public final synthetic val$isLocationPermissionGranted:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    iput-boolean p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->val$isLocationPermissionGranted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->val$isLocationPermissionGranted:Z

    const-string v0, "confirm"

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$200(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const-string v1, "attr_rol_suw_perm"

    if-nez p1, :cond_0

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->dismiss()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$400(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "open"

    .line 6
    invoke-static {v1, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$000(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$100(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$200(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$500(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setAlertDialogTitle(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getAlertDialogButton(I)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f120346

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_1
    const-string p1, "attr_rol_suw_home"

    .line 12
    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->showScanView()V

    :goto_0
    return-void
.end method
