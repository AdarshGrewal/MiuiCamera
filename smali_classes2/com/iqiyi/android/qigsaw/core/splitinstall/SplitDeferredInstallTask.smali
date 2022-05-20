.class public final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDeferredInstallTask;
.super Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;
.source "SplitDeferredInstallTask.java"


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;",
            "Ljava/util/Collection<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public isStartInstallOperation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
