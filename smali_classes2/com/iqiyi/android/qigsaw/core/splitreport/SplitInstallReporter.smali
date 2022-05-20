.class public interface abstract Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;
.super Ljava/lang/Object;
.source "SplitInstallReporter.java"


# virtual methods
.method public abstract onDeferredInstallFailed(Ljava/util/List;Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract onDeferredInstallOK(Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract onStartInstallFailed(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;",
            "J)V"
        }
    .end annotation
.end method

.method public abstract onStartInstallOK(Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;J)V"
        }
    .end annotation
.end method
