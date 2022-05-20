.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOoo/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OooO0o0;->OooO00o:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OooO0o0;->OooO00o:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-virtual {v0, p1}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->OooO00o(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
