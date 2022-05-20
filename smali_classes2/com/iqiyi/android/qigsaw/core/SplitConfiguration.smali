.class public Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;
.super Ljava/lang/Object;
.source "SplitConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    }
.end annotation


# instance fields
.field public final forbiddenWorkProcesses:[Ljava/lang/String;

.field public final installReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

.field public final loadReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

.field public final obtainUserConfirmationDialogClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;",
            ">;"
        }
    .end annotation
.end field

.field public final splitLoadMode:I

.field public final uninstallReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

.field public final updateReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

.field public final verifySignature:Z

.field public final workProcesses:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$100(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$200(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "forbiddenWorkProcesses and workProcesses can\'t be set at the same time, you should choose one of them."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$300(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->splitLoadMode:I

    .line 6
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$100(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->forbiddenWorkProcesses:[Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$400(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->installReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

    .line 8
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$500(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->loadReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

    .line 9
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$600(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->updateReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

    .line 10
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$700(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->uninstallReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

    .line 11
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$800(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->obtainUserConfirmationDialogClass:Ljava/lang/Class;

    .line 12
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$200(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->workProcesses:[Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->access$900(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->verifySignature:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;-><init>(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;-><init>(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$1;)V

    return-object v0
.end method
