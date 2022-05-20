.class public Lcom/android/camera/fragment/vv/VVListBiFunction;
.super Ljava/lang/Object;
.source "VVListBiFunction.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Ljava/util/List<",
        "Lcom/android/camera/resource/BaseResourceCloudItem;",
        ">;",
        "Lcom/android/camera/resource/BaseResourceRaw;",
        "Lcom/android/camera/fragment/vv/VVList;",
        ">;"
    }
.end annotation


# instance fields
.field public outputPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVListBiFunction;->outputPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/List;Lcom/android/camera/resource/BaseResourceRaw;)Lcom/android/camera/fragment/vv/VVList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/resource/BaseResourceCloudItem;",
            ">;",
            "Lcom/android/camera/resource/BaseResourceRaw;",
            ")",
            "Lcom/android/camera/fragment/vv/VVList;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/camera/fragment/vv/VVList;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/VVList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object p2, p2, Lcom/android/camera/resource/BaseResourceRaw;->content:Ljava/lang/String;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/vv/VVList;->parseInitialData(Lorg/json/JSONObject;)V

    .line 5
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/vv/VVList;->getItemJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v3, 0x0

    move v4, v3

    .line 6
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 7
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "placeholder"

    .line 8
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "id"

    .line 9
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/resource/BaseResourceCloudItem;

    .line 11
    iget-object v9, v8, Lcom/android/camera/resource/BaseResourceCloudItem;->keyOrID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v6, "uri"

    .line 12
    iget-wide v9, v8, Lcom/android/camera/resource/BaseResourceCloudItem;->requestDownloadId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "iconUrl"

    .line 13
    iget-object v7, v8, Lcom/android/camera/resource/BaseResourceCloudItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "data"

    .line 14
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 17
    array-length p2, p2

    .line 18
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/camera/fragment/vv/VVListBiFunction;->outputPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1, v3, p2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    .line 22
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    if-eqz v1, :cond_4

    .line 24
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p2

    .line 25
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :cond_4
    :goto_5
    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/android/camera/resource/BaseResourceRaw;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVListBiFunction;->apply(Ljava/util/List;Lcom/android/camera/resource/BaseResourceRaw;)Lcom/android/camera/fragment/vv/VVList;

    move-result-object p1

    return-object p1
.end method
