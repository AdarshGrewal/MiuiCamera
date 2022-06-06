.class public Lcom/android/camera/fragment/dialog/LongPressLiveFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "LongPressLiveFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ThermalDialog"


# instance fields
.field public mId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const v0, 0x7f1206f9

    iput v0, p0, Lcom/android/camera/fragment/dialog/LongPressLiveFragment;->mId:I

    return-void
.end method

.method private selectLpFeature(I)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "pref_camera_long_press_shutter_feature_key"

    invoke-interface {v0, v1, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    iget p1, p0, Lcom/android/camera/fragment/dialog/LongPressLiveFragment;->mId:I

    const-string v0, "ThermalDialog"

    const v1, 0x7f1206f9

    if-ne p1, v1, :cond_0

    const-string/jumbo p1, "selectLpFeature key_lp_dialog_record"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "key_lp_dialog_record"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackLongPressDialogSelect(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "selectLpFeature key_lp_dialog_burst"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "key_lp_dialog_burst"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackLongPressDialogSelect(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "pref_lpl_selector_use_hint_shown"

    invoke-interface {p1, v1, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/android/camera/fragment/dialog/LongPressLiveFragment;->mId:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/LongPressLiveFragment;->selectLpFeature(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const p2, 0x7f0a025c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    const p2, 0x7f0a0259

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    const p1, 0x7f1206f7

    iput p1, p0, Lcom/android/camera/fragment/dialog/LongPressLiveFragment;->mId:I

    return-void
.end method

.method public synthetic OooO0O0(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const p2, 0x7f0a025c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    const p2, 0x7f0a0259

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    const p1, 0x7f1206f9

    iput p1, p0, Lcom/android/camera/fragment/dialog/LongPressLiveFragment;->mId:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f0d008d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a0259

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo/OooO;

    invoke-direct {v3, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo/OooO;-><init>(Lcom/android/camera/fragment/dialog/LongPressLiveFragment;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    const v3, 0x7f0a025c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo/OooOO0;

    invoke-direct {v5, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo/OooOO0;-><init>(Lcom/android/camera/fragment/dialog/LongPressLiveFragment;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v4, v2, [Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Display;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12047d

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo/OooOO0O;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo/OooOO0O;-><init>(Lcom/android/camera/fragment/dialog/LongPressLiveFragment;)V

    const v1, 0x7f120333

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
