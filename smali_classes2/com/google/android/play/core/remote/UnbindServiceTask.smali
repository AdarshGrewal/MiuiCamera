.class public final Lcom/google/android/play/core/remote/UnbindServiceTask;
.super Lcom/google/android/play/core/remote/RemoteTask;
.source "UnbindServiceTask.java"


# instance fields
.field public final mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/remote/RemoteManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/remote/RemoteTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/play/core/remote/UnbindServiceTask;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/remote/UnbindServiceTask;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    iget-object v1, v0, Lcom/google/android/play/core/remote/RemoteManager;->mIInterface:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/play/core/remote/RemoteManager;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/play/core/remote/RemoteManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/play/core/remote/UnbindServiceTask;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/play/core/remote/RemoteManager;->mBindingService:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/google/android/play/core/remote/RemoteManager;->mIInterface:Landroid/os/IInterface;

    .line 5
    iput-object v1, v0, Lcom/google/android/play/core/remote/RemoteManager;->mServiceConnection:Landroid/content/ServiceConnection;

    :cond_0
    return-void
.end method
