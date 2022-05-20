.class public final Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnDeferredInstallTask;
.super Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;
.source "OnDeferredInstallTask.java"


# instance fields
.field public final mModuleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V

    .line 2
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnDeferredInstallTask;->mModuleNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public execute(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnDeferredInstallTask;->mModuleNames:Ljava/util/List;

    invoke-virtual {p1, v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->deferredInstall(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V

    return-void
.end method

.method public onDeferredInstall(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;->onDeferredInstall(Landroid/os/Bundle;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;->mCallback:Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;->onDeferredInstall(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
