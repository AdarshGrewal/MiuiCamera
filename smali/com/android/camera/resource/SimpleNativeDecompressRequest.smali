.class public Lcom/android/camera/resource/SimpleNativeDecompressRequest;
.super Lcom/android/camera/resource/BaseObservableRequest;
.source "SimpleNativeDecompressRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/camera/resource/BaseResourceItem;",
        ">",
        "Lcom/android/camera/resource/BaseObservableRequest<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public mArchivePath:Ljava/lang/String;

.field public mTargetPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/resource/BaseObservableRequest;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/resource/SimpleNativeDecompressRequest;->mArchivePath:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/camera/resource/SimpleNativeDecompressRequest;->mTargetPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public scheduleRequest(Lcom/android/camera/resource/ResponseListener;Lcom/android/camera/resource/BaseResourceItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/resource/ResponseListener<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/resource/SimpleNativeDecompressRequest;->mArchivePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/resource/SimpleNativeDecompressRequest;->mTargetPath:Ljava/lang/String;

    const v2, 0x8000

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->verifySdcardZip(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/resource/SimpleNativeDecompressRequest;->mTargetPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/android/camera/resource/BaseResourceItem;->onDecompressFinished(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/android/camera/resource/ResponseListener;->onResponseError(ILjava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, p2, v0}, Lcom/android/camera/resource/ResponseListener;->onResponse(Ljava/lang/Object;Z)V

    return-void
.end method

.method public bridge synthetic scheduleRequest(Lcom/android/camera/resource/ResponseListener;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/resource/BaseResourceItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/resource/SimpleNativeDecompressRequest;->scheduleRequest(Lcom/android/camera/resource/ResponseListener;Lcom/android/camera/resource/BaseResourceItem;)V

    return-void
.end method
