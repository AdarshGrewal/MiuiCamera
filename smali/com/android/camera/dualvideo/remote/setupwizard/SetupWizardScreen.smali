.class public abstract Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;
.super Ljava/lang/Object;
.source "SetupWizardScreen.java"

# interfaces
.implements Lcom/android/camera/dualvideo/remote/AvailabilityCallback;
.implements Lcom/android/camera/dualvideo/remote/ConnectivityCallback;


# static fields
.field public static final BUTTON_NEGATIVE:I = -0x2

.field public static final BUTTON_POSITIVE:I = -0x1


# instance fields
.field public mAlertDialogTitle:I

.field public final mSetupWizardFragment:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

.field public final mSetupWizardView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->mSetupWizardFragment:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    .line 3
    iput-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->mSetupWizardView:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->getAlertDialogTitle()I

    move-result p1

    iput p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->mAlertDialogTitle:I

    return-void
.end method


# virtual methods
.method public getAlertDialogButton(I)Landroid/widget/Button;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->mSetupWizardFragment:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->getAlertDialog()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->mSetupWizardView:Landroid/view/View;

    return-object v0
.end method

.method public getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->mSetupWizardFragment:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v0

    return-object v0
.end method

.method public onAvailabilityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    return-void
.end method

.method public onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    return-void
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public onTimeReached(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V
    .locals 0

    return-void
.end method

.method public setAlertDialogTitle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->mSetupWizardFragment:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->getAlertDialog()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->mSetupWizardView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public abstract setupViews()V
.end method
