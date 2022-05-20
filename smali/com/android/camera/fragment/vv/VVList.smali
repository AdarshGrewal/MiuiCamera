.class public Lcom/android/camera/fragment/vv/VVList;
.super Lcom/android/camera/resource/BaseResourceList;
.source "VVList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/resource/BaseResourceList<",
        "Lcom/android/camera/fragment/vv/VVItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE:I = 0x1


# instance fields
.field public country:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/resource/BaseResourceList;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1

    const-string v0, "data"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public getLocalVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResourceType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parseInitialData(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "version"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/resource/BaseResourceList;->version:Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVList;->country:Ljava/lang/String;

    return-void
.end method

.method public parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/fragment/vv/VVItem;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/camera/fragment/vv/VVItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/VVItem;-><init>()V

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/vv/VVItem;->parseSummaryData(Lorg/json/JSONObject;I)V

    .line 4
    iget-boolean p1, v0, Lcom/android/camera/fragment/vv/VVItem;->isValid:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public bridge synthetic parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/resource/BaseResourceItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVList;->parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/fragment/vv/VVItem;

    move-result-object p1

    return-object p1
.end method

.method public setLocalVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/resource/BaseResourceList;->departed:Z

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public stateAllReady()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/resource/BaseResourceList;->getResourceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/vv/VVItem;

    .line 2
    invoke-virtual {v1}, Lcom/android/camera/fragment/vv/VVItem;->isCloudItem()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
