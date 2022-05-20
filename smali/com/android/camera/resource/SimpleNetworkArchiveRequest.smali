.class public Lcom/android/camera/resource/SimpleNetworkArchiveRequest;
.super Lcom/android/camera/resource/SimpleNetworkDownloadRequest;
.source "SimpleNetworkArchiveRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/resource/SimpleNetworkDownloadRequest<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public mEmitter:Lio/reactivex/ObservableEmitter;

.field public mOutPutObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
