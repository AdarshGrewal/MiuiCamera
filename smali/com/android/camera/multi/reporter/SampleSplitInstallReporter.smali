.class public Lcom/android/camera/multi/reporter/SampleSplitInstallReporter;
.super Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitInstallReporter;
.source "SampleSplitInstallReporter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SampleSplitInstallReporter"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitInstallReporter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDeferredInstallFailed(Ljava/util/List;Ljava/util/List;J)V
    .locals 0
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

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitInstallReporter;->onDeferredInstallFailed(Ljava/util/List;Ljava/util/List;J)V

    return-void
.end method

.method public onDeferredInstallOK(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitInstallReporter;->onDeferredInstallOK(Ljava/util/List;J)V

    return-void
.end method

.method public onStartInstallFailed(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;J)V
    .locals 0
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

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitInstallReporter;->onStartInstallFailed(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;J)V

    return-void
.end method

.method public onStartInstallOK(Ljava/util/List;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitInstallReporter;->onStartInstallOK(Ljava/util/List;J)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    .line 3
    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->getInstallFlag()I

    move-result p3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "SampleSplitInstallReporter"

    const/4 v3, 0x1

    if-ne p3, v0, :cond_1

    new-array p3, v3, [Ljava/lang/Object;

    .line 4
    iget-object p2, p2, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->splitName:Ljava/lang/String;

    aput-object p2, p3, v1

    const-string p2, "Split %s has been installed, don\'t need delivery this result"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->getInstallFlag()I

    move-result p3

    if-ne p3, v3, :cond_0

    new-array p3, v3, [Ljava/lang/Object;

    .line 6
    iget-object p2, p2, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->splitName:Ljava/lang/String;

    aput-object p2, p3, v1

    const-string p2, "Split %s is installed firstly, you can delivery this result"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method
