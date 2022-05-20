.class public interface abstract Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;
.super Ljava/lang/Object;
.source "ISplitInstallServiceCallbackProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onCancelInstall(ILandroid/os/Bundle;)V
.end method

.method public abstract onCompleteInstall(I)V
.end method

.method public abstract onDeferredInstall(Landroid/os/Bundle;)V
.end method

.method public abstract onDeferredUninstall(Landroid/os/Bundle;)V
.end method

.method public abstract onError(Landroid/os/Bundle;)V
.end method

.method public abstract onGetSession(ILandroid/os/Bundle;)V
.end method

.method public abstract onGetSessionStates(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStartInstall(ILandroid/os/Bundle;)V
.end method
