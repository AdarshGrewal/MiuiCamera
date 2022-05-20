.class public Lnet/majorkernelpanic/streaming/rtsp/UriParser;
.super Ljava/lang/Object;
.source "UriParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UriParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/Session;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Invalid multicast address !"

    .line 1
    invoke-static {}, Lnet/majorkernelpanic/streaming/SessionBuilder;->getInstance()Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v1

    invoke-static {v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->copyOf(Lnet/majorkernelpanic/streaming/SessionBuilder;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v1

    .line 2
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-array p0, v2, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, "&"

    .line 3
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 5
    array-length v4, p0

    move v5, v2

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v4, :cond_1

    aget-object v7, p0, v5

    const-string v8, "="

    .line 6
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 7
    :try_start_0
    aget-object v6, v7, v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v6, ""

    .line 8
    :goto_2
    aget-object v7, v7, v2

    const-string v8, "UTF-8"

    .line 9
    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-static {v6, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result p0

    if-lez p0, :cond_16

    .line 13
    invoke-virtual {v1, v2}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setAudioEncoder(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setVideoEncoder(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    .line 14
    invoke-virtual {v3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v4, v2

    move v5, v4

    :cond_2
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 16
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "flash"

    .line 17
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_4

    const-string v7, "on"

    .line 18
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 19
    invoke-virtual {v1, v6}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setFlashEnabled(Z)Lnet/majorkernelpanic/streaming/SessionBuilder;

    goto :goto_3

    .line 20
    :cond_3
    invoke-virtual {v1, v2}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setFlashEnabled(Z)Lnet/majorkernelpanic/streaming/SessionBuilder;

    goto :goto_3

    :cond_4
    const-string v9, "camera"

    .line 21
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v7, "back"

    .line 22
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 23
    invoke-virtual {v1, v2}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setCamera(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    goto :goto_3

    :cond_5
    const-string v7, "front"

    .line 24
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 25
    invoke-virtual {v1, v6}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setCamera(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    goto :goto_3

    :cond_6
    const-string v9, "multicast"

    .line 26
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v8, :cond_8

    .line 27
    :try_start_1
    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 28
    invoke-virtual {v7}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 29
    invoke-virtual {v1, v8}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setDestination(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    goto :goto_3

    .line 30
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    :catch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const-string v7, "228.5.6.7"

    .line 32
    invoke-virtual {v1, v7}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setDestination(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    goto :goto_3

    :cond_9
    const-string v9, "unicast"

    .line 33
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    if-eqz v8, :cond_2

    .line 34
    invoke-virtual {v1, v8}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setDestination(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    goto/16 :goto_3

    :cond_a
    const-string v9, "videoapi"

    .line 35
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const-string v11, "mc"

    const-string v12, "mr"

    if-eqz v9, :cond_c

    if-eqz v8, :cond_2

    .line 36
    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v4, v6

    goto/16 :goto_3

    .line 37
    :cond_b
    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v10

    goto/16 :goto_3

    :cond_c
    const-string v9, "audioapi"

    .line 38
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz v8, :cond_2

    .line 39
    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    move v5, v6

    goto/16 :goto_3

    .line 40
    :cond_d
    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v10

    goto/16 :goto_3

    :cond_e
    const-string v9, "ttl"

    .line 41
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    if-eqz v8, :cond_2

    .line 42
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_f

    .line 43
    invoke-virtual {v1, v7}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setTimeToLive(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    goto/16 :goto_3

    .line 44
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 45
    :catch_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The TTL must be a positive integer !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    const-string v9, "h264"

    .line 46
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 47
    invoke-static {v8}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->parseQuality(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v7

    .line 48
    invoke-virtual {v1, v7}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setVideoQuality(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setVideoEncoder(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    goto/16 :goto_3

    :cond_11
    const-string v9, "h263"

    .line 49
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 50
    invoke-static {v8}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->parseQuality(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v7

    .line 51
    invoke-virtual {v1, v7}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setVideoQuality(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setVideoEncoder(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    goto/16 :goto_3

    :cond_12
    const-string v9, "amrnb"

    .line 52
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    const-string v9, "amr"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    goto :goto_4

    :cond_13
    const-string v9, "aac"

    .line 53
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 54
    invoke-static {v8}, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->parseQuality(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    move-result-object v7

    .line 55
    invoke-virtual {v1, v7}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setAudioQuality(Lnet/majorkernelpanic/streaming/audio/AudioQuality;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setAudioEncoder(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    goto/16 :goto_3

    .line 56
    :cond_14
    :goto_4
    invoke-static {v8}, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->parseQuality(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    move-result-object v7

    .line 57
    invoke-virtual {v1, v7}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setAudioQuality(Lnet/majorkernelpanic/streaming/audio/AudioQuality;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setAudioEncoder(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    goto/16 :goto_3

    :cond_15
    move v2, v4

    goto :goto_5

    :cond_16
    move v5, v2

    .line 58
    :goto_5
    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->getVideoEncoder()I

    move-result p0

    if-nez p0, :cond_17

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->getAudioEncoder()I

    move-result p0

    if-nez p0, :cond_17

    .line 59
    invoke-static {}, Lnet/majorkernelpanic/streaming/SessionBuilder;->getInstance()Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/SessionBuilder;->getVideoEncoder()I

    move-result v0

    invoke-virtual {v1, v0}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setVideoEncoder(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    .line 61
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/SessionBuilder;->getAudioEncoder()I

    move-result p0

    invoke-virtual {v1, p0}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setAudioEncoder(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    .line 62
    :cond_17
    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->build()Lnet/majorkernelpanic/streaming/Session;

    move-result-object p0

    if-lez v2, :cond_18

    .line 63
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/Session;->getVideoTrack()Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 64
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/Session;->getVideoTrack()Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/majorkernelpanic/streaming/MediaStream;->setStreamingMethod(B)V

    :cond_18
    if-lez v5, :cond_19

    .line 65
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/Session;->getAudioTrack()Lnet/majorkernelpanic/streaming/audio/AudioStream;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 66
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/Session;->getAudioTrack()Lnet/majorkernelpanic/streaming/audio/AudioStream;

    move-result-object v0

    invoke-virtual {v0, v5}, Lnet/majorkernelpanic/streaming/MediaStream;->setStreamingMethod(B)V

    :cond_19
    return-object p0
.end method
