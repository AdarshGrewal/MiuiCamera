.class public Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;
.super Lcom/android/camera/fragment/mode/FragmentMoreModeBase;
.source "FragmentMoreModeEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# static fields
.field public static final TAG:Ljava/lang/String; = "MoreModeEdit"


# instance fields
.field public mExitDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method private confirmEdit()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/mode/ModeAdapter;->createChangeItems()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setSortModes([I)V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "pref_user_edit_modes"

    .line 7
    invoke-interface {v0, v2, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit(Z)V

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPopupMoreStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/16 v1, 0xa3

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;->hide()V

    const-string/jumbo v0, "value_edit_mode_click_confirm"

    .line 13
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackModeEditClick(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackModeEditInfo()V

    return-void
.end method

.method private showExitConfirm()Z
    .locals 11

    const-string/jumbo v0, "value_edit_mode_click_exit"

    .line 1
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackModeEditClick(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/mode/ModeAdapter;->isDataChange()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;->hide()V

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v0, 0x7f120557

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f1204ec

    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit$1;

    invoke-direct {v6, p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit$1;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v0, 0x7f120555

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit$2;

    invoke-direct {v10, p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit$2;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;)V

    .line 8
    invoke-static/range {v2 .. v10}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 9
    new-instance v1, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit$3;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public createLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 4

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;->getCountPerLine()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-object v0
.end method

.method public createModeItemDecoration(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;)Lcom/android/camera/fragment/mode/ModeItemDecoration;
    .locals 2

    .line 1
    new-instance p1, Lcom/android/camera/fragment/mode/ModeItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;->getType()I

    move-result v1

    invoke-direct {p1, v0, p2, v1}, Lcom/android/camera/fragment/mode/ModeItemDecoration;-><init>(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;I)V

    return-object p1
.end method

.method public getCountPerLine()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Lcom/android/camera/display/Display;->getMoreModeTabCol(ZZ)I

    move-result v0

    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfff7

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d00a6

    return v0
.end method

.method public getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0295

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    return-object p1
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hide()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->initView(Landroid/view/View;)V

    const v0, 0x7f0a0292

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0293

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0294

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/display/Display;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;->showExitConfirm()Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "MoreModeEdit"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string/jumbo p1, "onClick: mode_edit_exit"

    .line 2
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;->showExitConfirm()Z

    goto :goto_0

    :pswitch_1
    const-string/jumbo p1, "onClick: mode_edit_done"

    .line 4
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;->confirmEdit()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0292
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->onPause()V

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

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

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

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const-string v0, "MoreModeEdit"

    const-string/jumbo v1, "register"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const-string v0, "MoreModeEdit"

    const-string/jumbo v1, "unRegister"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
