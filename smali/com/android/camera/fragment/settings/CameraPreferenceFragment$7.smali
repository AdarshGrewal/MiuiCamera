.class public Lcom/android/camera/fragment/settings/CameraPreferenceFragment$7;
.super Ljava/lang/Object;
.source "CameraPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->showVideoCastDialog()V
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
    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$7;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$7;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    iget-object p1, p1, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "pref_video_cast"

    .line 2
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$7;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->access$100(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$7;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-static {p1, v0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->access$102(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
