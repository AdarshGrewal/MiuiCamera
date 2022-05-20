.class public Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;
.super Ljava/lang/Thread;
.source "RtspServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/majorkernelpanic/streaming/rtsp/RtspServer;
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

.field public final synthetic this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;


# direct methods
.method public constructor <init>(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mInput:Ljava/io/BufferedReader;

    .line 3
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mOutput:Ljava/io/OutputStream;

    .line 4
    iput-object p2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    .line 5
    new-instance p1, Lnet/majorkernelpanic/streaming/Session;

    invoke-direct {p1}, Lnet/majorkernelpanic/streaming/Session;-><init>()V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    return-void
.end method

.method private isAuthorized(Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;)Z
    .locals 3

    .line 1
    iget-object p1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->headers:Ljava/util/HashMap;

    const-string v0, "authorization"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->access$100(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->access$200(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->access$100(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)Ljava/lang/String;

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

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-static {v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->access$100(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-static {v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->access$200(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)Ljava/lang/String;

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
.method public processRequest(Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;)Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;

    invoke-direct {v0, p1}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;)V

    .line 2
    invoke-direct {p0, p1}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->isAuthorized(Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;)Z

    move-result v1

    const-string v2, "OPTIONS"

    if-nez v1, :cond_0

    iget-object v1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WWW-Authenticate: Basic realm=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->SERVER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->attributes:Ljava/lang/String;

    const-string p1, "401 Unauthorized"

    .line 4
    iput-object p1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_3

    .line 5
    :cond_0
    iget-object v1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->method:Ljava/lang/String;

    const-string v3, "DESCRIBE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, ":"

    const-string v4, "200 OK"

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    iget-object p1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->uri:Ljava/lang/String;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v1, p1, v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->handleRequest(Ljava/lang/String;Ljava/net/Socket;)Lnet/majorkernelpanic/streaming/Session;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    .line 7
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mSessions:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/Session;->syncConfigure()V

    .line 9
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/Session;->getSessionDescription()Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    .line 11
    invoke-virtual {v2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Content-Type: application/sdp\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    iput-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->attributes:Ljava/lang/String;

    .line 13
    iput-object p1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->content:Ljava/lang/String;

    .line 14
    iput-object v4, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_3

    .line 15
    :cond_1
    iget-object v1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    iput-object v4, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    const-string p1, "Public: DESCRIBE,SETUP,TEARDOWN,PLAY,PAUSE\r\n"

    .line 17
    iput-object p1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->attributes:Ljava/lang/String;

    .line 18
    iput-object v4, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_3

    .line 19
    :cond_2
    iget-object v1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->method:Ljava/lang/String;

    const-string v2, "SETUP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "400 Bad Request"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    const-string v3, "trackID=(\\w+)"

    .line 20
    invoke-static {v3, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 21
    iget-object v7, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->uri:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_3

    .line 23
    iput-object v2, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    return-object v0

    .line 24
    :cond_3
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 25
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v3, v2}, Lnet/majorkernelpanic/streaming/Session;->trackExists(I)Z

    move-result v3

    if-nez v3, :cond_4

    const-string p1, "404 Not Found"

    .line 26
    iput-object p1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    return-object v0

    :cond_4
    const-string v3, "client_port=(\\d+)(?:-(\\d+))?"

    .line 27
    invoke-static {v3, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 28
    iget-object p1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->headers:Ljava/util/HashMap;

    const-string v7, "transport"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_5

    .line 30
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {p1, v2}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object p1

    invoke-interface {p1}, Lnet/majorkernelpanic/streaming/Stream;->getDestinationPorts()[I

    move-result-object p1

    .line 31
    aget v1, p1, v5

    .line 32
    aget p1, p1, v6

    goto :goto_1

    .line 33
    :cond_5
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 34
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    add-int/lit8 p1, v3, 0x1

    goto :goto_0

    .line 35
    :cond_6
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    move v1, v3

    .line 36
    :goto_1
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v3, v2}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v3

    invoke-interface {v3}, Lnet/majorkernelpanic/streaming/Stream;->getSSRC()I

    move-result v3

    .line 37
    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v7, v2}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v7

    invoke-interface {v7}, Lnet/majorkernelpanic/streaming/Stream;->getLocalPorts()[I

    move-result-object v7

    .line 38
    iget-object v8, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v8}, Lnet/majorkernelpanic/streaming/Session;->getDestination()Ljava/lang/String;

    move-result-object v8

    .line 39
    iget-object v9, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v9, v2}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v9

    invoke-interface {v9, v1, p1}, Lnet/majorkernelpanic/streaming/Stream;->setDestinationPorts(II)V

    .line 40
    iget-object v9, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-virtual {v9}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->isStreaming()Z

    move-result v9

    .line 41
    iget-object v10, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v10, v2}, Lnet/majorkernelpanic/streaming/Session;->syncStart(I)V

    if-nez v9, :cond_7

    .line 42
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->isStreaming()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 43
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-virtual {v2, v5}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->postMessage(I)V

    .line 44
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transport: RTP/AVP/UDP;"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "multicast"

    goto :goto_2

    :cond_8
    const-string v8, "unicast"

    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";destination="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    .line 45
    invoke-virtual {v8}, Lnet/majorkernelpanic/streaming/Session;->getDestination()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";client_port="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";server_port="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v7, v5

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v7, v6

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";ssrc="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";mode=play\r\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Session: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "1185d20035702ca"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Cache-Control: no-cache\r\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->attributes:Ljava/lang/String;

    .line 47
    iput-object v4, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    .line 48
    iput-object v4, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_3

    .line 49
    :cond_9
    iget-object v1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->method:Ljava/lang/String;

    const-string v7, "PLAY"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string p1, "RTP-Info: "

    .line 50
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1, v5}, Lnet/majorkernelpanic/streaming/Session;->trackExists(I)Z

    move-result v1

    const-string v2, ";seq=0,"

    const-string v7, "/trackID="

    const-string v8, "url=rtsp://"

    if-eqz v1, :cond_a

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalPort()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    :cond_a
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1, v6}, Lnet/majorkernelpanic/streaming/Session;->trackExists(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalPort()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\nSession: 1185d20035702ca\r\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    iput-object p1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->attributes:Ljava/lang/String;

    .line 56
    iput-object v4, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    goto :goto_3

    .line 57
    :cond_c
    iget-object v1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->method:Ljava/lang/String;

    const-string v3, "PAUSE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 58
    iput-object v4, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    goto :goto_3

    .line 59
    :cond_d
    iget-object v1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->method:Ljava/lang/String;

    const-string v3, "TEARDOWN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 60
    iput-object v4, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    goto :goto_3

    .line 61
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command unknown: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RtspServer"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object v2, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    :goto_3
    return-object v0
.end method

.method public run()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtspServer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mInput:Ljava/io/BufferedReader;

    invoke-static {v3}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->parseRequest(Ljava/io/BufferedReader;)Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_1

    .line 4
    :catch_0
    new-instance v3, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;

    invoke-direct {v3}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;-><init>()V

    const-string v4, "400 Bad Request"

    .line 5
    iput-object v4, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_1

    .line 6
    :try_start_1
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->processRequest(Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;)Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    .line 7
    iget-object v4, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-virtual {v4, v3, v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->postError(Ljava/lang/Exception;I)V

    .line 8
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_0
    const-string v4, "An error occurred"

    :goto_2
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    new-instance v3, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;

    invoke-direct {v3, v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;)V

    .line 11
    :cond_1
    :goto_3
    :try_start_2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v3, v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->send(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    const-string v0, "Response was not sent properly"

    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :catch_3
    :cond_2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->isStreaming()Z

    move-result v0

    .line 14
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v3}, Lnet/majorkernelpanic/streaming/Session;->syncStop()V

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-virtual {v0, v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->postMessage(I)V

    .line 17
    :cond_3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->release()V

    .line 18
    :try_start_3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :catch_4
    const-string v0, "Client disconnected"

    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
