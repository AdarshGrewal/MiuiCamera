.class public Lcom/android/camera/resource/tmmusic/TMMusicList;
.super Lcom/android/camera/resource/BaseResourceList;
.source "TMMusicList.java"

# interfaces
.implements Lcom/android/camera/resource/BaseResourceCacheable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/resource/BaseResourceList<",
        "Lcom/android/camera/resource/tmmusic/TMMusicItem;",
        ">;",
        "Lcom/android/camera/resource/BaseResourceCacheable;"
    }
.end annotation


# static fields
.field public static final CACHE_INITIAL:Ljava/lang/String; = "tt_initial"

.field public static final CACHE_LIST:Ljava/lang/String; = "tt_list"

.field public static final TYPE:I = 0x2


# instance fields
.field public categoryID:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/resource/BaseResourceList;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheExpireTime()J
    .locals 2

    const-wide/32 v0, 0x5265c0

    return-wide v0
.end method

.method public getCategoryID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/resource/tmmusic/TMMusicList;->categoryID:Ljava/lang/String;

    return-object v0
.end method

.method public getItemJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1

    const-string/jumbo v0, "stationItems"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public getLocalVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getResourceType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public parseInitialData(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "stations"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "categoryID"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/resource/tmmusic/TMMusicList;->categoryID:Ljava/lang/String;

    const-string v0, "name"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/resource/tmmusic/TMMusicList;->name:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/resource/BaseResourceItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/resource/tmmusic/TMMusicList;->parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/resource/tmmusic/TMMusicItem;

    move-result-object p1

    return-object p1
.end method

.method public parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/resource/tmmusic/TMMusicItem;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/camera/resource/tmmusic/TMMusicItem;

    invoke-direct {v0}, Lcom/android/camera/resource/tmmusic/TMMusicItem;-><init>()V

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/resource/tmmusic/TMMusicItem;->parseSummaryData(Lorg/json/JSONObject;I)V

    return-object v0
.end method

.method public setLocalVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
