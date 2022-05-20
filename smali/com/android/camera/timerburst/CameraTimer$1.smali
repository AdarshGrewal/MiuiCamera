.class public Lcom/android/camera/timerburst/CameraTimer$1;
.super Ljava/lang/Object;
.source "CameraTimer.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/timerburst/CameraTimer;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/timerburst/CameraTimer;


# direct methods
.method public constructor <init>(Lcom/android/camera/timerburst/CameraTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/timerburst/CameraTimer$1;->this$0:Lcom/android/camera/timerburst/CameraTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/timerburst/CameraTimer$1;->this$0:Lcom/android/camera/timerburst/CameraTimer;

    invoke-static {v0}, Lcom/android/camera/timerburst/CameraTimer;->access$100(Lcom/android/camera/timerburst/CameraTimer;)Lio/reactivex/Observer;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/timerburst/CameraTimer$1;->this$0:Lcom/android/camera/timerburst/CameraTimer;

    invoke-static {v0}, Lcom/android/camera/timerburst/CameraTimer;->access$100(Lcom/android/camera/timerburst/CameraTimer;)Lio/reactivex/Observer;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .locals 4

    .line 2
    iget-object p1, p0, Lcom/android/camera/timerburst/CameraTimer$1;->this$0:Lcom/android/camera/timerburst/CameraTimer;

    invoke-static {p1}, Lcom/android/camera/timerburst/CameraTimer;->access$200(Lcom/android/camera/timerburst/CameraTimer;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/timerburst/CameraTimer$1;->this$0:Lcom/android/camera/timerburst/CameraTimer;

    invoke-static {p1}, Lcom/android/camera/timerburst/CameraTimer;->access$300(Lcom/android/camera/timerburst/CameraTimer;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/android/camera/timerburst/CameraTimer;->access$302(Lcom/android/camera/timerburst/CameraTimer;J)J

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/camera/timerburst/CameraTimer$1;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/timerburst/CameraTimer$1;->this$0:Lcom/android/camera/timerburst/CameraTimer;

    invoke-static {v0, p1}, Lcom/android/camera/timerburst/CameraTimer;->access$002(Lcom/android/camera/timerburst/CameraTimer;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 2
    iget-object v0, p0, Lcom/android/camera/timerburst/CameraTimer$1;->this$0:Lcom/android/camera/timerburst/CameraTimer;

    invoke-static {v0}, Lcom/android/camera/timerburst/CameraTimer;->access$100(Lcom/android/camera/timerburst/CameraTimer;)Lio/reactivex/Observer;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    const-string p1, "CameraTimer"

    const-string/jumbo v0, "onSubscribe"

    .line 3
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
