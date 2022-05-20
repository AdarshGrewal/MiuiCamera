.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;
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


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$200(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const-string v0, "exit"

    if-nez p1, :cond_0

    const-string p1, "attr_rol_suw_perm"

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$000(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "attr_rol_suw_home"

    .line 5
    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->dismiss()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$000(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$100(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$200(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$300(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setAlertDialogTitle(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getAlertDialogButton(I)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f120342

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void
.end method
