.class public Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService$1;
.super Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService$Stub;
.source "SplitInstallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelInstall(Ljava/lang/String;ILandroid/os/Bundle;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnCancelInstallTask;

    invoke-direct {p3, p4, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnCancelInstallTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;I)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deferredInstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnDeferredInstallTask;

    invoke-direct {p3, p4, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnDeferredInstallTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;Ljava/util/List;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deferredUninstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnDeferredUninstallTask;

    invoke-direct {p3, p4, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnDeferredUninstallTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;Ljava/util/List;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getSessionState(Ljava/lang/String;ILcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnGetSessionStateTask;

    invoke-direct {v0, p3, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnGetSessionStateTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getSessionStates(Ljava/lang/String;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnGetSessionStatesTask;

    invoke-direct {v0, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnGetSessionStatesTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startInstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallService;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnStartInstallTask;

    invoke-direct {p3, p4, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/OnStartInstallTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/protocol/ISplitInstallServiceCallback;Ljava/util/List;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
