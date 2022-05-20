.class public final Lcom/google/android/play/core/splitinstall/SplitInstallService;
.super Ljava/lang/Object;
.source "SplitInstallService.java"


# static fields
.field public static final playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackageName:Ljava/lang/String;

.field public final mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/remote/RemoteManager<",
            "Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const-class v1, Lcom/google/android/play/core/splitinstall/SplitInstallService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v6, Lcom/google/android/play/core/splitinstall/OnBinderDiedListenerImpl;

    invoke-direct {v6, p0}, Lcom/google/android/play/core/splitinstall/OnBinderDiedListenerImpl;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;)V

    .line 4
    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mPackageName:Ljava/lang/String;

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.iqiyi.android.play.core.splitinstall.BIND_SPLIT_INSTALL_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 7
    new-instance p2, Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    sget-object v5, Lcom/google/android/play/core/splitinstall/SplitRemoteImpl;->sInstance:Lcom/google/android/play/core/remote/IRemote;

    const-string v3, "SplitInstallService"

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/core/remote/RemoteManager;-><init>(Landroid/content/Context;Lcom/google/android/play/core/splitcompat/util/PlayCore;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/remote/IRemote;Lcom/google/android/play/core/remote/OnBinderDiedListener;)V

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    return-void
.end method

.method public static wrapModuleNames(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "module_name"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static wrapVersionCode()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "playcore_version_code"

    const/16 v2, 0x271a

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public cancelInstall(I)Lcom/google/android/play/core/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "cancelInstall(%d)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2
    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/CancelInstallTask;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/splitinstall/CancelInstallTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;ILcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public deferredInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 3
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
    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "deferredInstall(%s)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2
    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/DeferredInstallTask;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/splitinstall/DeferredInstallTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;Ljava/util/List;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public deferredUninstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 3
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
    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "deferredUninstall(%s)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2
    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;Ljava/util/List;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getSessionState(I)Lcom/google/android/play/core/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "getSessionState(%d)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2
    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/GetSessionStateTask;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/splitinstall/GetSessionStateTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;ILcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getSessionStates()Lcom/google/android/play/core/tasks/Task;
    .locals 3
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
    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getSessionStates"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2
    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/GetSessionStatesTask;

    invoke-direct {v2, p0, v0, v0}, Lcom/google/android/play/core/splitinstall/GetSessionStatesTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public onBinderDied()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onBinderDied"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "session_id"

    const/4 v2, -0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "status"

    const/4 v2, 0x6

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "error_code"

    const/16 v2, -0x9

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.google.android.play.core.splitinstall.receiver.SplitInstallUpdateIntentService"

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_state"

    .line 9
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x40000000    # 2.0f

    .line 10
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    const/high16 v0, 0x200000

    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public startInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "startInstall(%s)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2
    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/StartInstallTask;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/splitinstall/StartInstallTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;Ljava/util/List;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method
