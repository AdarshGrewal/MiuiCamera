.class public Lcom/android/camera/network/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFileIfNeed(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_a

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p0, :cond_3

    if-eqz p0, :cond_2

    .line 10
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return v1

    .line 12
    :cond_3
    :try_start_2
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v0, 0x1000

    :try_start_3
    new-array v0, v0, [B

    .line 13
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_4

    .line 14
    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 16
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_5

    .line 17
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 19
    :cond_5
    :goto_2
    :try_start_5
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_a

    :catch_2
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_3
    move-object v0, p0

    move-object p0, p1

    goto :goto_7

    :catch_3
    move-object p2, v0

    :catch_4
    move-object v0, p0

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object p2, v0

    goto :goto_7

    :catch_5
    move-object p2, v0

    .line 21
    :goto_4
    :try_start_6
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v0, :cond_6

    .line 22
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_5
    if-eqz p2, :cond_7

    .line 24
    :try_start_8
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_6
    return v1

    :catchall_3
    move-exception p0

    :goto_7
    if-eqz v0, :cond_8

    .line 26
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_8

    :catch_8
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_8
    if-eqz p2, :cond_9

    .line 28
    :try_start_a
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_9

    :catch_9
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 30
    :cond_9
    :goto_9
    throw p0

    :cond_a
    :goto_a
    const/4 p0, 0x1

    return p0
.end method
