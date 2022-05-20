.class public Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUninstallReporter;
.super Ljava/lang/Object;
.source "DefaultSplitUninstallReporter.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;


# static fields
.field public static final TAG:Ljava/lang/String; = "SplitUninstallReporter"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUninstallReporter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onSplitUninstallOK(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "SplitUninstallReporter"

    const-string p2, "Succeed to uninstall %s, cost time %d ms."

    invoke-static {p1, p2, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
