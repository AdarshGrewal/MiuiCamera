.class public Lcom/android/camera/ui/ScreenHint;
.super Ljava/lang/Object;
.source "ScreenHint.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenHint"


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public mAllowCta:Z

.field public mStorageHint:Lcom/android/camera/OnScreenHint;

.field public mStorageSpace:J

.field public mSystemChoiceDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static setLinkClickEvent(Landroid/widget/TextView;Landroid/app/Activity;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 4
    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 5
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 6
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 7
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    .line 8
    new-instance v8, Lcom/android/camera/ui/ScreenHint$1;

    invoke-direct {v8, v4, p1}, Lcom/android/camera/ui/ScreenHint$1;-><init>(Landroid/text/style/URLSpan;Landroid/app/Activity;)V

    invoke-virtual {v1, v8, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private showHintInner(J)V
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const p2, 0x7f1205b5

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x2

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const p2, 0x7f1208aa

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x3

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const p2, 0x7f12001b

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0xc800000

    cmp-long p1, p1, v2

    if-gez p1, :cond_4

    .line 4
    invoke-static {}, Lcom/android/camera/storage/Storage;->isPhoneStoragePriority()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const p2, 0x7f120910

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const p2, 0x7f12090f

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_6

    .line 7
    iget-object p2, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez p2, :cond_5

    .line 8
    iget-object p2, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_1

    .line 9
    :cond_5
    invoke-virtual {p2, p1}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_1
    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {p1}, Lcom/android/camera/OnScreenHint;->show()V

    goto :goto_2

    .line 11
    :cond_6
    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz p1, :cond_7

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 13
    iput-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 3

    const-string v0, "ScreenHint"

    const-string/jumbo v1, "onClick LocationAccess PositiveButton"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenHint;->mAllowCta:Z

    const-string v2, "Track init start"

    .line 3
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->TrackInit(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackCTADialogAgree()V

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->recordFirstUse(Z)V

    .line 7
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->updateCTAPreference(Z)V

    .line 8
    invoke-static {v1}, Lcom/android/camera/fragment/CtaNoticeFragment$CTA;->setCanConnectNetwork(Z)V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Runnable;)V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDismiss CtaAccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/ScreenHint;->mAllowCta:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenHint"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenHint;->mAllowCta:Z

    if-nez v0, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mSystemChoiceDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 2

    const-string v0, "ScreenHint"

    const-string/jumbo v1, "onClick LocationAccess NegativeButton"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackCTADialogDisagree()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenHint;->mAllowCta:Z

    return-void
.end method

.method public cancelHint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    :cond_0
    return-void
.end method

.method public dismissSystemChoiceDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mSystemChoiceDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mSystemChoiceDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public hideToast()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/ui/RotateTextToast;->getInstance()Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    :cond_0
    return-void
.end method

.method public isScreenHintVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->getHintViewVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showConfirmMessage(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    .line 3
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const p2, 0x104000a

    .line 4
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-static/range {v0 .. v8}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public showFirstUseHint(Ljava/lang/Runnable;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mSystemChoiceDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenHint;->dismissSystemChoiceDialog()V

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowFirstUseHint()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenHint;->mAllowCta:Z

    .line 6
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120497

    new-instance v3, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOo0O;

    invoke-direct {v3, p0}, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOo0O;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    const v4, 0x7f120345

    new-instance v5, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOo0o;

    invoke-direct {v5, p0}, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOo0o;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    new-instance v6, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOo;

    invoke-direct {v6, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOo;-><init>(Lcom/android/camera/ui/ScreenHint;Ljava/lang/Runnable;)V

    invoke-static/range {v1 .. v6}, Lcom/android/camera/RotateDialogController;->showCTADialog(Landroid/app/Activity;ILjava/lang/Runnable;ILjava/lang/Runnable;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mSystemChoiceDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 7
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public showObjectTrackHint()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_camera_first_tap_screen_hint_shown_key"

    .line 2
    invoke-interface {v0, v2, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    const v2, 0x7f1205b9

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    return-void
.end method

.method public updateHint()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/storage/Storage;->switchStoragePathIfNeeded()V

    .line 2
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/storage/Storage;->RAW_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->getAvailableSpace(Ljava/lang/String;)J

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ScreenHint;->showHintInner(J)V

    return-void
.end method

.method public updateHintCached()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ScreenHint;->showHintInner(J)V

    goto :goto_0

    :cond_0
    const-string v0, "ScreenHint"

    const-string v1, "no cached, updateHint"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    :goto_0
    return-void
.end method
