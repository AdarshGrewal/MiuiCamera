.class public Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment$1;
.super Ljava/lang/Object;
.source "VideoCastExitDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment$1;->this$0:Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment$1;->this$0:Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
