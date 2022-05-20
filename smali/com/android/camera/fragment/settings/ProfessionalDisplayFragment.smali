.class public Lcom/android/camera/fragment/settings/ProfessionalDisplayFragment;
.super Lcom/android/camera/fragment/settings/BasePreferenceFragment;
.source "ProfessionalDisplayFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field public static final TAG:Ljava/lang/String; = "ProfessionalDisplayFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public addCurrentPreferences()V
    .locals 13

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooooo()Z

    move-result v0

    .line 2
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    const v0, 0x7f05002f

    goto :goto_0

    :cond_0
    const v0, 0x7f05002e

    :goto_0
    move v4, v0

    const v5, 0x7f1205d8

    const v6, 0x7f120441

    const-string/jumbo v3, "pref_camera_pro_video_histogram"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 3
    iget-object v8, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const v10, 0x7f05002d

    const v11, 0x7f12062a

    const v12, 0x7f120154

    const-string/jumbo v9, "pref_audio_map_key"

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getFragmentTitle()I
    .locals 1

    const v0, 0x7f120827

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
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

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public registerPreferenceListener()V
    .locals 5

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooooo()Z

    move-result v0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0()Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v2, p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->registerListener(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_camera_pro_video_histogram"

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 6
    instance-of v4, v2, Landroidx/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 7
    check-cast v2, Landroidx/preference/CheckBoxPreference;

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "pref_audio_map_key"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 11
    instance-of v3, v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 12
    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public updatePreferenceEntries()V
    .locals 0

    return-void
.end method
