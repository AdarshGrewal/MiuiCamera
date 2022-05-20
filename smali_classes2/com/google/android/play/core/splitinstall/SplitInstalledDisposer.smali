.class public final Lcom/google/android/play/core/splitinstall/SplitInstalledDisposer;
.super Ljava/lang/Object;
.source "SplitInstalledDisposer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;

.field public final splitInstallRequest:Lcom/google/android/play/core/splitinstall/SplitInstallRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstalledDisposer;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;

    .line 3
    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstalledDisposer;->splitInstallRequest:Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    return-void
.end method

.method private makeInstalledSessionState([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "status"

    const/4 v3, 0x5

    .line 2
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "error_code"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "module_names"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-wide/16 v1, 0x0

    const-string p1, "total_bytes_to_download"

    .line 5
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "bytes_downloaded"

    .line 6
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstalledDisposer;->splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->getRegistry()Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstalledDisposer;->splitInstallRequest:Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->getModuleNames()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstalledDisposer;->makeInstalledSessionState([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->createFrom(Landroid/os/Bundle;)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->notifyListeners(Ljava/lang/Object;)V

    return-void
.end method
