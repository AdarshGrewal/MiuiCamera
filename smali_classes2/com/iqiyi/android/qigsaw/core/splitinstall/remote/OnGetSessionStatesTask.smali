.class public final Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnGetSessionStatesTask;
.super Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;
.source "OnGetSessionStatesTask.java"


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->getSessionStates(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V

    return-void
.end method

.method public onGetSessionStates(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;->onGetSessionStates(Ljava/util/List;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;->mCallback:Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;->onGetSessionStates(Ljava/util/List;)V
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
