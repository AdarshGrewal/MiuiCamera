.class public abstract Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;
.super Lcom/android/camera/fragment/BaseFragment;
.source "BaseFragmentMimoji.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$DialogClickLister;,
        Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$ExitConfirmLister;
    }
.end annotation


# static fields
.field public static final TAG_MIMOJI:Ljava/lang/String;


# instance fields
.field public mExitDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->TAG_MIMOJI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->TAG_MIMOJI:Ljava/lang/String;

    const-string/jumbo v1, "showExitConfirm onClick negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->TAG_MIMOJI:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public createExitConfirmDialog(Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$ExitConfirmLister;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "exit"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v0, 0x7f120470

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f12046f

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v0, 0x7f1208f5

    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-object v6, p1

    .line 7
    invoke-static/range {v2 .. v10}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 8
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0Oo/OooO00o/OooO00o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0Oo/OooO00o/OooO00o;-><init>(Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
