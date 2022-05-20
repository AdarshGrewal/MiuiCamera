.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$2;
.super Ljava/lang/Object;
.source "H.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->setupViews()V
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
    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "attr_rol_suw_what"

    const-string/jumbo v0, "open"

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$000(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$100(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    const v0, 0x7f1208c2

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setAlertDialogTitle(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getAlertDialogButton(I)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f120341

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method
