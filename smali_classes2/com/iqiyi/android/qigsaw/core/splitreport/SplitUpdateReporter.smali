.class public interface abstract Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;
.super Ljava/lang/Object;
.source "SplitUpdateReporter.java"


# virtual methods
.method public abstract onNewSplitInfoVersionLoaded(Ljava/lang/String;)V
.end method

.method public abstract onUpdateFailed(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onUpdateOK(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
