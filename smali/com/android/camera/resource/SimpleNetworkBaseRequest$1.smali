.class public Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;
.super Ljava/lang/Object;
.source "SimpleNetworkBaseRequest.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/resource/SimpleNetworkBaseRequest;->scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/resource/SimpleNetworkBaseRequest;

.field public final synthetic val$listener:Lcom/android/camera/resource/ResponseListener;

.field public final synthetic val$t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/camera/resource/SimpleNetworkBaseRequest;Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->this$0:Lcom/android/camera/resource/SimpleNetworkBaseRequest;

    iput-object p2, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$listener:Lcom/android/camera/resource/ResponseListener;

    iput-object p3, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    const-string p1, "SimpleNetworkBaseRequest"

    const-string/jumbo v0, "scheduleRequest onFailure"

    .line 1
    invoke-static {p1, v0, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$listener:Lcom/android/camera/resource/ResponseListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, p2}, Lcom/android/camera/resource/ResponseListener;->onResponseError(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$listener:Lcom/android/camera/resource/ResponseListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, p2}, Lcom/android/camera/resource/ResponseListener;->onResponseError(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->this$0:Lcom/android/camera/resource/SimpleNetworkBaseRequest;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$t:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/resource/SimpleNetworkBaseRequest;->process(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$listener:Lcom/android/camera/resource/ResponseListener;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$listener:Lcom/android/camera/resource/ResponseListener;

    iget-object v1, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$t:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/android/camera/resource/ResponseListener;->onResponse(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lcom/android/camera/resource/BaseRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$listener:Lcom/android/camera/resource/ResponseListener;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0, p2}, Lcom/android/camera/resource/ResponseListener;->onResponseError(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/android/camera/resource/SimpleNetworkBaseRequest$1;->val$listener:Lcom/android/camera/resource/ResponseListener;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/android/camera/resource/BaseRequestException;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/camera/resource/ResponseListener;->onResponseError(ILjava/lang/String;Ljava/lang/Object;)V

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    return-void
.end method
