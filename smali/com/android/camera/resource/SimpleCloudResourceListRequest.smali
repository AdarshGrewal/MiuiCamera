.class public Lcom/android/camera/resource/SimpleCloudResourceListRequest;
.super Lcom/android/camera/resource/SimpleNetworkJsonRequest;
.source "SimpleCloudResourceListRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/resource/SimpleNetworkJsonRequest<",
        "Ljava/util/List<",
        "Lcom/android/camera/resource/BaseResourceCloudItem;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "https://i.mi.com/gallery/public/resource/info"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/resource/SimpleNetworkJsonRequest;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/resource/SimpleNetworkBaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic parseJson(Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/resource/BaseRequestException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/resource/SimpleCloudResourceListRequest;->parseJson(Lorg/json/JSONObject;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseJson(Lorg/json/JSONObject;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/android/camera/resource/BaseResourceCloudItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/camera/resource/BaseResourceCloudItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/resource/BaseRequestException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "data"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "galleryResourceInfoList"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/android/camera/resource/BaseResourceCloudItem;

    invoke-direct {v3}, Lcom/android/camera/resource/BaseResourceCloudItem;-><init>()V

    const-string v4, "key"

    .line 7
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/camera/resource/BaseResourceCloudItem;->keyOrID:Ljava/lang/String;

    const-string/jumbo v4, "size"

    .line 8
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/camera/resource/BaseResourceCloudItem;->size:J

    const-string v4, "icon"

    .line 9
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/camera/resource/BaseResourceCloudItem;->iconUrl:Ljava/lang/String;

    const-string v4, "id"

    .line 10
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/camera/resource/BaseResourceCloudItem;->requestDownloadId:J

    .line 11
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method
