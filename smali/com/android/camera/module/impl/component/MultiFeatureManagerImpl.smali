.class public Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;
.super Ljava/lang/Object;
.source "MultiFeatureManagerImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;
.implements Lcom/android/camera/fragment/CtaNoticeFragment$OnCtaNoticeClickListener;


# static fields
.field public static final SESSION_ID_AUTO_DOWNLOAD:I = -0x2

.field public static final SESSION_ID_PENDING_CANCEL:I = -0x1

.field public static final TAG:Ljava/lang/String; = "FML"


# instance fields
.field public mActivity:Landroidx/fragment/app/FragmentActivity;

.field public mBatchDownloadDisposable:Lio/reactivex/disposables/Disposable;

.field public mContext:Landroid/content/Context;

.field public mExternalListener:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

.field public mFeatureSize:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mFeatureVersion:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

.field public mInstallSession:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mInstalledFeature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLoadedLibrary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

.field public myListener:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;-><init>(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->myListener:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    .line 3
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mContext:Landroid/content/Context;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstalledFeature:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mLoadedLibrary:Ljava/util/List;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/data/data/ComponentDataItem;Ljava/lang/Long;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "zip: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FML"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static synthetic OooO00o(Ljava/util/List;Lcom/android/camera/data/data/ComponentDataItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic access$000(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mExternalListener:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallSession:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallSession:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->cancelInstallFeature(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->getFeatureVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->onCanceled(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->onInstalled(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->startInstallFeature(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->confirmCancel(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private cancelInstallFeature(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallSession:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallSession:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->cancelInstall(I)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method private checkWaitingList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMFeature;->getWaitingFeature()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->startInstallFeature(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)Z

    return-void
.end method

.method private clearWaitingList()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    const/16 v3, 0x13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    iget-object v2, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v2}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private confirmCancel(Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->cancelInstallFeature(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz p3, :cond_3

    const-string p3, "attr_feature_install_cancel_conform"

    .line 6
    invoke-static {p3}, Lcom/android/camera/statistic/CameraStatUtils;->trackFeatureInstallOperation(Ljava/lang/String;)V

    .line 7
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancel confirm:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "FML"

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    .line 8
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getFeatureVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mFeatureVersion:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mFeatureVersion:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mFeatureVersion:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private getInstalledFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstalledFeature:Ljava/util/List;

    return-object v0
.end method

.method private onCanceled(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCanceled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FML"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallSession:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->checkWaitingList()V

    return-void
.end method

.method private onFailed(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FML"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallSession:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->clearWaitingList()V

    return-void
.end method

.method private onInstalled(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onInstalled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FML"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallSession:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstalledFeature:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getInstalledModules()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->checkWaitingList()V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->newBuilder()Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->addModule(Ljava/lang/String;)Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->build()Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->startInstall(Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$4;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$4;-><init>(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)V

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->checkWaitingList()V

    return-void
.end method

.method private startInstallFeature(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->hasFeatureInstalled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallSession:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallSession:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startInstall :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FML"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->init()V

    .line 6
    iput-object p2, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mExternalListener:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    .line 7
    iget-object p2, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallSession:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 8
    iget-object p2, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    return v1

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallSession:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->newBuilder()Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->addModule(Ljava/lang/String;)Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->build()Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {p2, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->startInstall(Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)Lcom/google/android/play/core/tasks/Task;

    return v0
.end method

.method private test()V
    .locals 0

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->startInstallFeature(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)Z

    return-void
.end method

.method public batchInstallFeatures(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFeatureAutoDownloadEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/android/camera/network/NetworkDependencies;->isConnectedWIFI(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/VMFeature;->inDownloadingOrWaiting()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->getInstalledFeatures()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getCommonItems()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-static {v2}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOOo;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOOo;-><init>(Ljava/util/List;)V

    .line 11
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 12
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 13
    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOo0;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOo0;

    .line 14
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->zipWith(Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    .line 15
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOOO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOOO;-><init>(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)V

    .line 16
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mBatchDownloadDisposable:Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x1

    return p1
.end method

.method public checkAndShowDownloadConfirmDialog(Ljava/lang/String;Landroid/content/Context;ZLjava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;
    .locals 10

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FML"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v2, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const/4 v4, 0x5

    invoke-static {v2, p0, v4}, Lcom/android/camera/fragment/CtaNoticeFragment;->checkCta(Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/CtaNoticeFragment$OnCtaNoticeClickListener;I)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const-string v0, "check cta"

    .line 3
    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/android/camera/network/NetworkDependencies;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "check networkError"

    .line 5
    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f120480

    const/16 v2, 0x50

    .line 6
    invoke-static {p2, v0, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-object v4

    .line 7
    :cond_1
    invoke-static {p2}, Lcom/android/camera/network/NetworkDependencies;->isConnectedWIFI(Landroid/content/Context;)Z

    move-result v2

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->getFeatureSize(Ljava/lang/String;)J

    move-result-wide v5

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->getFeatureVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    xor-int/lit8 v9, p3, 0x1

    invoke-static {p1, v7, v9, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackFeatureInstallStartClick(Ljava/lang/String;Ljava/lang/String;IZ)V

    if-eqz v2, :cond_3

    const-string v1, "check connected"

    .line 10
    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->startInstallFeature(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-object v4

    .line 13
    :cond_3
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "###.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double v3, v5

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    div-double/2addr v3, v5

    .line 14
    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120376

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 17
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v5

    invoke-virtual {v5}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Ooo()Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f120373

    goto :goto_0

    :cond_4
    const v5, 0x7f120374

    :goto_0
    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f120371

    .line 18
    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$2;

    invoke-direct {v5, p0, p1, p4}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$2;-><init>(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v0, 0x7f1208f5

    .line 19
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v0, p2

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    .line 20
    invoke-static/range {v0 .. v8}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v1, "attr_feature_install_cellular_show"

    .line 21
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFeatureInstallOperation(Ljava/lang/String;)V

    return-object v0
.end method

.method public containsFeature(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->getInstalledFeatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFeatureSize(Ljava/lang/String;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->init()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mFeatureSize:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mFeatureSize:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mFeatureVersion:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mFeatureVersion:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFeatureSize featureName :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FML"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mFeatureSize:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 8
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getSplitInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mFeatureSize:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mFeatureVersion:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mFeatureSize:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasFeatureInstalled(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->init()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getInstalledModules()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public init()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->newBuilder()Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 4
    invoke-virtual {v2, v3}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->splitLoadMode(I)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/camera/multi/reporter/SampleLogger;

    invoke-direct {v3}, Lcom/android/camera/multi/reporter/SampleLogger;-><init>()V

    .line 5
    invoke-virtual {v2, v3}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->logger(Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v3}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->verifySignature(Z)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/camera/multi/reporter/SampleSplitLoadReporter;

    iget-object v4, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/camera/multi/reporter/SampleSplitLoadReporter;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v2, v3}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->loadReporter(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/camera/multi/reporter/SampleSplitInstallReporter;

    iget-object v4, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/camera/multi/reporter/SampleSplitInstallReporter;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v2, v3}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->installReporter(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/camera/multi/reporter/SampleSplitUninstallReporter;

    iget-object v4, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/camera/multi/reporter/SampleSplitUninstallReporter;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v2, v3}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->uninstallReporter(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/camera/multi/reporter/SampleSplitUpdateReporter;

    iget-object v4, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/camera/multi/reporter/SampleSplitUpdateReporter;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v2, v3}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->updateReporter(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->build()Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/camera/multi/SampleDownloader;

    invoke-direct {v4}, Lcom/android/camera/multi/SampleDownloader;-><init>()V

    invoke-static {v3, v4, v2}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->install(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;)V

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: split attach cost "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FML"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->onApplicationCreated()V

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    .line 16
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->myListener:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    invoke-interface {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->registerListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getInstalledModules()Ljava/util/Set;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v2, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v1, v2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/observeable/VMFeature;

    iput-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20
    iget-object v2, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstalledFeature:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mLoadedLibrary:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mLoadedLibrary:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onNegativeClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public onPositiveClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerProtocol: Thread name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FML"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public tryCancelDownload(Ljava/lang/String;ZLandroid/content/Context;ZLjava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p5

    .line 1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FML"

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-nez p2, :cond_0

    .line 2
    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->confirmCancel(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    const/4 v1, 0x0

    return-object v1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/android/camera/data/observeable/VMFeature;->getLocalModeByFeatureName(Ljava/lang/String;)I

    move-result v5

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v6

    move/from16 v7, p4

    invoke-virtual {v6, v5, v7}, Lcom/android/camera/data/data/global/ComponentModuleList;->geItemStringName(IZ)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120370

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    invoke-virtual {v6, v7, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f1204ec

    .line 6
    invoke-virtual {p3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;

    invoke-direct {v7, p0, p1, v3}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;-><init>(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v1, 0x7f1208f5

    .line 7
    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object v1, p3

    move-object v2, v5

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    .line 8
    invoke-static/range {v1 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    const-string v2, "attr_feature_install_cancel_show"

    .line 9
    invoke-static {v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackFeatureInstallOperation(Ljava/lang/String;)V

    return-object v1
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unRegisterProtocol: Thread name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FML"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mContext:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mBatchDownloadDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mBatchDownloadDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6
    iput-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mBatchDownloadDisposable:Lio/reactivex/disposables/Disposable;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallSession:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->cancelInstallFeature(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstalledFeature:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mLoadedLibrary:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->mInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->myListener:Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    invoke-interface {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->unregisterListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V

    .line 14
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
