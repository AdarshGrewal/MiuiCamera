.class public Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment$1;
.super Ljava/lang/Object;
.source "RemoteOnlineTipsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment$1;->this$0:Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment$1;->this$0:Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
