.class public Lcom/google/android/play/core/splitinstall/SplitInstallRequest;
.super Ljava/lang/Object;
.source "SplitInstallRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;
    }
.end annotation


# instance fields
.field public final moduleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;->access$100(Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->moduleNames:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;Lcom/google/android/play/core/splitinstall/SplitInstallRequest$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest$Builder;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallRequest$1;)V

    return-object v0
.end method


# virtual methods
.method public getModuleNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->moduleNames:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->moduleNames:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SplitInstallRequest{modulesNames="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
