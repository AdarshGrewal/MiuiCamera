.class public final Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;
.super Ljava/lang/Object;
.source "SplitDetails.java"


# instance fields
.field public final abiFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final appVersionName:Ljava/lang/String;

.field public final qigsawId:Ljava/lang/String;

.field public final splitEntryFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final splitInfoListing:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

.field public final updateSplits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->qigsawId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->appVersionName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->abiFilters:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->updateSplits:Ljava/util/List;

    .line 6
    iput-object p5, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->splitEntryFragments:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->splitInfoListing:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

    return-void
.end method


# virtual methods
.method public getAbiFilters()Ljava/util/List;
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
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->abiFilters:Ljava/util/List;

    return-object v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getQigsawId()Ljava/lang/String;
    .locals 1

    const-string v0, "5.0.0.0"

    return-object v0
.end method

.method public getSplitEntryFragments()Ljava/util/List;
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
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->splitEntryFragments:Ljava/util/List;

    return-object v0
.end method

.method public getSplitInfoListing()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->splitInfoListing:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

    return-object v0
.end method

.method public getUpdateSplits()Ljava/util/List;
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
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->updateSplits:Ljava/util/List;

    return-object v0
.end method

.method public verifySplitInfoListing()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->splitInfoListing:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;->getSplitInfoMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 3
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->splitInfoListing:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

    invoke-virtual {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;->getSplitInfoMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 5
    invoke-virtual {v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    return v1
.end method
