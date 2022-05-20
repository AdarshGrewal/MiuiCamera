.class public Lcom/android/camera/ActivityBase$ActivityHandler;
.super Landroid/os/Handler;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityHandler"
.end annotation


# instance fields
.field public final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ActivityBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase$ActivityHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/ActivityBase$ActivityHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const-string v3, "ActivityBase"

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 3
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 4
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v4

    const-string p1, "exception occurs, msg = %s , exception = 0x%x"

    invoke-static {v5, p1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xe6

    if-eq v1, p1, :cond_2

    const/16 p1, 0xe7

    if-eq v1, p1, :cond_2

    const/16 p1, 0xec

    if-eq v1, p1, :cond_1

    const/16 p1, 0xed

    if-eq v1, p1, :cond_2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_2
    const p1, 0x7f120248

    .line 5
    invoke-static {v0, p1, v7}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;IZ)V

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->showErrorDialog()V

    goto/16 :goto_1

    :cond_1
    move v7, v4

    .line 7
    :cond_2
    :pswitch_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v5

    const-wide/16 v8, 0x1

    cmp-long p1, v5, v8

    if-lez p1, :cond_3

    .line 8
    invoke-static {v2, v0, v7}, Lcom/android/camera/Util;->showErrorScreen(ILmiuix/appcompat/app/AppCompatActivity;Z)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v4, v0, v7}, Lcom/android/camera/Util;->showErrorScreen(ILmiuix/appcompat/app/AppCompatActivity;Z)V

    .line 10
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->showErrorDialog()V

    goto :goto_1

    .line 11
    :pswitch_4
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->checkFeatureAutoDownload()V

    goto :goto_1

    .line 12
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->onConfigThemeRequest(Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;)V

    goto :goto_1

    .line 13
    :pswitch_6
    invoke-static {v0}, Lcom/android/camera/ActivityBase;->access$000(Lcom/android/camera/ActivityBase;)V

    goto :goto_1

    .line 14
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->onThermalNotification(I)V

    goto :goto_1

    .line 15
    :pswitch_8
    new-instance p1, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;-><init>()V

    const/4 v1, 0x3

    .line 16
    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->setErrorType(I)V

    const v1, 0x7f1300b8

    .line 17
    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "CameraExitHint"

    .line 19
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const-string/jumbo p1, "onThermalNotification finish activity after 5 seconds"

    .line 21
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 22
    :pswitch_9
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackModeSwitch()V

    goto :goto_1

    :pswitch_a
    const-string p1, "handleMessage:  set mIsFinishInKeyguard = true;"

    .line 23
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iput-boolean v4, v0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    goto :goto_1

    .line 25
    :pswitch_b
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    if-nez v1, :cond_4

    .line 26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->showDebugInfo(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
