.class public Lcom/android/camera/fragment/settings/CameraPreferenceFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$1;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "com.xiaomi.camera.videocast.action.SERVICE_STATE_CHANGED"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$1;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    const-string/jumbo v0, "pref_video_cast"

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    const-class v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/xiaomi/camera/videocast/VideoCastService;->isServiceRunning(Landroid/content/Context;)Z

    move-result p1

    .line 6
    check-cast p2, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
