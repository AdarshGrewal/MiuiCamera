.class public final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstallerImpl;
.super Ljava/lang/Object;
.source "SplitSessionInstallerImpl.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstaller;


# instance fields
.field public final executor:Ljava/util/concurrent/Executor;

.field public final sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

.field public final splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstallerImpl;->splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    .line 3
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstallerImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    .line 4
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstallerImpl;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public install(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstallerImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstallerImpl;->splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitSessionInstallerImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-direct {v1, p1, v2, v3, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;-><init>(ILcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
