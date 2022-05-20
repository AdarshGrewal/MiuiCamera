.class public Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitLoadReporter;
.super Ljava/lang/Object;
.source "DefaultSplitLoadReporter.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;


# static fields
.field public static final TAG:Ljava/lang/String; = "SplitLoadReporter"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitLoadReporter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/String;Ljava/util/List;Ljava/util/List;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;

    .line 2
    iget-object v0, p3, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;->cause:Ljava/lang/Throwable;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p3, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->splitName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    .line 3
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget p3, p3, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;->errorCode:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v2

    const-string p3, "SplitLoadReporter"

    const-string v2, "Failed to load split %s in process %s cost %d ms, error code: %d!"

    .line 4
    invoke-static {p3, v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLoadOK(Ljava/lang/String;Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;J)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "SplitLoadReporter"

    const-string p2, "Success to load %s in process %s cost %d ms!"

    invoke-static {p1, p2, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
