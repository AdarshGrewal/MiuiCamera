.class public Lcom/android/camera/fragment/settings/WatermarkFragment;
.super Lcom/android/camera/fragment/settings/BasePreferenceFragment;
.source "WatermarkFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/settings/WatermarkFragment$AllCapTransformationMethod;,
        Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;,
        Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;,
        Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;
    }
.end annotation


# static fields
.field public static final MSG_BG_FILTER_WORDS:I = 0x1

.field public static final MSG_MT_UI:I = 0x2

.field public static final PROP_NAME_MAX:I = 0xe

.field public static final TAG:Ljava/lang/String; = "WatermarkFragment"


# instance fields
.field public alertDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mBackgroundHandler:Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;

.field public mDefindWatermark:Ljava/lang/String;

.field public mDialogContext:Landroid/content/Context;

.field public mEtUserDefineWords:Landroid/widget/EditText;

.field public mLimitTV:Landroid/widget/TextView;

.field public mThreadBg:Landroid/os/HandlerThread;

.field public mUiHandler:Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;

.field public mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

.field public final mUserPresentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/fragment/settings/WatermarkFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/settings/WatermarkFragment$1;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V

    iput-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic OooO0O0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "WatermarkFragment"

    const-string/jumbo p1, "onClick NegativeButton"

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDefindWatermark:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mLimitTV:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mThreadBg:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/camera/fragment/settings/WatermarkFragment;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mThreadBg:Landroid/os/HandlerThread;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/settings/WatermarkFragment;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->doInBackground(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/settings/WatermarkFragment;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->doInMainThread(Landroid/os/Message;)V

    return-void
.end method

.method private checkContentlegal(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooOO0;->OooO00o()LOooO00o/OooO0Oo/OooO00o/OooOO0;

    move-result-object v0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, LOooO00o/OooO0Oo/OooO00o/OooOO0;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private checkContentlength(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->getTextLength(Ljava/lang/CharSequence;)Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;

    move-result-object p1

    .line 4
    iget-boolean v0, p1, Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;->isOverLimit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;->legalString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f120334

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private doInBackground(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->checkContentlegal(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 5
    iput v1, v0, Landroid/os/Message;->what:I

    .line 6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "LEGAL_WORD"

    .line 7
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUiHandler:Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private doInMainThread(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "LEGAL_WORD"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->getCustomWords()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWatermark()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setCustomWatermark(Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDefindWatermark:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/android/camera/Util;->generateWatermark2File()V

    .line 12
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackUserDefineWatermark()V

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, ""

    .line 15
    :cond_2
    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const p1, 0x7f120337

    .line 16
    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const v1, 0x7f120331

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 17
    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private getCustomWords()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onSave()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mBackgroundHandler:Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mBackgroundHandler:Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUiHandler:Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mThreadBg:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDialogContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 8
    iput-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDialogContext:Landroid/content/Context;

    :cond_3
    return-void
.end method

.method private showDialog()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDialogContext:Landroid/content/Context;

    .line 2
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDialogContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x7f0d0036

    .line 4
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a043d

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mLimitTV:Landroid/widget/TextView;

    const v3, 0x7f0a014e

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    .line 7
    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    iget-object v3, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    new-instance v4, Lcom/android/camera/fragment/settings/WatermarkFragment$AllCapTransformationMethod;

    invoke-direct {v4, v2}, Lcom/android/camera/fragment/settings/WatermarkFragment$AllCapTransformationMethod;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v2, 0x7f120851

    .line 10
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1209a6

    .line 11
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooO0/OooOOO0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OooooO0/OooOOO0;

    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1209a7

    .line 12
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooO0/OooOOOO;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooO0/OooOOOO;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V

    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 13
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->alertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 14
    new-instance v1, Lcom/android/camera/fragment/settings/WatermarkFragment$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/settings/WatermarkFragment$2;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->alertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "WatermarkFragment"

    const-string/jumbo p2, "onClick PositiveButton"

    .line 1
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->onSave()V

    return-void
.end method

.method public addCurrentPreferences()V
    .locals 7

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o0000Ooo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const v4, 0x7f050053

    const v5, 0x7f1207cb

    const/4 v6, -0x1

    const-string/jumbo v3, "pref_time_watermark_key"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedDualCameraWaterMark()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const v4, 0x7f050043

    const v5, 0x7f12067e

    const/4 v6, -0x1

    const-string/jumbo v3, "pref_dualcamera_watermark_key"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0oO()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const v1, 0x7f120851

    const-string/jumbo v2, "user_define_watermark_key"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    :cond_1
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

    const v0, 0x7f12089e

    return v0
.end method

.method public getTextLength(Ljava/lang/CharSequence;)Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;
    .locals 17

    .line 1
    new-instance v0, Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, -0x1

    move v9, v5

    :goto_0
    const/4 v12, 0x1

    if-ge v9, v3, :cond_7

    move-object/from16 v13, p1

    .line 5
    invoke-interface {v13, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    const-string v15, "[^\\x00-\\xff]"

    .line 6
    invoke-virtual {v14, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    xor-int/2addr v12, v15

    const-wide v15, 0x3ff4a3d70a3d70a4L    # 1.29

    if-gez v8, :cond_0

    .line 7
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    if-ne v12, v8, :cond_1

    .line 8
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    if-eq v12, v8, :cond_3

    .line 9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    int-to-double v10, v10

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    div-double/2addr v10, v15

    :goto_1
    add-double/2addr v6, v10

    .line 10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v2, v5, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    add-int/lit8 v10, v3, -0x1

    if-ne v9, v10, :cond_5

    if-nez v8, :cond_4

    .line 12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    int-to-double v10, v8

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    int-to-double v10, v8

    div-double/2addr v10, v15

    :goto_3
    add-double/2addr v6, v10

    .line 13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v2, v5, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-wide/high16 v10, 0x402c000000000000L    # 14.0

    cmpg-double v8, v6, v10

    if-gtz v8, :cond_6

    .line 15
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v9, v9, 0x1

    move v8, v12

    goto :goto_0

    :cond_7
    const-wide/high16 v10, 0x402c000000000000L    # 14.0

    cmpl-double v2, v6, v10

    if-lez v2, :cond_8

    .line 16
    iput-boolean v12, v0, Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;->isOverLimit:Z

    goto :goto_4

    .line 17
    :cond_8
    iput-boolean v5, v0, Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;->isOverLimit:Z

    .line 18
    :goto_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;->legalString:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 4
    iput-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    .line 5
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->release()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onEditorAction: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatermarkFragment"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->alertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->onSave()V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->alertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->alertDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x67b0c582

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x6871f874

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "user_define_watermark_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "pref_dualcamera_watermark_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    goto :goto_2

    :cond_3
    return v3

    .line 3
    :cond_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0oO()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    if-eq v0, v4, :cond_6

    .line 5
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isFromSecureKeyguard(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 9
    :cond_6
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    return v4
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceClick: key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WatermarkFragment"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "user_define_watermark_key"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->showDialog()V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onRestart()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->updatePreferenceEntries()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mLimitTV:Landroid/widget/TextView;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x0

    aput-object p1, p3, p4

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f0b002f

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x1

    aput-object p1, p3, p4

    const p1, 0x7f1209ea

    .line 3
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public registerPreferenceListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->registerListener(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_time_watermark_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_dualcamera_watermark_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "user_define_watermark_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ValuePreference;

    iput-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    if-eqz v0, :cond_2

    const/16 v1, 0x9

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ValuePreference;->setMaxEms(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    return-void
.end method

.method public updatePreferenceEntries()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_dualcamera_watermark_key"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0Oo()Z

    move-result v2

    .line 4
    invoke-static {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o(Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0Oo()Z

    move-result v2

    .line 7
    invoke-static {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o(Z)Z

    move-result v2

    .line 8
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    if-eqz v0, :cond_3

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWatermark()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDefindWatermark:Ljava/lang/String;

    .line 11
    iget-object v2, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDefindWatermark:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isFromSecureKeyguard(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 13
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedDualCameraWaterMark()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 14
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0Oo()Z

    move-result v3

    invoke-static {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o(Z)Z

    move-result v3

    .line 15
    invoke-virtual {v2, v1, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 16
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void
.end method
