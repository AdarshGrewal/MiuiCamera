.class public final Lcom/google/android/play/core/splitinstall/CancelInstallTask;
.super Lcom/google/android/play/core/remote/RemoteTask;
.source "CancelInstallTask.java"


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

.field public final sessionId:I


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;ILcom/google/android/play/core/tasks/TaskWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/splitinstall/SplitInstallService;",
            "Lcom/google/android/play/core/tasks/TaskWrapper<",
            "Ljava/lang/Void;",
            ">;I",
            "Lcom/google/android/play/core/tasks/TaskWrapper<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p4}, Lcom/google/android/play/core/remote/RemoteTask;-><init>(Lcom/google/android/play/core/tasks/TaskWrapper;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/CancelInstallTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    .line 3
    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/CancelInstallTask;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    .line 4
    iput p3, p0, Lcom/google/android/play/core/splitinstall/CancelInstallTask;->sessionId:I

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/CancelInstallTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {v0}, Lcom/google/android/play/core/remote/RemoteManager;->getIInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/CancelInstallTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v1, v1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/splitinstall/CancelInstallTask;->sessionId:I

    .line 2
    invoke-static {}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->wrapVersionCode()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/splitinstall/CancelInstallCallback;

    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/CancelInstallTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v6, p0, Lcom/google/android/play/core/splitinstall/CancelInstallTask;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v4, v5, v6}, Lcom/google/android/play/core/splitinstall/CancelInstallCallback;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    .line 3
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;->cancelInstall(Ljava/lang/String;ILandroid/os/Bundle;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/play/core/splitinstall/CancelInstallTask;->sessionId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "cancelInstall(%d)"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/CancelInstallTask;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/TaskWrapper;->setException(Ljava/lang/Exception;)Z

    :goto_0
    return-void
.end method
