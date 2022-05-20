.class public Lcom/android/camera/fragment/settings/CameraPreferenceFragment$2;
.super Ljava/lang/Object;
.source "CameraPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->bringUpDoubleConfirmDlg(Landroidx/preference/Preference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

.field public final synthetic val$boolValue:Z

.field public final synthetic val$preference:Landroidx/preference/Preference;

.field public final synthetic val$snapItem:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;Ljava/lang/String;Landroidx/preference/Preference;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$2;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    iput-object p2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$2;->val$snapItem:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$2;->val$preference:Landroidx/preference/Preference;

    iput-boolean p4, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$2;->val$boolValue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bringUpDoubleConfirmDlg onClick pref_camera_snap_key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$2;->val$snapItem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$2;->val$snapItem:Ljava/lang/String;

    const-string/jumbo v1, "pref_camera_snap_key"

    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$2;->val$preference:Landroidx/preference/Preference;

    instance-of v1, v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$2;->val$boolValue:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, v0, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/android/camera/ui/PreviewListPreference;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$2;->val$snapItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$2;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$2;->val$snapItem:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getMiuiSettingsKeyForStreetSnap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_long_press_volume_down"

    .line 9
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
