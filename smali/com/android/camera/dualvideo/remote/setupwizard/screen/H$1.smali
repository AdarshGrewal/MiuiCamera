.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$1;
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
    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getAlertDialogButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    return-void
.end method
