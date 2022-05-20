.class public Lcom/android/camera/resource/ProgressResponseBody;
.super Lokhttp3/ResponseBody;
.source "ProgressResponseBody.java"


# instance fields
.field public bufferedSource:Lokio/BufferedSource;

.field public final responseBody:Lokhttp3/ResponseBody;

.field public final responseListener:Lcom/android/camera/resource/ResponseListener;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Lcom/android/camera/resource/ResponseListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/resource/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    .line 3
    iput-object p2, p0, Lcom/android/camera/resource/ProgressResponseBody;->responseListener:Lcom/android/camera/resource/ResponseListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/resource/ProgressResponseBody;)Lokhttp3/ResponseBody;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/resource/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/resource/ProgressResponseBody;)Lcom/android/camera/resource/ResponseListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/resource/ProgressResponseBody;->responseListener:Lcom/android/camera/resource/ResponseListener;

    return-object p0
.end method

.method private source(Lokio/Source;)Lokio/Source;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/camera/resource/ProgressResponseBody$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/resource/ProgressResponseBody$1;-><init>(Lcom/android/camera/resource/ProgressResponseBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/resource/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/resource/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/resource/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/resource/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/resource/ProgressResponseBody;->source(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/resource/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/resource/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    return-object v0
.end method
