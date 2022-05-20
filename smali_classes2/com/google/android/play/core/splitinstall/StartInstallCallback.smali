.class public final Lcom/google/android/play/core/splitinstall/StartInstallCallback;
.super Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;
.source "StartInstallCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl<",
        "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    return-void
.end method


# virtual methods
.method public onStartInstall(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->onStartInstall(ILandroid/os/Bundle;)V

    .line 2
    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/play/core/tasks/TaskWrapper;->setResult(Ljava/lang/Object;)Z

    return-void
.end method
