.class public final Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitStartUninstallTask;
.super Ljava/lang/Object;
.source "SplitStartUninstallTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "SplitStartUninstallTask"


# instance fields
.field public final uninstallSplits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitStartUninstallTask;->uninstallSplits:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitStartUninstallTask;->uninstallSplits:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitStartUninstallTask;->uninstallSplits:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "SplitStartUninstallTask"

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    new-array v6, v6, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v5

    const-string v5, "split %s need to be uninstalled, try to delete its files"

    invoke-static {v7, v5, v6}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitRootDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v5

    .line 6
    invoke-static {v5}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteDir(Ljava/io/File;)Z

    .line 7
    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitUninstallReporterManager;->getUninstallReporter()Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-interface {v3, v2, v8, v9}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;->onSplitUninstallOK(Ljava/util/List;J)V

    .line 10
    :cond_1
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;

    invoke-direct {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;-><init>()V

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->deletePendingUninstallSplitsRecord()Z

    move-result v0

    new-array v1, v6, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    const-string v0, "Succeed"

    goto :goto_1

    :cond_2
    const-string v0, "Failed"

    :goto_1
    aput-object v0, v1, v5

    const-string v0, "%s to delete record file of pending uninstall splits!"

    .line 11
    invoke-static {v7, v0, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
