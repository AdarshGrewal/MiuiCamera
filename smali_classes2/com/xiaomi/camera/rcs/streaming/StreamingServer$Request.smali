.class public Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;
.super Ljava/lang/Object;
.source "StreamingServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rcs/streaming/StreamingServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final regexMethod:Ljava/util/regex/Pattern;

.field public static final rexegHeader:Ljava/util/regex/Pattern;


# instance fields
.field public content:Ljava/lang/String;

.field public headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public method:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "(\\w+) (\\S+) RTSP"

    .line 1
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->regexMethod:Ljava/util/regex/Pattern;

    const-string v1, "(\\S+):(.+)"

    .line 2
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->rexegHeader:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->headers:Ljava/util/HashMap;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->content:Ljava/lang/String;

    return-void
.end method

.method public static parseRequest(Ljava/io/BufferedReader;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/net/SocketException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, " "

    .line 1
    new-instance v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;

    invoke-direct {v2}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;-><init>()V

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "parseRequest: header E"

    invoke-static {v3, v4}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Client disconnected"

    if-eqz v3, :cond_4

    .line 4
    sget-object v5, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->regexMethod:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    const/4 v5, 0x1

    .line 6
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const/4 v6, 0x2

    .line 7
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->uri:Ljava/lang/String;

    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_0

    .line 9
    sget-object v7, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->rexegHeader:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 11
    iget-object v7, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->headers:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_3

    .line 12
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "parseRequest: header X"

    invoke-static {v3, v4}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :try_start_0
    iget-object v3, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->headers:Ljava/util/HashMap;

    const-string v4, "content-length"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 14
    iget-object v4, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->headers:Ljava/util/HashMap;

    const-string v5, "content-type"

    const-string v6, "null"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-lez v3, :cond_2

    const-string v4, "application/json"

    .line 15
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v4, "parseRequest: body E"

    invoke-static {v0, v4}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-array v0, v3, [C

    .line 18
    invoke-virtual {p0, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result p0

    if-ne p0, v3, :cond_1

    .line 19
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    iput-object p0, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->content:Ljava/lang/String;

    .line 20
    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->content:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "--"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "parseRequest: body X"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 22
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Error parsing message body"

    invoke-static {v0, v3, p0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    :cond_2
    :goto_1
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 24
    :cond_3
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "parseRequest: read null from input: header"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance p0, Ljava/net/SocketException;

    invoke-direct {p0, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "parseRequest: read null from input: method"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance p0, Ljava/net/SocketException;

    invoke-direct {p0, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
