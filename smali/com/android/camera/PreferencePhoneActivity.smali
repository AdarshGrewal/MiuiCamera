.class public Lcom/android/camera/PreferencePhoneActivity;
.super Lcom/android/camera/fragment/settings/BasePreferenceActivity;
.source "PreferencePhoneActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/PreferencePhoneActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/PreferencePhoneActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreferenceFragmentTag()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceActivity;->transitFromWhere()V

    return-void
.end method
