.class public abstract Lcom/android/camera/fragment/settings/BasePreferenceFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "BasePreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final FROM_WHERE:Ljava/lang/String; = "from_where"

.field public static final INVALID_RES_ID:I = -0x1

.field public static final TAG:Ljava/lang/String;

.field public static final TARGET_TAG:Ljava/lang/String; = "target_tag"


# instance fields
.field public mFromWhere:I

.field public mLocked:Z

.field public mPreferenceGroup:Landroidx/preference/PreferenceScreen;

.field public mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mLocked:Z

    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;
    .locals 2

    .line 1
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    return-object v0
.end method

.method public addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;
    .locals 2

    .line 1
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p4}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 p2, -0x1

    if-eq p3, p2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    :cond_0
    if-eq p5, p2, :cond_1

    .line 5
    invoke-virtual {v0, p5}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    const/4 p2, 0x0

    .line 6
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 7
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method public abstract addCurrentPreferences()V
.end method

.method public addPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;II)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 p2, -0x1

    if-eq p4, p2, :cond_0

    .line 4
    invoke-virtual {v0, p4}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    const/4 p2, 0x0

    .line 5
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 6
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public addPreviewListPreference(Landroidx/preference/PreferenceCategory;Ljava/lang/String;IIII)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/ui/PreviewListPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/PreviewListPreference;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, p4}, Landroidx/preference/Preference;->setTitle(I)V

    .line 5
    invoke-virtual {v0, p5}, Lmiuix/preference/DropDownPreference;->setEntries(I)V

    .line 6
    invoke-virtual {v0, p6}, Lmiuix/preference/DropDownPreference;->setEntryValues(I)V

    const/4 p2, 0x0

    .line 7
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 8
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/camera/ui/ValuePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ValuePreference;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 p2, 0x0

    .line 6
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 7
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method public addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;II)V
    .locals 1

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    :goto_0
    return-void
.end method

.method public dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V
    .locals 4

    .line 1
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean p1, p3, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 6
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 7
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 8
    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public abstract getFragmentTitle()I
.end method

.method public goToActivity(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    const-string v1, "from_where"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string/jumbo p1, "target_tag"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 5
    invoke-static {v0, p1}, Lcom/android/camera/CameraIntentManager;->setStartActivityWhenLocked(Landroid/content/Intent;Z)V

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public initializeActivity()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->getFragmentTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 6
    :goto_0
    iput-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCurrentPreferences()V

    .line 8
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_1

    .line 9
    sget-object v0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    const-string v1, "fail to init PreferenceGroup"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->registerPreferenceListener()V

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->updatePreferenceEntries()V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mLocked:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "from_where"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->initializeActivity()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->updateDeviceConfig(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ThermalHelper;->updateDisplayFrameRate(ZLandroid/app/Application;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onSettingChanged(I)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    .line 5
    sget-object v3, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreferenceChange: key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", newValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 7
    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 8
    :cond_1
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "pref_camera_movie_solid_key"

    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 10
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 11
    :cond_2
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 12
    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 13
    :cond_3
    instance-of v3, p2, Ljava/lang/Long;

    if-eqz v3, :cond_4

    .line 14
    move-object v3, p2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 15
    :cond_4
    instance-of v3, p2, Ljava/lang/Float;

    if-eqz v3, :cond_7

    .line 16
    move-object v3, p2

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 17
    :cond_5
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    invoke-static {v2}, Lcom/android/camera/statistic/SettingRecord;->getMistatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1, p2}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_6

    instance-of v1, p1, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz v1, :cond_6

    .line 21
    check-cast p1, Lcom/android/camera/ui/PreviewListPreference;

    .line 22
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/PreviewListPreference;->getEntryByIndex(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    return v0

    .line 23
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unhandled new value with type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onRestart()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ThermalHelper;->updateDisplayFrameRate(ZLandroid/app/Application;)V

    :cond_0
    return-void
.end method

.method public onSettingChanged(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ChangeManager;->request(I)V

    return-void
.end method

.method public registerListener(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 3
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v2, p2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->registerListener(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v2, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract registerPreferenceListener()V
.end method

.method public abstract updatePreferenceEntries()V
.end method

.method public updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 3
    instance-of v4, v3, Landroidx/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    .line 4
    move-object v4, v3

    check-cast v4, Landroidx/preference/CheckBoxPreference;

    .line 5
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v4}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    invoke-interface {p2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 7
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    goto :goto_1

    .line 8
    :cond_1
    instance-of v4, v3, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_2

    .line 9
    check-cast v3, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v3, p2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    goto :goto_1

    .line 10
    :cond_2
    sget-object v4, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no need update preference for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
