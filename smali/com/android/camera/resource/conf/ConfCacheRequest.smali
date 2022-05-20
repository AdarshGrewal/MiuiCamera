.class public Lcom/android/camera/resource/conf/ConfCacheRequest;
.super Lcom/android/camera/resource/SimpleLocalJsonCacheRequest;
.source "ConfCacheRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/resource/SimpleLocalJsonCacheRequest<",
        "Lcom/android/camera/data/cloud/DataCloudItemFeature;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/resource/SimpleLocalJsonCacheRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public isCacheValid(Lcom/android/camera/data/cloud/DataCloudItemFeature;)Z
    .locals 5

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache_info"

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/resource/SimpleLocalJsonCacheRequest;->getCacheFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p1}, Lcom/android/camera/data/cloud/DataCloudItemFeature;->getCacheExpireTime()J

    move-result-wide v0

    cmp-long p1, v3, v0

    if-lez p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic isCacheValid(Lcom/android/camera/resource/BaseResourceCacheable;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/data/cloud/DataCloudItemFeature;

    invoke-virtual {p0, p1}, Lcom/android/camera/resource/conf/ConfCacheRequest;->isCacheValid(Lcom/android/camera/data/cloud/DataCloudItemFeature;)Z

    move-result p1

    return p1
.end method

.method public processRestore(Lcom/android/camera/data/cloud/DataCloudItemFeature;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "cache_info"

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/resource/SimpleLocalJsonCacheRequest;->getCacheJsonString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v1}, Lcom/android/camera/data/cloud/DataCloudItemFeature;->parseJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic processRestore(Lcom/android/camera/resource/BaseResourceCacheable;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/data/cloud/DataCloudItemFeature;

    invoke-virtual {p0, p1}, Lcom/android/camera/resource/conf/ConfCacheRequest;->processRestore(Lcom/android/camera/data/cloud/DataCloudItemFeature;)V

    return-void
.end method
