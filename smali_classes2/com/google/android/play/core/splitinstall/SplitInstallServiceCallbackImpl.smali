.class public Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;
.super Lcom/google/android/play/core/splitinstall/protocol/SplitInstallServiceCallback;
.source "SplitInstallServiceCallbackImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/play/core/splitinstall/protocol/SplitInstallServiceCallback;"
    }
.end annotation


# instance fields
.field public final mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

.field public final mTask:Lcom/google/android/play/core/tasks/TaskWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/TaskWrapper<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/splitinstall/SplitInstallService;",
            "Lcom/google/android/play/core/tasks/TaskWrapper<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/protocol/SplitInstallServiceCallback;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    .line 3
    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    return-void
.end method


# virtual methods
.method public onCancelInstall(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p2, p2, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p2}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    .line 2
    sget-object p2, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onCancelInstall(%d)"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public onCompleteInstall(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {v0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    .line 2
    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onCompleteInstall(%d)"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public onDeferredInstall(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p1}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    .line 2
    sget-object p1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDeferredInstall"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public onDeferredUninstall(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p1}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    .line 2
    sget-object p1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDeferredUninstall"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final onError(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {v0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    const-string v0, "error_code"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onError(%d)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    new-instance v1, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    invoke-direct {v1, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/TaskWrapper;->setException(Ljava/lang/Exception;)Z

    return-void
.end method

.method public onGetSession(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p2, p2, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p2}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    .line 2
    sget-object p2, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onGetSession(%d)"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public onGetSessionStates(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p1}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    .line 2
    sget-object p1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetSessionStates"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public onStartInstall(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p2, p2, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p2}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    .line 2
    sget-object p2, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onStartInstall(%d)"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
