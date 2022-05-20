.class public Lcom/android/camera/resource/SimpleNetworkDownloadRequest;
.super Lcom/android/camera/resource/BaseObservableRequest;
.source "SimpleNetworkDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/resource/BaseObservableRequest<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final CLIENT:Lokhttp3/OkHttpClient;

.field public static final TAG:Ljava/lang/String; = "DownloadRequest"

.field public static final loggingInterceptor:Lcom/android/camera/resource/LoggingInterceptor;


# instance fields
.field public final downloadUrl:Ljava/lang/String;

.field public mProgressEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final outputPath:Ljava/lang/String;

.field public responseCall:Lokhttp3/Call;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/camera/resource/LoggingInterceptor;

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooOoo/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOoo/OooO0o;

    invoke-direct {v0, v1}, Lcom/android/camera/resource/LoggingInterceptor;-><init>(Lcom/android/camera/resource/LoggingInterceptor$Logger;)V

    sget-object v1, Lcom/android/camera/resource/LoggingInterceptor$Level;->BASIC:Lcom/android/camera/resource/LoggingInterceptor$Level;

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/resource/LoggingInterceptor;->setLevel(Lcom/android/camera/resource/LoggingInterceptor$Level;)Lcom/android/camera/resource/LoggingInterceptor;

    move-result-object v0

    sput-object v0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->loggingInterceptor:Lcom/android/camera/resource/LoggingInterceptor;

    .line 3
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->loggingInterceptor:Lcom/android/camera/resource/LoggingInterceptor;

    .line 7
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->CLIENT:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/resource/BaseObservableRequest;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->downloadUrl:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->outputPath:Ljava/lang/String;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DownloadRequest"

    .line 1
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->outputPath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)Lio/reactivex/ObservableEmitter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->mProgressEmitter:Lio/reactivex/ObservableEmitter;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;Lokhttp3/Call;)Lokhttp3/Call;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->responseCall:Lokhttp3/Call;

    return-object p1
.end method


# virtual methods
.method public synthetic OooO00o(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->mProgressEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method public observableProgress(I)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OooO0o0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooOoo/OooO0o0;-><init>(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {v0, v1, v2, p1}, Lio/reactivex/Observable;->sample(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public onDisposeCall()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/resource/BaseObservableRequest;->onDisposeCall()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->responseCall:Lokhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->responseCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void
.end method

.method public scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/resource/ResponseListener<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->outputPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->outputPath:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->outputPath:Ljava/lang/String;

    .line 3
    :goto_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start download: tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadRequest"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v1, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->CLIENT:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->responseCall:Lokhttp3/Call;

    .line 7
    new-instance v1, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$1;-><init>(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
