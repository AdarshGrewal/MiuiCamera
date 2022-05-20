.class public Lcom/android/camera/fragment/dialog/ThermalDialogFragment;
.super Lcom/android/camera/fragment/dialog/BaseDialogFragment;
.source "ThermalDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ThermalDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0/OooOO0o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0/OooOO0o;-><init>(Lcom/android/camera/fragment/dialog/ThermalDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 p3, 0x0

    const v0, 0x7f0d00b2

    .line 1
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->initViewOnTouchListener(Landroid/view/View;)V

    const p2, 0x7f0a03d6

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 4
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0Oo:Z

    const/4 v1, 0x1

    const/4 v2, 0x5

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f10001b

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, p3

    invoke-virtual {v0, v4, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120264

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 8
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
