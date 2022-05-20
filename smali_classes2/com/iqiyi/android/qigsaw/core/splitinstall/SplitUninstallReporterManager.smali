.class public Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitUninstallReporterManager;
.super Ljava/lang/Object;
.source "SplitUninstallReporterManager.java"


# static fields
.field public static final sUninstallReporterRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitUninstallReporterManager;->sUninstallReporterRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUninstallReporter()Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;
    .locals 1

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitUninstallReporterManager;->sUninstallReporterRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

    return-object v0
.end method

.method public static install(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitUninstallReporterManager;->sUninstallReporterRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
