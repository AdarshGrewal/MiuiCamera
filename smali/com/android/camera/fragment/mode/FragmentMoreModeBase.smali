.class public abstract Lcom/android/camera/fragment/mode/FragmentMoreModeBase;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentMoreModeBase.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/fragment/mode/IMoreMode;
.implements Lcom/android/camera/scanner/IMiScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/mode/FragmentMoreModeBase$DialogDissmissListener;,
        Lcom/android/camera/fragment/mode/FragmentMoreModeBase$DownloadCancelRunnable;
    }
.end annotation


# static fields
.field public static final DOWN_POS_IDLE:I = -0x1

.field public static final DOWN_POS_NOT_FOUND:I = -0x2

.field public static final TAG:Ljava/lang/String; = "MoreModeBase"


# instance fields
.field public mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

.field public mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mDownloadConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mDownloaderPosition:I

.field public mDownloadingFeature:Ljava/lang/String;

.field public mMiScanner:Lcom/android/camera/scanner/MiScanner;

.field public mRootView:Landroid/view/View;

.field public mVMFeature:Lcom/android/camera/data/observeable/VMFeature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloaderPosition:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->onDownloadAndInstallStart(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$102(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method private checkInstallState(I)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0x3a1

    .line 4
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    .line 5
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->hasFeatureInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->confirmDownload(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private confirmDownload(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "confirmDownload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoreModeBase"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a1

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$1;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$1;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-interface {v0, p1, v1, v3, v2}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->checkAndShowDownloadConfirmDialog(Ljava/lang/String;Landroid/content/Context;ZLjava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$2;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method private createModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/mode/ModeAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/camera/fragment/mode/ModeAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/fragment/mode/FragmentMoreModeBase;)V

    return-object v0
.end method

.method private getDownloadPosition(I)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {p0}, Lcom/android/camera/fragment/mode/IMoreMode;->getType()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/android/camera/fragment/mode/IMoreMode;->getType()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/android/camera/fragment/mode/IMoreMode;->getType()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x2

    :goto_2
    return v0
.end method

.method private notifyDownloadProgressChange(IIII)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;-><init>(I)V

    .line 2
    iput p3, v0, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;->progress:I

    .line 3
    iput p4, v0, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;->downloadState:I

    const/4 p3, -0x2

    const/4 p4, -0x1

    if-eq p2, p4, :cond_0

    if-ne p2, p3, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getDownloadPosition(I)I

    move-result p2

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start down position "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MoreModeBase"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eq p2, p4, :cond_2

    if-eq p2, p3, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private onDownloadAndInstallStart(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MoreModeBase"

    const-string/jumbo v1, "onDownloadStart"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadingFeature:Ljava/lang/String;

    return-void
.end method

.method private onInstallFailed()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadingFeature:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 4
    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120480

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void
.end method

.method private onInstallStateChanged(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    invoke-static {v1}, Lcom/android/camera/data/observeable/VMFeature;->getLocalModeByFeatureName(Ljava/lang/String;)I

    move-result v2

    .line 6
    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getScope(I)I

    move-result v3

    const/16 v4, 0x10

    const-string v5, "MoreModeBase"

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v3, v4, :cond_5

    const/16 v4, 0x100

    if-eq v3, v4, :cond_4

    const/16 v4, 0x1000

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadingFeature:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloaderPosition:I

    if-eq v3, v6, :cond_2

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3

    .line 8
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getDownloadPosition(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloaderPosition:I

    .line 9
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->onDownloadAndInstallStart(Ljava/lang/String;)V

    .line 10
    :cond_3
    iget v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloaderPosition:I

    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getDownloadingProgress(I)I

    move-result v3

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->notifyDownloadProgressChange(IIII)V

    goto :goto_0

    .line 11
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateError: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloaderPosition:I

    invoke-direct {p0, v2, v1, v7, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->notifyDownloadProgressChange(IIII)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    iput v6, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloaderPosition:I

    .line 15
    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->onInstallFailed()V

    goto :goto_0

    .line 16
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateChange = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadingFeature:Ljava/lang/String;

    .line 18
    iget v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloaderPosition:I

    invoke-direct {p0, v2, v1, v7, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->notifyDownloadProgressChange(IIII)V

    .line 19
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 20
    iput v6, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloaderPosition:I

    goto/16 :goto_0

    .line 21
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getDownloadPosition(I)I

    move-result v1

    .line 22
    invoke-direct {p0, v2, v1, v7, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->notifyDownloadProgressChange(IIII)V

    goto/16 :goto_0

    .line 23
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getDownloadPosition(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloaderPosition:I

    .line 24
    invoke-direct {p0, v2, v1, v7, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->notifyDownloadProgressChange(IIII)V

    goto/16 :goto_0

    .line 25
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 26
    iput v6, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloaderPosition:I

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, v2, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->onInstalledOK(IZ)V

    goto/16 :goto_0

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onInstalledOK(IZ)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadingFeature:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 4
    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->hide()V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xb3

    .line 8
    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v0

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->geItemStringName(IZ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 11
    invoke-interface {p2, p1, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->changeModeByNewMode(ILjava/lang/String;I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->onInstallStateChanged(Ljava/util/HashMap;)V

    return-void
.end method

.method public getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    return-object v0
.end method

.method public getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    invoke-interface {p0, v0}, Lcom/android/camera/fragment/mode/IMoreMode;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/mode/ModeAdapter;

    return-object v0
.end method

.method public gotoModeEdit()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v2, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v1, v2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/observeable/VMFeature;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/data/observeable/VMFeature;->inDownloadingOrWaiting()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120368

    const/16 v2, 0x50

    .line 5
    invoke-static {v0, v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void

    :cond_0
    const-string v1, "MoreModeBase"

    const-string v2, "configModeEdit"

    .line 6
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v1, Landroid/content/Intent;

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0Oo:Z

    if-eqz v2, :cond_1

    const-class v2, Lcom/android/camera/ModeEditorPadActivity;

    goto :goto_0

    :cond_1
    const-class v2, Lcom/android/camera/ModeEditorActivity;

    :goto_0
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v2

    const-string v3, "from_where"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v2}, Lcom/android/camera/CameraIntentManager;->setStartActivityWhenLocked(Landroid/content/Intent;Z)V

    .line 11
    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x7

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    const-string v0, "attr_edit_mode_icon"

    .line 13
    invoke-static {v0}, Lcom/android/camera/statistic/MistatsWrapper;->customizeCameraSettingClick(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public abstract hide()V
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/fragment/mode/IMoreMode;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/camera/fragment/mode/IMoreMode;->createLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p0, v0, p0}, Lcom/android/camera/fragment/mode/IMoreMode;->createModeItemDecoration(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;)Lcom/android/camera/fragment/mode/ModeItemDecoration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->createModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/mode/ModeAdapter;->setRotate(I)V

    .line 8
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

.method public isSupportScanner()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Ooo0o()Z

    move-result v0

    return v0
.end method

.method public modeDownloading(I)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0x3a1

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->containsFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public modeShouldDownload(I)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0x3a1

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    if-eqz v0, :cond_4

    .line 4
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->containsFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->isSupportScanner()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mMiScanner:Lcom/android/camera/scanner/MiScanner;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/scanner/MiScanner;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadingFeature:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadingFeature:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->tryCancelDownload(Ljava/lang/String;Z)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 3
    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadingFeature:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "MoreModeBase"

    if-nez v1, :cond_4

    const v1, 0x7f0a0290

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 6
    instance-of v1, p1, Lcom/android/camera/ui/ModeBackground;

    const/16 v5, 0x64

    if-eqz v1, :cond_0

    .line 7
    check-cast p1, Lcom/android/camera/ui/ModeBackground;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "old click downloading: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/ui/ModeBackground;->getProgress()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/ui/ModeBackground;->getProgress()I

    move-result p1

    goto :goto_0

    .line 10
    :cond_0
    instance-of v1, p1, Lcom/android/camera/ui/WaterBox;

    if-eqz v1, :cond_1

    .line 11
    check-cast p1, Lcom/android/camera/ui/WaterBox;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new click downloading: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/ui/WaterBox;->getValue()F

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p1}, Lcom/android/camera/ui/WaterBox;->getValue()F

    move-result p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    goto :goto_0

    :cond_1
    move p1, v5

    :goto_0
    if-ge p1, v5, :cond_4

    .line 14
    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadingFeature:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadingFeature:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->tryCancelDownload(Ljava/lang/String;Z)V

    :cond_2
    return-void

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v1}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    const/16 v1, 0x12

    iget-object v5, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v5}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v1, v5, :cond_4

    .line 19
    invoke-virtual {p0, p1, v3}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->tryCancelDownload(Ljava/lang/String;Z)V

    return-void

    .line 20
    :cond_4
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, "onClick mode_item 0x%x"

    invoke-static {p1, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xff

    if-ne v0, p1, :cond_6

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadingFeature:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120368

    const/16 v1, 0x50

    invoke-static {p1, v0, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void

    .line 23
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->gotoModeEdit()V

    goto :goto_1

    .line 24
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->checkInstallState(I)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 25
    :cond_7
    invoke-direct {p0, v0, v3}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->onInstalledOK(IZ)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a029c
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x3a1

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->init()V

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/VMFeature;

    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->isSupportScanner()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    new-instance p1, Lcom/android/camera/scanner/MiScanner;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/scanner/MiScanner;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mMiScanner:Lcom/android/camera/scanner/MiScanner;

    :cond_1
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->isSupportScanner()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mMiScanner:Lcom/android/camera/scanner/MiScanner;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/scanner/MiScanner;->release()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 4
    iput-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 7
    iput-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOoO/OooO00o;

    invoke-direct {p2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOoO/OooO00o;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;)V

    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/observeable/VMFeature;->startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public provideOrientationChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideOrientationChanged(ILjava/util/List;I)V

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iput p2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public startScannerApp()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->isSupportScanner()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mMiScanner:Lcom/android/camera/scanner/MiScanner;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/scanner/MiScanner;->startScanApp()V

    :cond_0
    return-void
.end method

.method public tryCancelDownload(Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "MoreModeBase"

    const-string/jumbo v1, "showDownloadCancelDialog"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a1

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v6, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$DownloadCancelRunnable;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$DownloadCancelRunnable;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;Lcom/android/camera/fragment/mode/FragmentMoreModeBase$1;)V

    const/4 v5, 0x1

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->tryCancelDownload(Ljava/lang/String;ZLandroid/content/Context;ZLjava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 5
    new-instance p2, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$DialogDissmissListener;

    invoke-direct {p2, p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$DialogDissmissListener;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;Lcom/android/camera/fragment/mode/FragmentMoreModeBase$1;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
