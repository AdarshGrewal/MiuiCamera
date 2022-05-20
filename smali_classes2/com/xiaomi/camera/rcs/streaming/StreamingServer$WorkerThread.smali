.class public Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;
.super Ljava/lang/Thread;
.source "StreamingServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rcs/streaming/StreamingServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkerThread"
.end annotation


# instance fields
.field public final mClient:Ljava/net/Socket;

.field public final mInput:Ljava/io/BufferedReader;

.field public final mOutput:Ljava/io/OutputStream;

.field public mSession:Lnet/majorkernelpanic/streaming/Session;

.field public final synthetic this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mInput:Ljava/io/BufferedReader;

    .line 3
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mOutput:Ljava/io/OutputStream;

    .line 4
    iput-object p2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    .line 5
    new-instance p1, Lnet/majorkernelpanic/streaming/Session;

    invoke-direct {p1}, Lnet/majorkernelpanic/streaming/Session;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    return-void
.end method

.method private isAuthorized(Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;)Z
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->headers:Ljava/util/HashMap;

    const-string v0, "authorization"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$500(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$600(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$500(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " "

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v2}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$500(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v2}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$600(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public processRequest(Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;

    invoke-direct {v2, v1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;-><init>(Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;)V

    .line 2
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->isAuthorized(Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;)Z

    move-result v3

    const-string v4, "OPTIONS"

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "WWW-Authenticate: Basic realm=\"XMRCSS\"\r\n"

    .line 3
    iput-object v1, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->attributes:Ljava/lang/String;

    const-string v1, "401 Unauthorized"

    .line 4
    iput-object v1, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_3

    .line 5
    :cond_0
    iget-object v3, v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const-string v5, "DESCRIBE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v5, ":"

    const-string v6, "200 OK"

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    iget-object v1, v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->uri:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v3, v1, v4}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->handleRequest(Ljava/lang/String;Ljava/net/Socket;)Lnet/majorkernelpanic/streaming/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    .line 7
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create new session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$300(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v3, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/Session;->syncConfigure()V

    .line 10
    iget-object v1, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/Session;->getSessionDescription()Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Base: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    .line 12
    invoke-virtual {v4}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Content-Type: application/sdp\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    iput-object v3, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->attributes:Ljava/lang/String;

    .line 14
    iput-object v1, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->content:Ljava/lang/String;

    .line 15
    iput-object v6, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_3

    .line 16
    :cond_1
    iget-object v3, v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17
    iput-object v6, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    const-string v1, "Public: DESCRIBE,SETUP,TEARDOWN,PLAY,PAUSE,SET_PARAMETER,GET_PARAMETER\r\n"

    .line 18
    iput-object v1, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->attributes:Ljava/lang/String;

    .line 19
    iput-object v6, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_3

    .line 20
    :cond_2
    iget-object v3, v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const-string v4, "SETUP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "\r\n"

    const-string v7, "400 Bad Request"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_9

    const/4 v3, 0x2

    const-string v5, "trackID=(\\w+)"

    .line 21
    invoke-static {v5, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 22
    iget-object v10, v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->uri:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 23
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-nez v10, :cond_3

    .line 24
    iput-object v7, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    return-object v2

    .line 25
    :cond_3
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 26
    iget-object v7, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v7, v5}, Lnet/majorkernelpanic/streaming/Session;->trackExists(I)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v1, "404 Not Found"

    .line 27
    iput-object v1, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    return-object v2

    :cond_4
    const-string v7, "client_port=(\\d+)(?:-(\\d+))?"

    .line 28
    invoke-static {v7, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 29
    iget-object v1, v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->headers:Ljava/util/HashMap;

    const-string v10, "transport"

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_5

    .line 31
    iget-object v1, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1, v5}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v1

    invoke-interface {v1}, Lnet/majorkernelpanic/streaming/Stream;->getDestinationPorts()[I

    move-result-object v1

    .line 32
    aget v7, v1, v8

    .line 33
    aget v1, v1, v9

    goto :goto_0

    .line 34
    :cond_5
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 35
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6

    add-int/lit8 v1, v7, 0x1

    goto :goto_0

    .line 36
    :cond_6
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 37
    :goto_0
    iget-object v10, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v10, v5}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v10

    invoke-interface {v10}, Lnet/majorkernelpanic/streaming/Stream;->getSSRC()I

    move-result v10

    .line 38
    iget-object v11, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v11, v5}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v11

    invoke-interface {v11}, Lnet/majorkernelpanic/streaming/Stream;->getLocalPorts()[I

    move-result-object v11

    .line 39
    iget-object v12, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v12}, Lnet/majorkernelpanic/streaming/Session;->getDestination()Ljava/lang/String;

    move-result-object v12

    .line 40
    iget-object v13, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v13, v5}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v13

    invoke-interface {v13, v7, v1}, Lnet/majorkernelpanic/streaming/Stream;->setDestinationPorts(II)V

    .line 41
    iget-object v13, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-virtual {v13}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->isStreaming()Z

    move-result v13

    .line 42
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SETUP -> before: "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v9, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v9, v5}, Lnet/majorkernelpanic/streaming/Session;->syncStart(I)V

    .line 44
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SETUP ->  after: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-virtual {v14}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->isStreaming()Z

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v13, :cond_7

    .line 45
    iget-object v5, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-virtual {v5}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->isStreaming()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 46
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v9, "SETUP -> send STATE_STREAMING_STARTED"

    invoke-static {v5, v9}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v5, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    iget-object v9, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v5, v9, v3}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->postStreamingSessionState(Lnet/majorkernelpanic/streaming/Session;I)V

    .line 48
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transport: RTP/AVP/UDP;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "multicast"

    goto :goto_1

    :cond_8
    const-string v5, "unicast"

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";destination="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    .line 49
    invoke-virtual {v5}, Lnet/majorkernelpanic/streaming/Session;->getDestination()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";client_port="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";server_port="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v11, v8

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v1, v11, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";ssrc="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";mode=play\r\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Session: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1185d20035702ca"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Cache-Control: no-cache\r\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->attributes:Ljava/lang/String;

    .line 51
    iput-object v6, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    .line 52
    iput-object v6, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_3

    .line 53
    :cond_9
    iget-object v3, v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const-string v9, "PLAY"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v1, "RTP-Info: "

    .line 54
    iget-object v3, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v3, v8}, Lnet/majorkernelpanic/streaming/Session;->trackExists(I)Z

    move-result v3

    const-string v4, ";seq=0,"

    const-string v7, "/trackID="

    const-string v9, "url=rtsp://"

    if-eqz v3, :cond_a

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalPort()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    :cond_a
    iget-object v3, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lnet/majorkernelpanic/streaming/Session;->trackExists(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalPort()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_b
    const/4 v5, 0x1

    .line 58
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\nSession: 1185d20035702ca\r\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    iput-object v1, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->attributes:Ljava/lang/String;

    .line 60
    iput-object v6, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_3

    .line 61
    :cond_c
    iget-object v3, v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const-string v5, "PAUSE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 62
    iput-object v6, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_3

    .line 63
    :cond_d
    iget-object v3, v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const-string v5, "TEARDOWN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 64
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TEARDOWN -> is streaming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-virtual {v4}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->isStreaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput-object v6, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_3

    .line 66
    :cond_e
    iget-object v3, v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const-string v5, "GET_PARAMETER"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 67
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_PARAMETER -> is streaming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-virtual {v4}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->isStreaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-object v6, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto :goto_3

    .line 69
    :cond_f
    iget-object v3, v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->method:Ljava/lang/String;

    const-string v5, "SET_PARAMETER"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 70
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SET_PARAMETER -> is streaming: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-virtual {v7}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->isStreaming()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v3, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v3}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$400(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RpcMessageHandler;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 72
    iget-object v3, v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v3}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$400(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RpcMessageHandler;

    move-result-object v3

    iget-object v1, v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->content:Ljava/lang/String;

    invoke-interface {v3, v1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RpcMessageHandler;->handleMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10

    const-string v3, "Content-Type: application/json\r\n"

    .line 74
    iput-object v3, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->attributes:Ljava/lang/String;

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->content:Ljava/lang/String;

    .line 76
    :cond_10
    iput-object v6, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    goto :goto_3

    .line 77
    :cond_11
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command unknown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-object v7, v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    :goto_3
    return-object v2
.end method

.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mInput:Ljava/io/BufferedReader;

    invoke-static {v1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;->parseRequest(Ljava/io/BufferedReader;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    .line 4
    :catch_0
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown request from client"

    invoke-static {v1, v2}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;

    invoke-direct {v1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;-><init>()V

    const-string v2, "400 Bad Request"

    .line 6
    iput-object v2, v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->status:Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->processRequest(Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_0
    const-string v3, "An error occurred"

    :goto_2
    invoke-static {v2, v3}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->postStreamingServerState(I)V

    .line 11
    new-instance v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;

    invoke-direct {v1, v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;-><init>(Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Request;)V

    .line 12
    :cond_1
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$Response;->send(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 13
    :catch_2
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Response was not sent properly"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 14
    :catch_3
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client has left"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->isStreaming()Z

    move-result v0

    .line 16
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/Session;->syncStop()V

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->postStreamingSessionState(Lnet/majorkernelpanic/streaming/Session;I)V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$300(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->release()V

    .line 21
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 22
    :catch_4
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client disconnected"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
