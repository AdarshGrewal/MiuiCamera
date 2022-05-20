.class public Lmiuix/os/AsyncTaskWithProgress$Listeners;
.super Ljava/lang/Object;
.source "AsyncTaskWithProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/os/AsyncTaskWithProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Listeners"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/os/AsyncTaskWithProgress;


# direct methods
.method public constructor <init>(Lmiuix/os/AsyncTaskWithProgress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiuix/os/AsyncTaskWithProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lmiuix/os/AsyncTaskWithProgress$Listeners;-><init>(Lmiuix/os/AsyncTaskWithProgress;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, -0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/os/AsyncTaskWithProgress$Listeners;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$100(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$100(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 3
    iget-object p1, p0, Lmiuix/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiuix/os/AsyncTaskWithProgress;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method
