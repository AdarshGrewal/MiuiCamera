.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$1;
.super Ljava/lang/Object;
.source "L.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$1;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "attr_rol_suw_conn"

    const-string p2, "exit"

    .line 1
    invoke-static {p1, p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->stopNetworkServer()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$1;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;

    iget-object p1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->dismiss()V

    return-void
.end method
