.class public final Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;
.super Lcom/google/android/play/core/remote/RemoteTask;
.source "DeferredUninstallTask.java"


# instance fields
.field public final mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

.field public final mTask:Lcom/google/android/play/core/tasks/TaskWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/TaskWrapper<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final moduleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;Ljava/util/List;Lcom/google/android/play/core/tasks/TaskWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/splitinstall/SplitInstallService;",
            "Lcom/google/android/play/core/tasks/TaskWrapper;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/play/core/tasks/TaskWrapper<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/play/core/remote/RemoteTask;-><init>(Lcom/google/android/play/core/tasks/TaskWrapper;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    .line 3
    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;->moduleNames:Ljava/util/List;

    .line 4
    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {v0}, Lcom/google/android/play/core/remote/RemoteManager;->getIInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v1, v1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;->moduleNames:Ljava/util/List;

    .line 2
    invoke-static {v2}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->wrapModuleNames(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->wrapVersionCode()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/splitinstall/DeferredUninstallCallback;

    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v6, p0, Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v4, v5, v6}, Lcom/google/android/play/core/splitinstall/DeferredUninstallCallback;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    .line 4
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;->deferredUninstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;->moduleNames:Ljava/util/List;

    aput-object v4, v2, v3

    const-string v3, "deferredUninstall(%s)"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/TaskWrapper;->setException(Ljava/lang/Exception;)Z

    :goto_0
    return-void
.end method
