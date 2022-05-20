.class public final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;
.super Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;
.source "SplitInstallSupervisorImpl.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "Split:SplitInstallSupervisorImpl"


# instance fields
.field public final appContext:Landroid/content/Context;

.field public final downloadSizeThresholdValue:J

.field public final dynamicFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final installedSplitForAAB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final obtainUserConfirmationActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

.field public final splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

.field public final userDownloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

.field public final verifySignature:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;Ljava/lang/Class;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    .line 4
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->userDownloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

    .line 5
    invoke-interface {p3}, Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;->getDownloadSizeThresholdWhenUsingMobileData()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const-wide p2, 0x7fffffffffffffffL

    .line 6
    :cond_0
    iput-wide p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->downloadSizeThresholdValue:J

    .line 7
    new-instance p2, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;

    iget-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;->getInstalledSplitsForAAB()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->installedSplitForAAB:Ljava/util/Set;

    .line 8
    iput-object p4, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->obtainUserConfirmationActivityClass:Ljava/lang/Class;

    .line 9
    new-instance p2, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;

    invoke-direct {p2, p1, p5}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    .line 10
    iput-boolean p5, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->verifySignature:Z

    .line 11
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/common/SplitBaseInfoProvider;->getDynamicFeatures()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->dynamicFeatures:Ljava/util/List;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Split:SplitInstallSupervisorImpl"

    const-string p3, "Can\'t read dynamicFeatures from SplitBaseInfoProvider"

    .line 13
    invoke-static {p2, p3, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private checkInternalErrorCode()I
    .locals 6

    .line 1
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v0

    const/16 v1, -0x64

    const-string v2, "Split:SplitInstallSupervisorImpl"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "Failed to fetch SplitInfoManager instance!"

    .line 2
    invoke-static {v2, v3, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 3
    :cond_0
    iget-object v4, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-interface {v0, v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getAllSplitInfo(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 4
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v4, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-interface {v0, v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getQigsawId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/common/SplitBaseInfoProvider;->getQigsawId()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const/4 v3, 0x1

    aput-object v0, v5, v3

    const-string v0, "Failed to match base app qigsaw-version excepted %s but %s!"

    .line 8
    invoke-static {v2, v0, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    :goto_1
    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "Failed to parse json file of split info!"

    .line 9
    invoke-static {v2, v3, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private checkRequestErrorCode(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->isRequestInvalid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->isModuleAvailable(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private checkSplitInfo(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->isCPUArchMatched(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->isMinSdkVersionMatched(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private createDownloadRequests(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 3
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->newBuilder()Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;

    move-result-object v4

    .line 6
    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->url(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;

    move-result-object v4

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileDir(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v3}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileName(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileMD5(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;

    move-result-object v2

    .line 10
    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->moduleName(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->build()Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;

    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private deferredDownloadSplits(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "Split:SplitInstallSupervisorImpl"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->onPreDownloadSplits(Ljava/util/Collection;)[J

    move-result-object v3

    const/4 v4, 0x0

    .line 2
    invoke-interface {p2, v4}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onDeferredInstall(Landroid/os/Bundle;)V

    .line 3
    aget-wide v3, v3, v1

    .line 4
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->createSessionId(Ljava/util/Collection;)I

    move-result v5

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeferredInstall session id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    new-instance v6, Lcom/iqiyi/android/qigsaw/core/splitinstall/DeferredDownloadCallback;

    iget-object v7, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    invoke-direct {v6, v7, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/DeferredDownloadCallback;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Ljava/util/List;)V

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-nez v7, :cond_0

    const-string p1, "Splits have been downloaded, install them directly!"

    new-array v3, v2, [Ljava/lang/Object;

    .line 7
    invoke-static {v0, p1, v3}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v6}, Lcom/iqiyi/android/qigsaw/core/splitinstall/DeferredDownloadCallback;->onCompleted()V

    goto :goto_1

    .line 9
    :cond_0
    iget-wide v7, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->downloadSizeThresholdValue:J

    cmp-long v3, v3, v7

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->userDownloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

    invoke-interface {v3}, Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;->isDeferredDownloadOnlyWhenUsingWifiData()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 10
    :goto_0
    iget-object v4, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->userDownloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->createDownloadRequests(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v4, v5, p1, v6, v3}, Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;->deferredDownload(ILjava/util/List;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/16 v3, -0x63

    .line 11
    invoke-static {v3}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "onDeferredInstall"

    aput-object v1, p2, v2

    const-string v1, "Failed to copy builtin split apks(%s)"

    .line 12
    invoke-static {v0, p1, v1, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private getInstalledSplitForAAB()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->installedSplitForAAB:Ljava/util/Set;

    return-object v0
.end method

.method private getNeed2BeInstalledSplits(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getSplitInfos(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 5
    invoke-virtual {v5}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getDependencies()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v5}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getDependencies()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "Split:SplitInstallSupervisorImpl"

    const-string v3, "Add dependencies %s automatically for install splits %s!"

    invoke-static {p1, v3, v4}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-interface {v0, p1, v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getSplitInfos(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :cond_2
    return-object v1
.end method

.method private isAllSplitsBuiltIn(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 2
    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isBuiltIn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isCPUArchMatched(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->hasLibs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getLibInfo()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    return p1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isMinSdkVersionMatched(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getMinSdkVersion()I

    move-result p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isModuleAvailable(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getAllSplitInfo(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 5
    invoke-virtual {v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-direct {p0, v3}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->checkSplitInfo(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private isRequestInvalid(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->dynamicFeatures:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private onPreDownloadSplits(Ljava/util/Collection;)[J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)[J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 2
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v5

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    const-string v8, "native://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "split_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v7

    .line 7
    :goto_1
    new-instance v7, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;

    invoke-direct {v7, v5, v6}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 8
    :try_start_0
    iget-object v5, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    iget-boolean v8, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->verifySignature:Z

    invoke-virtual {v7, v5, v4, v8}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->load(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v7}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSize()J

    move-result-wide v7

    add-long/2addr v0, v7

    .line 11
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 12
    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 13
    invoke-static {v7}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 14
    throw p1

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [J

    const/4 v4, 0x0

    aput-wide v0, p1, v4

    const/4 v0, 0x1

    aput-wide v2, p1, v0

    return-object p1
.end method

.method private onPreInstallSplits(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->getInstalledSplitForAAB()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->getInstalledSplitForAAB()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->checkInternalErrorCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->checkRequestErrorCode(Ljava/util/List;)I

    move-result v0

    :cond_2
    return v0
.end method

.method private startDownloadSplits(Ljava/util/List;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->isActiveSessionsLimitExceeded()Z

    move-result v0

    const-string v1, "Split:SplitInstallSupervisorImpl"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Start install request error code: ACTIVE_SESSIONS_LIMIT_EXCEEDED"

    .line 2
    invoke-static {v1, p2, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 3
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->createSessionId(Ljava/util/Collection;)I

    move-result v0

    .line 5
    invoke-direct {p0, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->createDownloadRequests(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startInstall session id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v4, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v4, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->getSessionState(I)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->status()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    move v6, v5

    goto :goto_0

    .line 9
    :cond_1
    new-instance v4, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    invoke-direct {v4, v0, p1, p2, v3}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    move v6, v2

    :goto_0
    if-nez v6, :cond_3

    .line 10
    iget-object v6, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v6, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->isIncompatibleWithExistingSession(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Start install request error code: INCOMPATIBLE_WITH_EXISTING_SESSION"

    .line 11
    invoke-static {v1, p2, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x8

    .line 12
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 13
    :cond_3
    :try_start_0
    invoke-direct {p0, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->onPreDownloadSplits(Ljava/util/Collection;)[J

    move-result-object p1

    const/4 v6, 0x0

    .line 14
    invoke-interface {p3, v0, v6}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onStartInstall(ILandroid/os/Bundle;)V

    .line 15
    iget-object v6, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v6, v0, v4}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->setSessionState(ILcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)V

    .line 16
    aget-wide v6, p1, v2

    .line 17
    aget-wide v8, p1, v5

    const-string p1, "totalBytesToDownload: %d, realTotalBytesNeedToDownload: %d "

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 18
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v1, p1, v10}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v4, v6, v7}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->setTotalBytesToDownload(J)V

    .line 20
    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;

    iget-object v6, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    iget-object v7, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-direct {p1, v6, v0, v7, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;ILcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;Ljava/util/List;)V

    const-wide/16 v6, 0x0

    cmp-long p2, v8, v6

    if-gtz p2, :cond_4

    const-string p2, "Splits have been downloaded, install them directly!"

    new-array v0, v2, [Ljava/lang/Object;

    .line 21
    invoke-static {v1, p2, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->onCompleted()V

    goto :goto_1

    .line 23
    :cond_4
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->isMobileAvailable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 24
    iget-wide v6, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->downloadSizeThresholdValue:J

    cmp-long p2, v8, v6

    if-lez p2, :cond_5

    .line 25
    invoke-direct {p0, v4, v8, v9, v3}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->startUserConfirmationActivity(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;JLjava/util/List;)V

    return-void

    .line 26
    :cond_5
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {p2, v0, v5}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    .line 27
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {p2, v4}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->emitSessionState(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)V

    .line 28
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->userDownloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

    invoke-interface {p2, v0, v3, p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;->startDownload(ILjava/util/List;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Failed to copy internal splits"

    .line 29
    invoke-static {v1, p2, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, -0x63

    .line 30
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method private startUserConfirmationActivity(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;JLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;",
            "J",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId()I

    move-result v1

    const-string v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    check-cast p4, Ljava/util/ArrayList;

    const-string v1, "downloadRequests"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p4, "realTotalBytesNeedToDownload"

    .line 4
    invoke-virtual {v0, p4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->moduleNames()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    const-string p3, "moduleNames"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->obtainUserConfirmationActivityClass:Ljava/lang/Class;

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 7
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    const/4 p3, 0x0

    const/high16 p4, 0x8000000

    invoke-static {p2, p3, v0, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->setUserConfirmationIntent(Landroid/app/PendingIntent;)V

    .line 9
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId()I

    move-result p3

    const/16 p4, 0x8

    invoke-interface {p2, p3, p4}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    .line 10
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->emitSessionState(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)V

    return-void
.end method


# virtual methods
.method public cancelInstall(ILcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Split:SplitInstallSupervisorImpl"

    const-string v4, "start to cancel session id %d installation"

    invoke-static {v2, v4, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v1, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->getSessionState(I)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    move-result-object v1

    if-nez v1, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "Session id is not found!"

    .line 3
    invoke-static {v2, v0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x4

    .line 4
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->status()I

    move-result v4

    const/4 v5, -0x3

    if-eq v4, v0, :cond_2

    .line 6
    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->status()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v5}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->userDownloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;->cancelDownloadSync(I)Z

    move-result v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result of cancel request : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 10
    invoke-interface {p2, p1, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onCancelInstall(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {v5}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public cancelInstallWithoutUserConfirmation(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->getSessionState(I)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId()I

    move-result v1

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    .line 3
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->emitSessionState(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public continueInstallWithUserConfirmation(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->getSessionState(I)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    iget-object v4, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->needInstalledSplits:Ljava/util/List;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;ILcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;Ljava/util/List;)V

    .line 3
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    .line 4
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {p1, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->emitSessionState(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)V

    .line 5
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->userDownloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId()I

    move-result v2

    iget-object v0, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->downloadRequests:Ljava/util/List;

    invoke-interface {p1, v2, v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;->startDownload(ILjava/util/List;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;)V

    return v3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public deferredInstall(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->unBundleModuleNames(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->onPreInstallSplits(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->getInstalledSplitForAAB()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->getInstalledSplitForAAB()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 5
    invoke-interface {p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onDeferredInstall(Landroid/os/Bundle;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->getNeed2BeInstalledSplits(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->deferredDownloadSplits(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public deferredUninstall(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->getInstalledSplitForAAB()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, -0x62

    .line 2
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->unBundleModuleNames(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->checkInternalErrorCode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->isRequestInvalid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, -0x3

    .line 7
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 8
    :cond_2
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;

    invoke-direct {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;-><init>()V

    .line 9
    invoke-virtual {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->recordPendingUninstallSplits(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Split:SplitInstallSupervisorImpl"

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Succeed to record pending uninstall splits %s!"

    invoke-static {v2, p1, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 11
    invoke-interface {p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onDeferredUninstall(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Failed to record pending uninstall splits!"

    .line 12
    invoke-static {v2, v0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, -0x64

    .line 13
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public getSessionState(ILcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->getSessionState(I)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x4

    .line 2
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->transform2Bundle(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onGetSession(ILandroid/os/Bundle;)V

    return-void
.end method

.method public getSessionStates(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->getSessionStates()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onGetSessionStates(Ljava/util/List;)V

    goto :goto_1

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    .line 6
    invoke-static {v2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->transform2Bundle(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p1, v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onGetSessionStates(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public startInstall(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->unBundleModuleNames(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->onPreInstallSplits(Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->getNeed2BeInstalledSplits(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->isAllSplitsBuiltIn(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, -0x6

    .line 6
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 7
    :cond_1
    invoke-direct {p0, p1, v0, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->startDownloadSplits(Ljava/util/List;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V

    :goto_0
    return-void
.end method
