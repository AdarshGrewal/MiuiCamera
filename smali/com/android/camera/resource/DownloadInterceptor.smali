.class public Lcom/android/camera/resource/DownloadInterceptor;
.super Ljava/lang/Object;
.source "DownloadInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public responseListener:Lcom/android/camera/resource/ResponseListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/resource/ResponseListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/resource/DownloadInterceptor;->responseListener:Lcom/android/camera/resource/ResponseListener;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/resource/ProgressResponseBody;

    .line 3
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    iget-object v2, p0, Lcom/android/camera/resource/DownloadInterceptor;->responseListener:Lcom/android/camera/resource/ResponseListener;

    invoke-direct {v1, p1, v2}, Lcom/android/camera/resource/ProgressResponseBody;-><init>(Lokhttp3/ResponseBody;Lcom/android/camera/resource/ResponseListener;)V

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
