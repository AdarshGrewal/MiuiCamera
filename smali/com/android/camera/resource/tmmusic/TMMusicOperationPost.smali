.class public Lcom/android/camera/resource/tmmusic/TMMusicOperationPost;
.super Lcom/android/camera/resource/SimpleNetworkJsonRequest;
.source "TMMusicOperationPost.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/resource/SimpleNetworkJsonRequest<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "RM"

.field public static final BASE_URL:Ljava/lang/String; = "https://statist.tingmall.com/tango-statist/report/wmReportSongs"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-string v0, "https://statist.tingmall.com/tango-statist/report/wmReportSongs"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/resource/SimpleNetworkJsonRequest;-><init>(Ljava/lang/String;)V

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

    int-to-long v2, v2

    .line 5
    invoke-static {v2, v3, v0, v1}, Lcom/android/camera/resource/RequestHelper;->md5(JJ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->getTMMusicAccessKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RM"

    .line 8
    invoke-static {v2, v0, v1}, Lcom/android/camera/resource/AESUtils;->getEncryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "oauth_token"

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/resource/SimpleNetworkBaseRequest;->addHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/resource/tmmusic/DataZipUtil;->compress([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/resource/tmmusic/TangoCompressTests;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "reportData"

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/resource/SimpleNetworkBaseRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public generatePostBody()Lokhttp3/RequestBody;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    return-object v0
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
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/resource/tmmusic/TMMusicOperationPost;->parseJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/resource/BaseRequestException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p1, ""

    return-object p1
.end method
