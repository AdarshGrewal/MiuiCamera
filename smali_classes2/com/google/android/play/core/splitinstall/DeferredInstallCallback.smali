.class public final Lcom/google/android/play/core/splitinstall/DeferredInstallCallback;
.super Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;
.source "DeferredInstallCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/splitinstall/SplitInstallService;",
            "Lcom/google/android/play/core/tasks/TaskWrapper<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    return-void
.end method


# virtual methods
.method public onDeferredInstall(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->onDeferredInstall(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->setResult(Ljava/lang/Object;)Z

    return-void
.end method
