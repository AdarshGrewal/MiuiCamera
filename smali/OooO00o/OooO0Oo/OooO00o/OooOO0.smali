.class public LOooO00o/OooO0Oo/OooO00o/OooOO0;
.super Ljava/lang/Object;
.source "SensitiveFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final OooO0O0:J = 0x1L

.field public static final OooO0OO:Ljava/lang/String; = "/data/data/com.android.camera/sensi_words"

.field public static final OooO0Oo:Ljava/lang/String; = "/data/data/com.android.camera/"

.field public static OooO0o:LOooO00o/OooO0Oo/OooO00o/OooOO0; = null

.field public static final OooO0o0:I = 0x800000


# instance fields
.field public OooO00o:[LOooO00o/OooO0Oo/OooO00o/OooOO0O;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const-string v0, "IOException in SensitiveFilter constructor finally"

    const-string v1, "SensitiveFilter"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v2, 0x800000

    new-array v2, v2, [LOooO00o/OooO0Oo/OooO00o/OooOO0O;

    .line 2
    iput-object v2, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0;->OooO00o:[LOooO00o/OooO0Oo/OooO00o/OooOO0O;

    const/4 v2, 0x0

    .line 3
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.android.camera/sensi_words"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "/assets/sensi/sensi_words.txt"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 7
    :goto_0
    :try_start_1
    invoke-static {v4}, Lmiuix/core/util/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 8
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 9
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 10
    :try_start_2
    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    :try_start_3
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 12
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {p0, v2}, LOooO00o/OooO0Oo/OooO00o/OooOO0;->OooO0O0(Ljava/lang/String;)Z

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 16
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 17
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 18
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 19
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 20
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 21
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    if-eqz v4, :cond_5

    .line 22
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_7

    :catchall_0
    move-exception v2

    move-object v8, v6

    move-object v6, v2

    move-object v2, v8

    goto :goto_8

    :catch_0
    move-exception v2

    move-object v8, v6

    move-object v6, v2

    move-object v2, v8

    goto :goto_4

    :catch_1
    move-exception v6

    goto :goto_4

    :catchall_1
    move-exception v5

    move-object v6, v5

    move-object v5, v2

    goto :goto_8

    :catch_2
    move-exception v5

    move-object v6, v5

    move-object v5, v2

    goto :goto_4

    :catchall_2
    move-exception v3

    move-object v5, v2

    goto :goto_2

    :catch_3
    move-exception v3

    move-object v5, v2

    goto :goto_3

    :catchall_3
    move-exception v3

    move-object v4, v2

    move-object v5, v4

    :goto_2
    move-object v6, v3

    move-object v3, v5

    goto :goto_8

    :catch_4
    move-exception v3

    move-object v4, v2

    move-object v5, v4

    :goto_3
    move-object v6, v3

    move-object v3, v5

    :goto_4
    :try_start_6
    const-string v7, "IOException in SensitiveFilter constructor"

    .line 23
    invoke-static {v1, v7, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v2, :cond_2

    .line 24
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_5

    :catch_5
    move-exception v2

    goto :goto_6

    :cond_2
    :goto_5
    if-eqz v5, :cond_3

    .line 25
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    :cond_3
    if-eqz v3, :cond_4

    .line 26
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v4, :cond_5

    .line 27
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    .line 28
    :goto_6
    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_7
    return-void

    :catchall_4
    move-exception v6

    :goto_8
    if-eqz v2, :cond_6

    .line 29
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_9

    :catch_6
    move-exception v2

    goto :goto_a

    :cond_6
    :goto_9
    if-eqz v5, :cond_7

    .line 30
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    :cond_7
    if-eqz v3, :cond_8

    .line 31
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v4, :cond_9

    .line 32
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_b

    .line 33
    :goto_a
    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :cond_9
    :goto_b
    throw v6
.end method

.method public static declared-synchronized OooO00o()LOooO00o/OooO0Oo/OooO00o/OooOO0;
    .locals 2

    const-class v0, LOooO00o/OooO0Oo/OooO00o/OooOO0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooOO0;->OooO0o:LOooO00o/OooO0Oo/OooO00o/OooOO0;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, LOooO00o/OooO0Oo/OooO00o/OooOO0;

    invoke-direct {v1}, LOooO00o/OooO0Oo/OooO00o/OooOO0;-><init>()V

    sput-object v1, LOooO00o/OooO0Oo/OooO00o/OooOO0;->OooO0o:LOooO00o/OooO0Oo/OooO00o/OooOO0;

    .line 3
    :cond_0
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooOO0;->OooO0o:LOooO00o/OooO0Oo/OooO00o/OooOO0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static OooO00o(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 30
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v2, 0x4e20

    .line 32
    :try_start_1
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 33
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "GET"

    .line 34
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 36
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 37
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 38
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 39
    :try_start_2
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "sensi_words"

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 42
    :cond_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 44
    invoke-virtual {p1, v1}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 46
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/util/zip/ZipException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object p0, p1

    move-object p1, v0

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_6

    :catch_0
    move-object p1, v1

    goto :goto_3

    :catch_1
    move-object p1, v1

    goto :goto_4

    :catch_2
    move-object p1, v1

    goto :goto_5

    :cond_2
    move-object p1, v1

    :goto_1
    if-eqz p0, :cond_3

    .line 47
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    if-eqz v1, :cond_4

    .line 48
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_4
    if-eqz p1, :cond_e

    .line 49
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_12

    goto/16 :goto_a

    :catchall_2
    move-exception p1

    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    goto :goto_6

    :catch_4
    move-object p1, v1

    move-object v2, p1

    :catch_5
    :goto_3
    move-object v1, p0

    goto :goto_7

    :catch_6
    move-object p1, v1

    move-object v2, p1

    :catch_7
    :goto_4
    move-object v1, p0

    goto :goto_8

    :catch_8
    move-object p1, v1

    move-object v2, p1

    :catch_9
    :goto_5
    move-object v1, p0

    goto :goto_9

    :catchall_3
    move-exception p1

    move-object p0, v1

    move-object v2, p0

    :goto_6
    if-eqz v1, :cond_5

    .line 50
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    if-eqz v2, :cond_6

    .line 51
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    :catch_a
    :cond_6
    if-eqz p0, :cond_7

    .line 52
    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    .line 53
    :catch_b
    :cond_7
    throw p1

    :catch_c
    move-object p1, v1

    move-object v2, p1

    :goto_7
    if-eqz v1, :cond_8

    .line 54
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    if-eqz v2, :cond_9

    .line 55
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d

    :catch_d
    :cond_9
    if-eqz p1, :cond_e

    goto :goto_2

    :catch_e
    move-object p1, v1

    move-object v2, p1

    :goto_8
    if-eqz v1, :cond_a

    .line 56
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    if-eqz v2, :cond_b

    .line 57
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f

    :catch_f
    :cond_b
    if-eqz p1, :cond_e

    goto :goto_2

    :catch_10
    move-object p1, v1

    move-object v2, p1

    :goto_9
    if-eqz v1, :cond_c

    .line 58
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    if-eqz v2, :cond_d

    .line 59
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11

    :catch_11
    :cond_d
    if-eqz p1, :cond_e

    goto :goto_2

    :catch_12
    :cond_e
    :goto_a
    return v0
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 18
    :cond_0
    new-instance v0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    invoke-direct {v0, p1}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 19
    :goto_0
    iget v2, v0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge p1, v2, :cond_4

    .line 20
    invoke-virtual {v0, p1}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o(I)I

    move-result v2

    .line 21
    iget-object v4, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0;->OooO00o:[LOooO00o/OooO0Oo/OooO00o/OooOO0O;

    array-length v5, v4

    sub-int/2addr v5, v3

    and-int/2addr v2, v5

    aget-object v2, v4, v2

    if-eqz v2, :cond_3

    .line 22
    invoke-virtual {v0, p1}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0(I)I

    move-result v4

    :goto_1
    if-eqz v2, :cond_3

    .line 23
    iget v5, v2, LOooO00o/OooO0Oo/OooO00o/OooOO0O;->OooO00o:I

    if-ne v5, v4, :cond_2

    .line 24
    iget-object v5, v2, LOooO00o/OooO0Oo/OooO00o/OooOO0O;->OooO0O0:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO(I)LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/TreeSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 25
    invoke-interface {v5}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    .line 26
    invoke-virtual {v0, p1, v6}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o(ILOooO00o/OooO0Oo/OooO00o/OooOO0o;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 27
    new-instance v1, Ljava/lang/String;

    iget-object v2, v6, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 28
    iget v3, v6, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    goto :goto_2

    .line 29
    :cond_2
    iget-object v2, v2, LOooO00o/OooO0Oo/OooO00o/OooOO0O;->OooO0OO:LOooO00o/OooO0Oo/OooO00o/OooOO0O;

    goto :goto_1

    :cond_3
    :goto_2
    add-int/2addr p1, v3

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public OooO00o(Ljava/lang/String;C)Ljava/lang/String;
    .locals 10

    .line 4
    new-instance v0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    invoke-direct {v0, p1}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 5
    :goto_0
    iget v3, v0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_3

    .line 6
    invoke-virtual {v0, v1}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o(I)I

    move-result v3

    .line 7
    iget-object v5, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0;->OooO00o:[LOooO00o/OooO0Oo/OooO00o/OooOO0O;

    array-length v6, v5

    sub-int/2addr v6, v4

    and-int/2addr v3, v6

    aget-object v3, v5, v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v0, v1}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0(I)I

    move-result v5

    :goto_1
    if-eqz v3, :cond_2

    .line 9
    iget v6, v3, LOooO00o/OooO0Oo/OooO00o/OooOO0O;->OooO00o:I

    if-ne v6, v5, :cond_1

    .line 10
    iget-object v6, v3, LOooO00o/OooO0Oo/OooO00o/OooOO0O;->OooO0O0:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO(I)LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/TreeSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 11
    invoke-interface {v6}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    .line 12
    invoke-virtual {v0, v1, v7}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o(ILOooO00o/OooO0Oo/OooO00o/OooOO0o;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 13
    iget v2, v7, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2, p2}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o(IIC)V

    .line 14
    iget v2, v7, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    move v9, v4

    move v4, v2

    move v2, v9

    goto :goto_2

    .line 15
    :cond_1
    iget-object v3, v3, LOooO00o/OooO0Oo/OooO00o/OooOO0O;->OooO0OO:LOooO00o/OooO0Oo/OooO00o/OooOO0O;

    goto :goto_1

    :cond_2
    :goto_2
    add-int/2addr v1, v4

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public OooO0O0(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0;->OooO00o:[LOooO00o/OooO0Oo/OooO00o/OooOO0O;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_6

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    new-instance v0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o(I)I

    move-result p1

    .line 5
    invoke-virtual {v0, v1}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0(I)I

    move-result v1

    .line 6
    iget-object v2, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0;->OooO00o:[LOooO00o/OooO0Oo/OooO00o/OooOO0O;

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int/2addr p1, v3

    .line 7
    aget-object v2, v2, p1

    if-nez v2, :cond_2

    .line 8
    new-instance v2, LOooO00o/OooO0Oo/OooO00o/OooOO0O;

    invoke-direct {v2, v1}, LOooO00o/OooO0Oo/OooO00o/OooOO0O;-><init>(I)V

    .line 9
    iget-object v1, v2, LOooO00o/OooO0Oo/OooO00o/OooOO0O;->OooO0O0:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0;->OooO00o:[LOooO00o/OooO0Oo/OooO00o/OooOO0O;

    aput-object v2, v0, p1

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v2, :cond_5

    .line 11
    iget p1, v2, LOooO00o/OooO0Oo/OooO00o/OooOO0O;->OooO00o:I

    if-ne p1, v1, :cond_3

    .line 12
    iget-object p1, v2, LOooO00o/OooO0Oo/OooO00o/OooOO0O;->OooO0O0:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return v4

    .line 13
    :cond_3
    iget-object p1, v2, LOooO00o/OooO0Oo/OooO00o/OooOO0O;->OooO0OO:LOooO00o/OooO0Oo/OooO00o/OooOO0O;

    if-nez p1, :cond_4

    .line 14
    new-instance p1, LOooO00o/OooO0Oo/OooO00o/OooOO0O;

    invoke-direct {p1, v1, v2}, LOooO00o/OooO0Oo/OooO00o/OooOO0O;-><init>(ILOooO00o/OooO0Oo/OooO00o/OooOO0O;)V

    iget-object p1, p1, LOooO00o/OooO0Oo/OooO00o/OooOO0O;->OooO0O0:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return v4

    :cond_4
    move-object v2, p1

    goto :goto_0

    :cond_5
    :goto_1
    return v4

    :cond_6
    :goto_2
    return v1
.end method
