.class public Lcom/android/camera/fragment/settings/MoreModeFragment;
.super Lcom/android/camera/fragment/settings/BasePreferenceFragment;
.source "MoreModeFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MoreModeFragment"


# instance fields
.field public mStylePreference:Lcom/android/camera/preferences/MoreModeStylePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public addCurrentPreferences()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/preferences/MoreModeStylePreference;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/MoreModeStylePreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "pref_open_more_mode_type"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    const v1, 0x7f0d0142

    .line 4
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string v1, ""

    const v2, 0x7f1205a2

    .line 5
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 7
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public getFragmentTitle()I
    .locals 1

    const v0, 0x7f12081c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "pref_open_more_mode_type"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/camera/preferences/MoreModeStylePreference;

    iput-object p1, p0, Lcom/android/camera/fragment/settings/MoreModeFragment;->mStylePreference:Lcom/android/camera/preferences/MoreModeStylePreference;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/MoreModeFragment;->mStylePreference:Lcom/android/camera/preferences/MoreModeStylePreference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/preferences/MoreModeStylePreference;->onPause()V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/MoreModeFragment;->mStylePreference:Lcom/android/camera/preferences/MoreModeStylePreference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/preferences/MoreModeStylePreference;->onResume()V

    :cond_0
    return-void
.end method

.method public registerPreferenceListener()V
    .locals 0

    return-void
.end method

.method public updatePreferenceEntries()V
    .locals 0

    return-void
.end method

.method public updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    return-void
.end method
