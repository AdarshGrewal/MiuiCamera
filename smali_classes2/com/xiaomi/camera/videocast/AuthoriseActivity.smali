.class public Lcom/xiaomi/camera/videocast/AuthoriseActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "AuthoriseActivity.java"


# instance fields
.field public mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mHasPendingAuthorisationRequest:Z

.field public final mRejectedHandler:Landroid/os/Handler;

.field public mSentAuthorisationResult:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/xiaomi/camera/videocast/AuthoriseActivity$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/videocast/AuthoriseActivity$2;-><init>(Lcom/xiaomi/camera/videocast/AuthoriseActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mRejectedHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/camera/videocast/AuthoriseActivity;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/xiaomi/camera/videocast/AuthoriseActivity;Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->finishWithResult(Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;)V

    return-void
.end method

.method private finishWithResult(Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mSentAuthorisationResult:Z

    if-nez v0, :cond_2

    .line 4
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->APPROVED:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    const-string v1, "attr_vic_authorisation_state"

    if-eq p1, v0, :cond_1

    const-string v0, "reject"

    .line 5
    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoCastClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "accept"

    .line 6
    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoCastClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    invoke-static {p1}, Lcom/xiaomi/camera/videocast/VideoCastService;->returnAuthorisationResult(Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mSentAuthorisationResult:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 3
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->APPROVED:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->finishWithResult(Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;)V

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5
    const-class v1, Lcom/xiaomi/camera/videocast/WaitingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "ShowCameraWhenLocked"

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "StartActivityWhenLocked"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->REJECTED:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->finishWithResult(Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;)V

    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->REJECTED:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->finishWithResult(Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastService;->hasPendingAuthorisationRequest()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mHasPendingAuthorisationRequest:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->showDialog()V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mRejectedHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->REJECTED:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->finishWithResult(Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mRejectedHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/xiaomi/camera/videocast/AuthoriseActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/videocast/AuthoriseActivity$1;-><init>(Lcom/xiaomi/camera/videocast/AuthoriseActivity;)V

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.camera.videocast.action.DISMISS_ACTIVITIES"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mSentAuthorisationResult:Z

    .line 7
    iget-object v1, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mRejectedHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-boolean v1, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mHasPendingAuthorisationRequest:Z

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mRejectedHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public showDialog()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "device_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1208c2

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1209bb

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    .line 6
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f120340

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, LOooO00o/OooO0o/OooO00o/OooO0o/OooO0OO;

    invoke-direct {v6, p0}, LOooO00o/OooO0o/OooO00o/OooO0o/OooO0OO;-><init>(Lcom/xiaomi/camera/videocast/AuthoriseActivity;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v0, 0x7f120348

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, LOooO00o/OooO0o/OooO00o/OooO0o/OooO0O0;

    invoke-direct {v10, p0}, LOooO00o/OooO0o/OooO00o/OooO0o/OooO0O0;-><init>(Lcom/xiaomi/camera/videocast/AuthoriseActivity;)V

    new-instance v11, LOooO00o/OooO0o/OooO00o/OooO0o/OooO00o;

    invoke-direct {v11, p0}, LOooO00o/OooO0o/OooO00o/OooO0o/OooO00o;-><init>(Lcom/xiaomi/camera/videocast/AuthoriseActivity;)V

    move-object v2, p0

    .line 9
    invoke-static/range {v2 .. v11}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
