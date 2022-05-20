.class public final Lcom/google/android/play/core/remote/RemoteManager;
.super Ljava/lang/Object;
.source "RemoteManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final sHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBindingService:Z

.field public final mContext:Landroid/content/Context;

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mIInterface:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mKey:Ljava/lang/String;

.field public final mOnBinderDiedListenerWkRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/play/core/remote/OnBinderDiedListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/play/core/remote/RemoteTask;",
            ">;"
        }
    .end annotation
.end field

.field public final mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

.field public final mRemote:Lcom/google/android/play/core/remote/IRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/remote/IRemote<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mServiceConnection:Landroid/content/ServiceConnection;

.field public final mSplitInstallServiceIntent:Landroid/content/Intent;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/core/remote/RemoteManager;->sHandlerMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/splitcompat/util/PlayCore;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/remote/IRemote;Lcom/google/android/play/core/remote/OnBinderDiedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/play/core/splitcompat/util/PlayCore;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Lcom/google/android/play/core/remote/IRemote<",
            "TT;>;",
            "Lcom/google/android/play/core/remote/OnBinderDiedListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPendingTasks:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/google/android/play/core/remote/DeathRecipientImpl;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/remote/DeathRecipientImpl;-><init>(Lcom/google/android/play/core/remote/RemoteManager;)V

    iput-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 4
    iput-object p1, p0, Lcom/google/android/play/core/remote/RemoteManager;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    .line 6
    iput-object p3, p0, Lcom/google/android/play/core/remote/RemoteManager;->mKey:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/google/android/play/core/remote/RemoteManager;->mSplitInstallServiceIntent:Landroid/content/Intent;

    .line 8
    iput-object p5, p0, Lcom/google/android/play/core/remote/RemoteManager;->mRemote:Lcom/google/android/play/core/remote/IRemote;

    .line 9
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/play/core/remote/RemoteManager;->mOnBinderDiedListenerWkRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/play/core/remote/RemoteManager;->sHandlerMap:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/play/core/remote/RemoteManager;->sHandlerMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/play/core/remote/RemoteManager;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/google/android/play/core/remote/RemoteManager;->mKey:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 5
    sget-object v2, Lcom/google/android/play/core/remote/RemoteManager;->sHandlerMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/play/core/remote/RemoteManager;->mKey:Ljava/lang/String;

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    sget-object v1, Lcom/google/android/play/core/remote/RemoteManager;->sHandlerMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/play/core/remote/RemoteManager;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 7
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public bindService(Lcom/google/android/play/core/remote/RemoteTask;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/play/core/remote/BindServiceTask;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/remote/BindServiceTask;-><init>(Lcom/google/android/play/core/remote/RemoteManager;Lcom/google/android/play/core/remote/RemoteTask;)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/remote/RemoteManager;->post(Lcom/google/android/play/core/remote/RemoteTask;)V

    return-void
.end method

.method public bindServiceInternal(Lcom/google/android/play/core/remote/RemoteTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mIInterface:Landroid/os/IInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mBindingService:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Initiate binding to the service."

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3
    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPendingTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Lcom/google/android/play/core/remote/ServiceConnectionImpl;

    invoke-direct {p1, p0}, Lcom/google/android/play/core/remote/ServiceConnectionImpl;-><init>(Lcom/google/android/play/core/remote/RemoteManager;)V

    iput-object p1, p0, Lcom/google/android/play/core/remote/RemoteManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mBindingService:Z

    .line 6
    iget-object v2, p0, Lcom/google/android/play/core/remote/RemoteManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/play/core/remote/RemoteManager;->mSplitInstallServiceIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, p1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Failed to bind to the service."

    invoke-virtual {p1, v2, v0}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8
    iput-boolean v1, p0, Lcom/google/android/play/core/remote/RemoteManager;->mBindingService:Z

    .line 9
    iget-object p1, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPendingTasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/remote/RemoteTask;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/play/core/remote/RemoteTask;->getTask()Lcom/google/android/play/core/tasks/TaskWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v1, Lcom/google/android/play/core/remote/RemoteServiceException;

    invoke-direct {v1}, Lcom/google/android/play/core/remote/RemoteServiceException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/TaskWrapper;->setException(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPendingTasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 13
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mBindingService:Z

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Waiting to bind to the service."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 15
    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPendingTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/play/core/remote/RemoteTask;->run()V

    :cond_4
    :goto_1
    return-void
.end method

.method public getIInterface()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mIInterface:Landroid/os/IInterface;

    return-object v0
.end method

.method public linkToDeath()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "linkToDeath"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mIInterface:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/play/core/remote/RemoteManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :catchall_0
    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "linkToDeath failed"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public post(Lcom/google/android/play/core/remote/RemoteTask;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/remote/RemoteManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportBinderDeath()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "reportBinderDeath"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2
    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mOnBinderDiedListenerWkRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/remote/OnBinderDiedListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "calling onBinderDied"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4
    invoke-interface {v0}, Lcom/google/android/play/core/remote/OnBinderDiedListener;->onBinderDied()V

    :cond_0
    return-void
.end method

.method public unbindService()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/play/core/remote/UnbindServiceTask;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/remote/UnbindServiceTask;-><init>(Lcom/google/android/play/core/remote/RemoteManager;)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/remote/RemoteManager;->post(Lcom/google/android/play/core/remote/RemoteTask;)V

    return-void
.end method

.method public unlinkToDeath()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "unlinkToDeath"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2
    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mIInterface:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/play/core/remote/RemoteManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
