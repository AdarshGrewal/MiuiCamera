.class public Lcom/android/camera/multi/PluginInfoRequest;
.super Lcom/android/camera/resource/SimpleNetworkJsonRequest;
.source "PluginInfoRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/resource/SimpleNetworkJsonRequest<",
        "Lcom/android/camera/multi/PluginInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public resourceItem:Lcom/android/camera/resource/BaseResourceItem;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "https://i.mi.com/gallery/public/resource/download"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/resource/SimpleNetworkJsonRequest;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/resource/SimpleNetworkBaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/camera/resource/BaseResourceItem;)V
    .locals 1

    const-string v0, "https://i.mi.com/gallery/public/resource/download"

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/resource/SimpleNetworkJsonRequest;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/resource/SimpleNetworkBaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object p2, p0, Lcom/android/camera/multi/PluginInfoRequest;->resourceItem:Lcom/android/camera/resource/BaseResourceItem;

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;Lcom/android/camera/multi/PluginInfo;)Lcom/android/camera/multi/PluginInfo;
    .locals 1
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

    const-string/jumbo v0, "sha1Base16"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/camera/multi/PluginInfo;->sha1Base16:Ljava/lang/String;

    const-string/jumbo v0, "url"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/camera/multi/PluginInfo;->url:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/android/camera/multi/PluginInfoRequest;->resourceItem:Lcom/android/camera/resource/BaseResourceItem;

    iput-object p1, p2, Lcom/android/camera/multi/PluginInfo;->resourceItem:Lcom/android/camera/resource/BaseResourceItem;

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
    check-cast p2, Lcom/android/camera/multi/PluginInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/multi/PluginInfoRequest;->parseJson(Lorg/json/JSONObject;Lcom/android/camera/multi/PluginInfo;)Lcom/android/camera/multi/PluginInfo;

    move-result-object p1

    return-object p1
.end method
