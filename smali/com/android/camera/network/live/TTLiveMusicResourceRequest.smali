.class public Lcom/android/camera/network/live/TTLiveMusicResourceRequest;
.super Lcom/android/camera/network/live/BaseJsonRequest;
.source "TTLiveMusicResourceRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/network/live/BaseJsonRequest<",
        "Ljava/util/List<",
        "Lcom/android/camera/fragment/music/LiveMusicInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final BASE_URL:Ljava/lang/String; = "https://third-api.amemv.com/aweme/v1/third/hot/music/"


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v0, "https://third-api.amemv.com/aweme/v1/third/hot/music/"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/network/live/BaseJsonRequest;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x64

    .line 4
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v3, v2

    .line 5
    invoke-static {v3, v4, v0, v1}, Lcom/android/camera/network/live/Util;->md5(JJ)Ljava/lang/String;

    move-result-object v3

    const-string v4, "aid"

    const-string v5, "2"

    .line 6
    invoke-virtual {p0, v4, v5}, Lcom/android/camera/network/live/BaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "randnum"

    invoke-virtual {p0, v4, v2}, Lcom/android/camera/network/live/BaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "time"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/network/live/BaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "generate"

    .line 9
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/network/live/BaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public loadFromCache()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/music/LiveMusicInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/network/live/BaseRequestException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getTTLiveMusicJsonCache()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromCache = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseRequest"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/network/live/TTLiveMusicResourceRequest;->processJson(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Lcom/android/camera/network/live/BaseRequestException;

    sget-object v2, Lcom/android/camera/network/net/base/ErrorCode;->PARSE_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/camera/network/live/BaseRequestException;-><init>(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic processJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/network/live/BaseRequestException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/network/live/TTLiveMusicResourceRequest;->processJson(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public processJson(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/music/LiveMusicInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/network/live/BaseRequestException;,
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-string/jumbo v0, "status_code"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "music_list"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setTTLiveMusicJsonCache(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 10
    new-instance v2, Lcom/android/camera/fragment/music/LiveMusicInfo;

    invoke-direct {v2}, Lcom/android/camera/fragment/music/LiveMusicInfo;-><init>()V

    .line 11
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "duration"

    .line 12
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/camera/fragment/music/LiveMusicInfo;->mDurationText:Ljava/lang/String;

    const-string/jumbo v4, "play_url"

    .line 13
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "uri"

    .line 14
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    const-string v4, "cover_thumb"

    .line 15
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 16
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/camera/fragment/music/LiveMusicInfo;->mThumbnailUrl:Ljava/lang/String;

    const-string v4, "author"

    .line 17
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/camera/fragment/music/LiveMusicInfo;->mAuthor:Ljava/lang/String;

    const-string/jumbo v4, "title"

    .line 18
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    const/16 v5, 0x7c

    .line 19
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/fragment/music/LiveMusicInfo;->mTitle:Ljava/lang/String;

    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 21
    :cond_1
    new-instance p1, Lcom/android/camera/network/live/BaseRequestException;

    sget-object v0, Lcom/android/camera/network/net/base/ErrorCode;->BODY_EMPTY:Lcom/android/camera/network/net/base/ErrorCode;

    const-string/jumbo v1, "response empty data"

    invoke-direct {p1, v0, v1}, Lcom/android/camera/network/live/BaseRequestException;-><init>(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string v0, "msg"

    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance v0, Lcom/android/camera/network/live/BaseRequestException;

    sget-object v1, Lcom/android/camera/network/net/base/ErrorCode;->SERVER_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/network/live/BaseRequestException;-><init>(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_3
    new-instance p1, Lcom/android/camera/network/live/BaseRequestException;

    sget-object v0, Lcom/android/camera/network/net/base/ErrorCode;->PARSE_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    const-string/jumbo v1, "response has no status_code"

    invoke-direct {p1, v0, v1}, Lcom/android/camera/network/live/BaseRequestException;-><init>(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;)V

    throw p1
.end method
