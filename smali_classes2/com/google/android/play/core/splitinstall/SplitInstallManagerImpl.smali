.class public final Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;
.super Ljava/lang/Object;
.source "SplitInstallManagerImpl.java"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/SplitInstallManager;


# static fields
.field public static final TAG:Ljava/lang/String; = "SplitInstallManagerImpl"


# instance fields
.field public final context:Landroid/content/Context;

.field public final mInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

.field public final mMainHandler:Landroid/os/Handler;

.field public mRegistry:Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->context:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->packageName:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mMainHandler:Landroid/os/Handler;

    .line 7
    new-instance p1, Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    invoke-direct {p1, p2}, Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mRegistry:Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    return-void
.end method

.method private cutSplitName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\\.config\\."

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1
.end method

.method private getFusedModules()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SplitInstallManagerImpl"

    .line 1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->packageName:Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v3, "shadow.bundletool.com.android.dynamic.apk.fused.modules"

    .line 4
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, -0x1

    const-string v3, ","

    .line 5
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v0, ""

    .line 6
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    const-string v2, "App has no fused modules."

    .line 7
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string v2, "App has no applicationInfo or metaData"

    .line 8
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catchall_0
    const-string v2, "App is not found in PackageManager"

    .line 9
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getInstalledSplitInstallInfo()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->getFusedModules()Ljava/util/Set;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->getSplitInstallInfo()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplitInstallManagerImpl"

    if-nez v1, :cond_1

    const-string v1, "No splits are found or app cannot be found in package manager."

    .line 4
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string v3, "Split names are: "

    .line 5
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    const-string v5, "config."

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 9
    invoke-direct {p0, v4}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->cutSplitName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private getSplitInstallInfo()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    const-string v1, "SplitInstallManagerImpl"

    const-string v2, "App is not found in PackageManager"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public cancelInstall(I)Lcom/google/android/play/core/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->cancelInstall(I)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public deferredInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->deferredInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public deferredUninstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->deferredUninstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledModules()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->getInstalledSplitInstallInfo()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/play/core/splitinstall/LoadedSplitFetcherSingleton;->get()Lcom/google/android/play/core/splitinstall/LoadedSplitFetcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/LoadedSplitFetcher;->loadedSplits()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRegistry()Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mRegistry:Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    return-object v0
.end method

.method public getSessionState(I)Lcom/google/android/play/core/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->getSessionState(I)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getSessionStates()Lcom/google/android/play/core/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->getSessionStates()Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public registerListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->getRegistry()Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->registerListener(Lcom/google/android/play/core/listener/StateUpdatedListener;)V

    return-void
.end method

.method public startConfirmationDialogForResult(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;Landroid/app/Activity;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->resolutionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->resolutionIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public startInstall(Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)Lcom/google/android/play/core/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/splitinstall/SplitInstallRequest;",
            ")",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->getInstalledModules()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->getModuleNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/play/core/splitinstall/SplitInstalledDisposer;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstalledDisposer;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/play/core/tasks/Tasks;->createTaskAndSetResult(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->getModuleNames()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->startInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public unregisterListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->getRegistry()Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->unregisterListener(Lcom/google/android/play/core/listener/StateUpdatedListener;)V

    return-void
.end method
