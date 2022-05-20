.class public Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
.super Ljava/lang/Object;
.source "SplitConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public forbiddenWorkProcesses:[Ljava/lang/String;

.field public installReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

.field public loadReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

.field public obtainUserConfirmationDialogClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;",
            ">;"
        }
    .end annotation
.end field

.field public splitLoadMode:I

.field public uninstallReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

.field public updateReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

.field public verifySignature:Z

.field public workProcesses:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->splitLoadMode:I

    .line 4
    iput-boolean v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->verifySignature:Z

    .line 5
    const-class v0, Lcom/iqiyi/android/qigsaw/core/DefaultObtainUserConfirmationDialog;

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->obtainUserConfirmationDialogClass:Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->forbiddenWorkProcesses:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->workProcesses:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->splitLoadMode:I

    return p0
.end method

.method public static synthetic access$400(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->installReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->loadReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->updateReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->uninstallReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->obtainUserConfirmationDialogClass:Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->verifySignature:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;
    .locals 2

    .line 1
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;-><init>(Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$1;)V

    return-object v0
.end method

.method public forbiddenWorkProcesses([Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 1

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->forbiddenWorkProcesses:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public installReporter(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->installReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

    return-object p0
.end method

.method public loadReporter(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->loadReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

    return-object p0
.end method

.method public logger(Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->setSplitLogImp(Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;)V

    return-object p0
.end method

.method public obtainUserConfirmationDialogClass(Ljava/lang/Class;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;",
            ">;)",
            "Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->obtainUserConfirmationDialogClass:Ljava/lang/Class;

    return-object p0
.end method

.method public splitLoadMode(I)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->splitLoadMode:I

    return-object p0
.end method

.method public uninstallReporter(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->uninstallReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

    return-object p0
.end method

.method public updateReporter(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->updateReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

    return-object p0
.end method

.method public verifySignature(Z)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->verifySignature:Z

    return-object p0
.end method

.method public workProcesses([Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;
    .locals 1

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->workProcesses:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method
