.class public final Lcom/google/android/play/core/remote/ServiceDisconnectedTask;
.super Lcom/google/android/play/core/remote/RemoteTask;
.source "ServiceDisconnectedTask.java"


# instance fields
.field public final mServiceConnection:Lcom/google/android/play/core/remote/ServiceConnectionImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/remote/ServiceConnectionImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/remote/RemoteTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/play/core/remote/ServiceDisconnectedTask;->mServiceConnection:Lcom/google/android/play/core/remote/ServiceConnectionImpl;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/remote/ServiceDisconnectedTask;->mServiceConnection:Lcom/google/android/play/core/remote/ServiceConnectionImpl;

    iget-object v0, v0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {v0}, Lcom/google/android/play/core/remote/RemoteManager;->unlinkToDeath()V

    .line 2
    iget-object v0, p0, Lcom/google/android/play/core/remote/ServiceDisconnectedTask;->mServiceConnection:Lcom/google/android/play/core/remote/ServiceConnectionImpl;

    iget-object v0, v0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/play/core/remote/RemoteManager;->mIInterface:Landroid/os/IInterface;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/google/android/play/core/remote/RemoteManager;->mBindingService:Z

    return-void
.end method
