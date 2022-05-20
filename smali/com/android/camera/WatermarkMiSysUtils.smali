.class public Lcom/android/camera/WatermarkMiSysUtils;
.super Ljava/lang/Object;
.source "WatermarkMiSysUtils.java"


# static fields
.field public static final CAMERA_FILE_DIR:Ljava/lang/String; = "/mnt/vendor/persist/camera/"

.field public static final TAG:Ljava/lang/String; = "WatermarkMiSysUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eraseFile(Ljava/lang/String;)I
    .locals 7

    const-string v0, "WatermarkMiSysUtils"

    const-string v1, "/mnt/vendor/persist/camera/"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/camera/MiSysProxy;->tryGet()Lcom/android/camera/MiSysProxy;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x0

    .line 3
    :try_start_1
    invoke-virtual {v2, v1, p0}, Lcom/android/camera/MiSysProxy;->IsExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isExist for iMiSys20.IsExists:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 5
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v4, :cond_1

    .line 6
    :try_start_2
    invoke-virtual {v2, v1, p0}, Lcom/android/camera/MiSysProxy;->EraseFileOrDirectory(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " eraseResult:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return v3
.end method

.method public static isFileExist(Ljava/lang/String;)I
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/camera/MiSysProxy;->tryGet()Lcom/android/camera/MiSysProxy;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const-string v1, "WatermarkMiSysUtils"

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get Misys Service. Don\'t know file:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is exist or not."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "/mnt/vendor/persist/camera/"

    .line 4
    invoke-virtual {v0, v3, p0}, Lcom/android/camera/MiSysProxy;->IsExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " isExist for iMiSys20.IsExists:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v2
.end method

.method public static writeFileToPersist([BLjava/lang/String;)Z
    .locals 8

    const-string v0, "WatermarkMiSysUtils"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/camera/MiSysProxy;->tryGet()Lcom/android/camera/MiSysProxy;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v2, v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    if-nez v2, :cond_0

    return v1

    .line 3
    :cond_0
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    array-length v3, p0

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_1

    aget-byte v6, p0, v4

    .line 5
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " byteData.size="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "/mnt/vendor/persist/camera/"

    .line 7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    int-to-long v6, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/MiSysProxy;->MiSysWriteBuffer(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;J)I

    move-result p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeResult for iMiSys20.MiSysWriteBuffer:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_1
    move-exception p0

    .line 9
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return v1
.end method
