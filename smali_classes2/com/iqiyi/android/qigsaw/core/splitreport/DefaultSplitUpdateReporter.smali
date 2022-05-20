.class public Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUpdateReporter;
.super Ljava/lang/Object;
.source "DefaultSplitUpdateReporter.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;


# static fields
.field public static final TAG:Ljava/lang/String; = "SplitUpdateReporter"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUpdateReporter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onNewSplitInfoVersionLoaded(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "SplitUpdateReporter"

    const-string v1, "Success to load new split info version "

    .line 1
    invoke-static {p1, v1, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "SplitUpdateReporter"

    const-string p2, "Failed to update version from %s to %s, errorCode %d."

    invoke-static {p1, p2, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateOK(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "SplitUpdateReporter"

    const-string p2, "Success to update version from %s to %s, update splits: %s."

    invoke-static {p1, p2, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
