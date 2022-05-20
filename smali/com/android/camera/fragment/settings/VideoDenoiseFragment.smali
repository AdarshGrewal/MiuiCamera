.class public Lcom/android/camera/fragment/settings/VideoDenoiseFragment;
.super Lcom/android/camera/fragment/settings/BasePreferenceFragment;
.source "VideoDenoiseFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoDenoiseFragment"


# instance fields
.field public mAudioDeviceChangeListener:Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;-><init>()V

    .line 2
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooO0/OooOO0o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooO0/OooOO0o;-><init>(Lcom/android/camera/fragment/settings/VideoDenoiseFragment;)V

    iput-object v0, p0, Lcom/android/camera/fragment/settings/VideoDenoiseFragment;->mAudioDeviceChangeListener:Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;

    return-void
.end method

.method private handleUIState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/android/camera/SettingUiState;

    invoke-direct {v0}, Lcom/android/camera/SettingUiState;-><init>()V

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "pref_wind_denoise"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "pref_front_denoise"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/VideoDenoiseFragment;->handleUIState()V

    return-void
.end method

.method public addCurrentPreferences()V
    .locals 12

    .line 1
    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "pref_front_denoise"

    const v3, 0x7f050045

    const v4, 0x7f1207fc

    const v5, 0x7f1207fb

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 2
    iget-object v7, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v8, "pref_wind_denoise"

    const v9, 0x7f050056

    const v10, 0x7f12089f

    const/4 v11, -0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    return-void
.end method

.method public getFragmentTitle()I
    .locals 1

    const v0, 0x7f12062d

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/VideoDenoiseFragment;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/settings/VideoDenoiseFragment;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/settings/VideoDenoiseFragment;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/AudioManagerAudioDeviceCallback;->setOnAudioDeviceChangeListener(Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onRestart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/fragment/settings/VideoDenoiseFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 3
    new-instance v0, Lcom/android/camera/AudioManagerAudioDeviceCallback;

    invoke-direct {v0}, Lcom/android/camera/AudioManagerAudioDeviceCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/settings/VideoDenoiseFragment;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/settings/VideoDenoiseFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/settings/VideoDenoiseFragment;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/VideoDenoiseFragment;->mAudioDeviceChangeListener:Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/AudioManagerAudioDeviceCallback;->setOnAudioDeviceChangeListener(Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;)V

    return-void
.end method

.method public registerPreferenceListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->registerListener(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_front_denoise"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_wind_denoise"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    return-void
.end method

.method public updatePreferenceEntries()V
    .locals 0

    return-void
.end method
