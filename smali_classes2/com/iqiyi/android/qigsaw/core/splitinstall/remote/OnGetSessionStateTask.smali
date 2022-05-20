.class public Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnGetSessionStateTask;
.super Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;
.source "OnGetSessionStateTask.java"


# instance fields
.field public final mSessionId:I


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V

    .line 2
    iput p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnGetSessionStateTask;->mSessionId:I

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
    iget v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnGetSessionStateTask;->mSessionId:I

    invoke-virtual {p1, v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->getSessionState(ILcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V

    return-void
.end method

.method public onGetSession(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;->onGetSession(ILandroid/os/Bundle;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/DefaultTask;->mCallback:Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;

    invoke-interface {v0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;->onGetSession(ILandroid/os/Bundle;)V
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
