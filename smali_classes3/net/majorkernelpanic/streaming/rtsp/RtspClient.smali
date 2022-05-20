.class public Lnet/majorkernelpanic/streaming/rtsp/RtspClient;
.super Ljava/lang/Object;
.source "RtspClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;,
        Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;,
        Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;
    }
.end annotation


# static fields
.field public static final ERROR_CONNECTION_FAILED:I = 0x1

.field public static final ERROR_CONNECTION_LOST:I = 0x4

.field public static final ERROR_WRONG_CREDENTIALS:I = 0x3

.field public static final MESSAGE_CONNECTION_RECOVERED:I = 0x5

.field public static final STATE_STARTED:I = 0x0

.field public static final STATE_STARTING:I = 0x1

.field public static final STATE_STOPPED:I = 0x3

.field public static final STATE_STOPPING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "RtspClient"

.field public static final TRANSPORT_TCP:I = 0x1

.field public static final TRANSPORT_UDP:I

.field public static final hexArray:[C


# instance fields
.field public mAuthorization:Ljava/lang/String;

.field public mBufferedReader:Ljava/io/BufferedReader;

.field public mCSeq:I

.field public mCallback:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;

.field public mConnectionMonitor:Ljava/lang/Runnable;

.field public mHandler:Landroid/os/Handler;

.field public mMainHandler:Landroid/os/Handler;

.field public mOutputStream:Ljava/io/OutputStream;

.field public mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

.field public mRetryConnection:Ljava/lang/Runnable;

.field public mSessionID:Ljava/lang/String;

.field public mSocket:Ljava/net/Socket;

.field public mState:I

.field public mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->hexArray:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mState:I

    .line 3
    new-instance v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mConnectionMonitor:Ljava/lang/Runnable;

    .line 4
    new-instance v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$5;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$5;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mRetryConnection:Ljava/lang/Runnable;

    .line 5
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCSeq:I

    .line 6
    new-instance v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient$1;)V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    const/16 v3, 0x78f

    .line 7
    iput v3, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    const-string v3, "/"

    .line 8
    iput-object v3, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    .line 9
    iput v0, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->transport:I

    .line 10
    iput-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mAuthorization:Ljava/lang/String;

    .line 11
    iput-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCallback:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;

    .line 12
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 13
    iput v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mState:I

    .line 14
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 15
    new-instance v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$1;

    const-string v2, "net.majorkernelpanic.streaming.RtspClient"

    invoke-direct {v0, p0, v2, v1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$1;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V

    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    return-void
.end method

.method private abort()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->sendRequestTeardown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    :try_start_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3
    :catch_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mConnectionMonitor:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mRetryConnection:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mState:I

    return-void
.end method

.method public static synthetic access$100(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1000(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->postMessage(I)V

    return-void
.end method

.method public static synthetic access$102(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method public static synthetic access$1100(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mRetryConnection:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$1200(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCallback:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;

    return-object p0
.end method

.method public static synthetic access$200(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mState:I

    return p0
.end method

.method public static synthetic access$202(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;I)I
    .locals 0

    .line 1
    iput p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mState:I

    return p1
.end method

.method public static synthetic access$300(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    return-object p0
.end method

.method public static synthetic access$302(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    return-object p1
.end method

.method public static synthetic access$400(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    return-object p0
.end method

.method public static synthetic access$500(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->tryConnection()V

    return-void
.end method

.method public static synthetic access$600(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;ILjava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->postError(ILjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic access$700(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->abort()V

    return-void
.end method

.method public static synthetic access$800(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mConnectionMonitor:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$900(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->sendRequestOption()V

    return-void
.end method

.method private addHeaders()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CSeq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Content-Length: 0\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mAuthorization:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authorization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mAuthorization:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .line 1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 4
    sget-object v4, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 5
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private computeMd5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method private postError(ILjava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$7;

    invoke-direct {v1, p0, p1, p2}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$7;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;ILjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postMessage(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$6;

    invoke-direct {v1, p0, p1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$6;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendRequestAnnounce()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/Session;->getSessionDescription()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANNOUNCE rtsp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v4, v4, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v5, v5, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v5, v5, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " RTSP/1.0\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "CSeq: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCSeq:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCSeq:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\r\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Content-Length: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "Content-Type: application/sdp\r\n\r\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v13, "RtspClient"

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v11, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    const-string v14, "UTF-8"

    invoke-virtual {v2, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/OutputStream;->write([B)V

    .line 6
    iget-object v2, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 7
    iget-object v2, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-static {v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->parseResponse(Ljava/io/BufferedReader;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;

    move-result-object v2

    .line 8
    iget-object v11, v2, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    const-string v15, "server"

    invoke-virtual {v11, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RTSP server name:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v11, "RTSP server name unknown"

    .line 10
    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_0
    iget-object v11, v2, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    const-string v12, "session"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 12
    :try_start_0
    sget-object v11, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->rexegSession:Ljava/util/regex/Pattern;

    iget-object v15, v2, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 13
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    .line 14
    invoke-virtual {v11, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSessionID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 15
    :catch_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid response from server. Session id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSessionID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_1
    :goto_1
    iget v11, v2, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->status:I

    const/16 v12, 0x191

    if-ne v11, v12, :cond_4

    .line 17
    iget-object v11, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v15, v11, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->username:Ljava/lang/String;

    if-eqz v15, :cond_3

    iget-object v11, v11, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->password:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 18
    :try_start_1
    sget-object v11, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->rexegAuthenticate:Ljava/util/regex/Pattern;

    iget-object v2, v2, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    const-string v15, "www-authenticate"

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v11, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    const/4 v11, 0x2

    .line 19
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 20
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 21
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rtsp://"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v8, v8, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v8, v8, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v8, v8, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 22
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v14

    iget-object v14, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v14, v14, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->username:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v13, v13, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->password:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->computeMd5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 23
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ANNOUNCE:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->computeMd5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 24
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->computeMd5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Digest username=\""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v13, v13, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->username:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\",realm=\""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\",nonce=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\",uri=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\",response=\""

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mAuthorization:Ljava/lang/String;

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v3, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v3, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v3, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCSeq:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCSeq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Authorization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mAuthorization:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSessionID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v2, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 30
    iget-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 31
    iget-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-static {v1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->parseResponse(Ljava/io/BufferedReader;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;

    move-result-object v1

    .line 32
    iget v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->status:I

    const/16 v2, 0x191

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad credentials !"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :catch_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid response from server"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Authentication is enabled and setCredentials(String,String) was not called !"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/16 v1, 0x193

    if-eq v11, v1, :cond_5

    :goto_2
    return-void

    .line 35
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Access forbidden !"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sendRequestOption()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPTIONS rtsp://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " RTSP/1.0\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->addHeaders()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RtspClient"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 4
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 5
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->parseResponse(Ljava/io/BufferedReader;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;

    return-void
.end method

.method private sendRequestRecord()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RECORD rtsp://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " RTSP/1.0\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Range: npt=0.000-\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->addHeaders()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RtspClient"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 5
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 6
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->parseResponse(Ljava/io/BufferedReader;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;

    return-void
.end method

.method private sendRequestSetup()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    .line 1
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v2, v2, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v2, v1}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v3, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->transport:I

    const-string v4, "-"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TCP;interleaved="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v1, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UDP;unicast;client_port="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit16 v6, v6, 0x1388

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";mode=receive"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SETUP rtsp://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v7, v7, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v7, v7, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v7, v7, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/trackID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " RTSP/1.0\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Transport: RTP/AVP/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->addHeaders()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v7, "RtspClient"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    const-string v8, "UTF-8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 7
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 8
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-static {v3}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->parseResponse(Ljava/io/BufferedReader;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;

    move-result-object v3

    .line 9
    iget-object v6, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    const-string v8, "session"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    :try_start_0
    sget-object v6, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->rexegSession:Ljava/util/regex/Pattern;

    iget-object v9, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 12
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSessionID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 13
    :catch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid response from server. Session id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    :goto_2
    iget-object v6, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v6, v6, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->transport:I

    if-nez v6, :cond_2

    .line 15
    :try_start_1
    sget-object v6, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->rexegTransport:Ljava/util/regex/Pattern;

    iget-object v3, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    const-string v8, "transport"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    const/4 v6, 0x3

    .line 16
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v8, v10}, Lnet/majorkernelpanic/streaming/Stream;->setDestinationPorts(II)V

    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting destination ports: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    .line 18
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-interface {v2}, Lnet/majorkernelpanic/streaming/Stream;->getDestinationPorts()[I

    move-result-object v2

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server did not specify ports, using default ports: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 21
    :cond_2
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    mul-int/lit8 v4, v1, 0x2

    int-to-byte v4, v4

    invoke-interface {v2, v3, v4}, Lnet/majorkernelpanic/streaming/Stream;->setOutputStream(Ljava/io/OutputStream;B)V

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private sendRequestTeardown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TEARDOWN rtsp://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " RTSP/1.0\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->addHeaders()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RtspClient"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 4
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private tryConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCSeq:I

    .line 2
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v2, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    iget v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    invoke-direct {v0, v2, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSocket:Ljava/net/Socket;

    .line 3
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mBufferedReader:Ljava/io/BufferedReader;

    .line 4
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    .line 5
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->sendRequestAnnounce()V

    .line 6
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->sendRequestSetup()V

    .line 7
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->sendRequestRecord()V

    return-void
.end method


# virtual methods
.method public getSession()Lnet/majorkernelpanic/streaming/Session;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    return-object v0
.end method

.method public isStreaming()Z
    .locals 2

    .line 1
    iget v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->stopStream()V

    .line 2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public setCallback(Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCallback:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;

    return-void
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iput-object p1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->username:Ljava/lang/String;

    .line 2
    iput-object p2, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->password:Ljava/lang/String;

    return-void
.end method

.method public setServerAddress(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iput p2, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    .line 2
    iput-object p1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    return-void
.end method

.method public setSession(Lnet/majorkernelpanic/streaming/Session;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iput-object p1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    return-void
.end method

.method public setStreamPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iput-object p1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    return-void
.end method

.method public setTransportMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iput p1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->transport:I

    return-void
.end method

.method public startStream()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSession() has not been called !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setServerAddress(String,int) has not been called !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopStream()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$3;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$3;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
