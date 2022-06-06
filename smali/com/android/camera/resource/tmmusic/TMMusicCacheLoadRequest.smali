.class public Lcom/android/camera/resource/tmmusic/TMMusicCacheLoadRequest;
.super Lcom/android/camera/resource/SimpleLocalJsonCacheRequest;
.source "TMMusicCacheLoadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/resource/SimpleLocalJsonCacheRequest<",
        "Lcom/android/camera/resource/tmmusic/TMMusicList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/resource/SimpleLocalJsonCacheRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic isCacheValid(Lcom/android/camera/resource/BaseResourceCacheable;)Z
    .locals 0

    check-cast p1, Lcom/android/camera/resource/tmmusic/TMMusicList;

    invoke-virtual {p0, p1}, Lcom/android/camera/resource/tmmusic/TMMusicCacheLoadRequest;->isCacheValid(Lcom/android/camera/resource/tmmusic/TMMusicList;)Z

    move-result p1

    return p1
.end method

.method public isCacheValid(Lcom/android/camera/resource/tmmusic/TMMusicList;)Z
    .locals 6

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tt_initial"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/resource/SimpleLocalJsonCacheRequest;->getCacheFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "tt_list"

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/resource/SimpleLocalJsonCacheRequest;->getCacheFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p1}, Lcom/android/camera/resource/tmmusic/TMMusicList;->getCacheExpireTime()J

    move-result-wide v0

    cmp-long p1, v4, v0

    if-lez p1, :cond_1

    return v3

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v3
.end method

.method public bridge synthetic processRestore(Lcom/android/camera/resource/BaseResourceCacheable;)V
    .locals 0

    check-cast p1, Lcom/android/camera/resource/tmmusic/TMMusicList;

    invoke-virtual {p0, p1}, Lcom/android/camera/resource/tmmusic/TMMusicCacheLoadRequest;->processRestore(Lcom/android/camera/resource/tmmusic/TMMusicList;)V

    return-void
.end method

.method public processRestore(Lcom/android/camera/resource/tmmusic/TMMusicList;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string/jumbo v2, "tt_initial"

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/resource/SimpleLocalJsonCacheRequest;->getCacheJsonString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/resource/tmmusic/TMMusicList;->parseInitialData(Lorg/json/JSONObject;)V

    new-instance v1, Lorg/json/JSONObject;

    const-string/jumbo v2, "tt_list"

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/resource/SimpleLocalJsonCacheRequest;->getCacheJsonString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/resource/BaseResourceList;->createResourcesList(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
