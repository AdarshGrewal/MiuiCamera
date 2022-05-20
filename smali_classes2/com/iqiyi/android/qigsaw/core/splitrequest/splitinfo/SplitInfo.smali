.class public Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;
.super Ljava/lang/Object;
.source "SplitInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;
    }
.end annotation


# instance fields
.field public final appVersion:Ljava/lang/String;

.field public final builtIn:Z

.field public final dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final dexNumber:I

.field public final hasLibs:Z

.field public final isMultiDex:Z

.field public final md5:Ljava/lang/String;

.field public final minSdkVersion:I

.field public final primaryLibInfo:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;

.field public final size:J

.field public final splitName:Ljava/lang/String;

.field public final splitVersion:Ljava/lang/String;

.field public final url:Ljava/lang/String;

.field public final workProcesses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIILjava/util/List;Ljava/util/List;ZLcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->splitName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->appVersion:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->splitVersion:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->url:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->md5:Ljava/lang/String;

    .line 7
    iput-wide p6, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->size:J

    .line 8
    iput-boolean p8, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->builtIn:Z

    .line 9
    iput p9, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->minSdkVersion:I

    .line 10
    iput p10, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->dexNumber:I

    .line 11
    iput-object p11, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->workProcesses:Ljava/util/List;

    .line 12
    iput-object p12, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->dependencies:Ljava/util/List;

    .line 13
    iput-boolean p13, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->hasLibs:Z

    .line 14
    iput-object p14, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryLibInfo:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;

    const/4 p1, 0x1

    if-le p10, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iput-boolean p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isMultiDex:Z

    return-void
.end method

.method private checkLibInfo()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryLibInfo:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;->access$000(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryLibInfo:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;

    .line 2
    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;->access$000(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryLibInfo:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;->access$100(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryLibInfo:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;->access$000(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;

    .line 5
    invoke-static {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;->access$200(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6
    invoke-static {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;->access$300(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;->access$200(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-static {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;->access$200(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    :goto_0
    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDependencies()Ljava/util/List;
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
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->dependencies:Ljava/util/List;

    return-object v0
.end method

.method public getLibInfo()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->hasLibs:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryLibInfo:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No supported abi for split "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->primaryLibInfo:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getMinSdkVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->minSdkVersion:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->size:J

    return-wide v0
.end method

.method public getSplitName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->splitName:Ljava/lang/String;

    return-object v0
.end method

.method public getSplitVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->splitVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkProcesses()Ljava/util/List;
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
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->workProcesses:Ljava/util/List;

    return-object v0
.end method

.method public hasDex()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->dexNumber:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLibs()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->hasLibs:Z

    return v0
.end method

.method public isBuiltIn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->builtIn:Z

    return v0
.end method

.method public isMultiDex()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isMultiDex:Z

    return v0
.end method

.method public isValid()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->checkLibInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->splitName:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
