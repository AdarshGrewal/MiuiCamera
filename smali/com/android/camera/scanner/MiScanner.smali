.class public Lcom/android/camera/scanner/MiScanner;
.super Ljava/lang/Object;
.source "MiScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/scanner/MiScanner$MiScanInstalledCallback;
    }
.end annotation


# static fields
.field public static final GO_TO_SCAN_REQUEST_CODE:I = 0x3e9

.field public static final SCAN_APK_PATH:Ljava/lang/String; = "/system/data-app/MiuiScanner/MiuiScanner.apk"

.field public static final SCAN_APP_CLASS_NAME:Ljava/lang/String; = "com.xiaomi.camerascan.activity.HomePageActivity"

.field public static final SCAN_APP_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.scanner"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mActivity:Landroid/app/Activity;

.field public final mAppInstalledListener:Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;

.field public mCompletableEmitter:Lio/reactivex/ObservableEmitter;

.field public mInstallPromptDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mInstalledCallback:Lcom/android/camera/scanner/MiScanner$MiScanInstalledCallback;

.field public mIsShowProgressDialog:Z

.field public mScanInstallDisposable:Lio/reactivex/disposables/Disposable;

.field public mUnlockIntent:Landroid/content/Intent;

.field public mUnlockReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/camera/scanner/MiScanner;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/scanner/MiScanner;->mIsShowProgressDialog:Z

    new-instance v0, Lcom/android/camera/scanner/MiScanner$2;

    invoke-direct {v0, p0}, Lcom/android/camera/scanner/MiScanner$2;-><init>(Lcom/android/camera/scanner/MiScanner;)V

    iput-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mAppInstalledListener:Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;

    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const-string v1, "init MiScanner"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/scanner/MiScanner;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/scanner/MiScanner;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/scanner/MiScanner;->mUnlockIntent:Landroid/content/Intent;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/scanner/MiScanner;)Lio/reactivex/ObservableEmitter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/scanner/MiScanner;->mCompletableEmitter:Lio/reactivex/ObservableEmitter;

    return-object p0
.end method

.method private installScanReceiver(Z)V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO;

    invoke-direct {v0, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0OO;-><init>(Lcom/android/camera/scanner/MiScanner;Z)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0Oo;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0Oo;-><init>(Lcom/android/camera/scanner/MiScanner;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/scanner/MiScanner;->mScanInstallDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showInstallScanPromptDialog onClick negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "value_scanner_click_install_dialog_cancel"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackClickScanner(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/android/camera/scanner/MiScanner;->mInstalledCallback:Lcom/android/camera/scanner/MiScanner$MiScanInstalledCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/scanner/MiScanner$MiScanInstalledCallback;->InstalledSuccessCallback()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/scanner/MiScanner;->mInstallPromptDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/scanner/MiScanner;->mInstallPromptDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/scanner/MiScanner;->startScanApp()V

    :goto_0
    return-void
.end method

.method public synthetic OooO00o(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showInstallScanPromptDialog onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "value_scanner_click_install_dialog_confirme"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackClickScanner(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mInstallPromptDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mInstallPromptDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/scanner/MiScanner;->mIsShowProgressDialog:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/data-app/MiuiScanner/MiuiScanner.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scanApkFile isExists = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    const v1, 0x7f12087f

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/android/camera/RotateDialogController;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;IZ)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mInstallPromptDialog:Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "value_scanner_click_install_enter_appstore"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackClickScanner(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/scanner/MiScanner;->installScanReceiver(Z)V

    return-void
.end method

.method public synthetic OooO00o(ZLio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const-string v1, "installScanReceiver ... "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/camera/scanner/MiScanner;->mCompletableEmitter:Lio/reactivex/ObservableEmitter;

    iget-object p2, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mAppInstalledListener:Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;

    const-string v1, "com.xiaomi.scanner"

    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2, p1}, Lcom/android/camera/Util;->installPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;ZZ)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object p2, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "backToCameraApp requestCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x3e9

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xb3

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->resetToCommonMode()V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mScanInstallDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public setIsShowProgressDialog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/scanner/MiScanner;->mIsShowProgressDialog:Z

    return-void
.end method

.method public setMiScanInstalledCallback(Lcom/android/camera/scanner/MiScanner$MiScanInstalledCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/scanner/MiScanner;->mInstalledCallback:Lcom/android/camera/scanner/MiScanner$MiScanInstalledCallback;

    return-void
.end method

.method public showInstallScanPromptDialog(Z)V
    .locals 10

    const-string/jumbo v0, "value_scanner_click_install_dialog"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackClickScanner(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    const v0, 0x7f12087e

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f120880

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f120427

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO00o;

    invoke-direct {v5, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO00o;-><init>(Lcom/android/camera/scanner/MiScanner;Z)V

    const/high16 p1, 0x1040000

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0O0;

    invoke-direct {v9, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0O0;-><init>(Lcom/android/camera/scanner/MiScanner;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/scanner/MiScanner;->mInstallPromptDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public startScanApp()V
    .locals 5

    const-string/jumbo v0, "value_scanner_click_icon_start"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackClickScanner(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/android/camera/ActivityBase;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/camera/ActivityBase;

    iget-object v1, p0, Lcom/android/camera/scanner/MiScanner;->mUnlockIntent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isQRCodeReceiverAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const-string v2, "keyguard locked..."

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/camera/scanner/MiScanner$1;

    invoke-direct {v1, p0}, Lcom/android/camera/scanner/MiScanner$1;-><init>(Lcom/android/camera/scanner/MiScanner;)V

    iput-object v1, p0, Lcom/android/camera/scanner/MiScanner;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->dismissKeyguard()V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "scanner installed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.scanner"

    const-string v3, "com.xiaomi.camerascan.activity.HomePageActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string/jumbo v0, "value_scanner_click_enter_scanner"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackClickScanner(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "scanner not installed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/camera/scanner/MiScanner;->showInstallScanPromptDialog(Z)V

    :cond_3
    :goto_1
    return-void
.end method
