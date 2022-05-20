.class public abstract Lcom/android/camera/resource/SimpleLocalJsonCacheRequest;
.super Lcom/android/camera/resource/BaseObservableRequest;
.source "SimpleLocalJsonCacheRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/camera/resource/BaseResourceCacheable;",
        ">",
        "Lcom/android/camera/resource/BaseObservableRequest<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/resource/BaseObservableRequest;-><init>()V

    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string p1, "\\A"

    invoke-virtual {v0, p1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getCacheFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCacheJsonString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/resource/SimpleLocalJsonCacheRequest;->getCacheFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 3
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/camera/resource/SimpleLocalJsonCacheRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object p2, v0

    .line 7
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_0

    .line 8
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_2
    if-eqz v0, :cond_1

    .line 10
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p2

    .line 11
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 12
    :cond_1
    :goto_3
    throw p1

    :cond_2
    :goto_4
    return-object v0
.end method

.method public abstract isCacheValid(Lcom/android/camera/resource/BaseResourceCacheable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract processRestore(Lcom/android/camera/resource/BaseResourceCacheable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public scheduleRequest(Lcom/android/camera/resource/ResponseListener;Lcom/android/camera/resource/BaseResourceCacheable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/resource/ResponseListener<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/camera/resource/SimpleLocalJsonCacheRequest;->isCacheValid(Lcom/android/camera/resource/BaseResourceCacheable;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, v2, v1}, Lcom/android/camera/resource/ResponseListener;->onResponse(Ljava/lang/Object;Z)V

    :cond_0
    return-void

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/camera/resource/SimpleLocalJsonCacheRequest;->processRestore(Lcom/android/camera/resource/BaseResourceCacheable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, p2, v0}, Lcom/android/camera/resource/ResponseListener;->onResponse(Ljava/lang/Object;Z)V

    return-void

    :catch_0
    move-exception p2

    .line 6
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    invoke-interface {p1, v2, v1}, Lcom/android/camera/resource/ResponseListener;->onResponse(Ljava/lang/Object;Z)V

    return-void
.end method

.method public bridge synthetic scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/resource/BaseResourceCacheable;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/resource/SimpleLocalJsonCacheRequest;->scheduleRequest(Lcom/android/camera/resource/ResponseListener;Lcom/android/camera/resource/BaseResourceCacheable;)V

    return-void
.end method
