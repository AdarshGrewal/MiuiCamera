.class public Lcom/android/camera/resource/conf/ConfLoadRequest;
.super Lcom/android/camera/resource/SimpleNetworkJsonRequest;
.source "ConfLoadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/resource/SimpleNetworkJsonRequest<",
        "Lcom/android/camera/data/cloud/DataCloudItemFeature;",
        ">;"
    }
.end annotation


# static fields
.field public static final PARENT_ID:Ljava/lang/String; = "13641940998946848"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "https://i.mi.com/gallery/public/resource/info"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/resource/SimpleNetworkJsonRequest;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    const-string v1, "13641940998946848"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/resource/SimpleNetworkBaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;Lcom/android/camera/data/cloud/DataCloudItemFeature;)Lcom/android/camera/data/cloud/DataCloudItemFeature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "data"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "galleryResourceInfoList"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "extraInfo"

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cache_info"

    .line 7
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/camera/resource/BaseObservableRequest;->writeToCache(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/android/camera/data/cloud/DataCloudItemFeature;->parseJson(Lorg/json/JSONObject;)V

    return-object p2
.end method

.method public bridge synthetic parseJson(Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/resource/BaseRequestException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/android/camera/data/cloud/DataCloudItemFeature;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/resource/conf/ConfLoadRequest;->parseJson(Lorg/json/JSONObject;Lcom/android/camera/data/cloud/DataCloudItemFeature;)Lcom/android/camera/data/cloud/DataCloudItemFeature;

    move-result-object p1

    return-object p1
.end method
