.class public Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AsyncTaskWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/os/AsyncTaskWithProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogFragment"
.end annotation


# instance fields
.field public mTask:Lmiuix/os/AsyncTaskWithProgress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/os/AsyncTaskWithProgress<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 3

    .line 1
    new-instance v0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    invoke-direct {v0}, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "task"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$300(Lmiuix/os/AsyncTaskWithProgress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$400(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$Listeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/os/AsyncTaskWithProgress$Listeners;->onCancel(Landroid/content/DialogInterface;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lmiuix/os/AsyncTaskWithProgress;->access$200()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "task"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/os/AsyncTaskWithProgress;

    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v1}, Lmiuix/os/AsyncTaskWithProgress;->access$500(Lmiuix/os/AsyncTaskWithProgress;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 4
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$600(Lmiuix/os/AsyncTaskWithProgress;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$600(Lmiuix/os/AsyncTaskWithProgress;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$700(Lmiuix/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$800(Lmiuix/os/AsyncTaskWithProgress;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v1}, Lmiuix/os/AsyncTaskWithProgress;->access$800(Lmiuix/os/AsyncTaskWithProgress;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$900(Lmiuix/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 10
    :goto_1
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$1000(Lmiuix/os/AsyncTaskWithProgress;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    .line 11
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$1100(Lmiuix/os/AsyncTaskWithProgress;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    .line 12
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$1100(Lmiuix/os/AsyncTaskWithProgress;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$1200(Lmiuix/os/AsyncTaskWithProgress;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    .line 14
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$1300(Lmiuix/os/AsyncTaskWithProgress;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    .line 15
    :cond_3
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$300(Lmiuix/os/AsyncTaskWithProgress;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v2}, Lmiuix/os/AsyncTaskWithProgress;->access$400(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$Listeners;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v1, v0, v0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    :goto_2
    return-object p1
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, p0}, Lmiuix/os/AsyncTaskWithProgress;->access$102(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lmiuix/os/AsyncTaskWithProgress;->access$102(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lmiuix/appcompat/app/ProgressDialog;

    .line 4
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method
