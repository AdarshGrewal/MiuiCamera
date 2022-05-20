.class public Lcom/android/camera/preferences/ResetPreferenceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ResetPreferenceBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "miui.intent.action.RESET_CAMERA_PREF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "ResetPreference"

    const-string/jumbo p2, "receive ACTION_RESET_CAMERA_PREF action, reset camera settings!"

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->resetPreferences(Z)V

    return-void
.end method
