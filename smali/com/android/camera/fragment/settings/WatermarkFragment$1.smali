.class public Lcom/android/camera/fragment/settings/WatermarkFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "WatermarkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/settings/WatermarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$1;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "WatermarkFragment"

    const-string p2, "mUserPresentReceiver, onReceive."

    .line 1
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$1;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-virtual {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->updatePreferenceEntries()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$1;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    iget-object p2, p1, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    iget-object v0, p1, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    return-void
.end method
