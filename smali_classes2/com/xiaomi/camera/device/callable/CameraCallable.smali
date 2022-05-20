.class public abstract Lcom/xiaomi/camera/device/callable/CameraCallable;
.super Ljava/lang/Object;
.source "CameraCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mBeginning:J

.field public final mCallbackHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public final mCameraId:Ljava/lang/String;

.field public final mCameraListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/camera/device/callable/CallableListener<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/camera/device/callable/CallableListener<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/camera/device/callable/CameraCallable;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/camera/device/callable/CallableListener<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraId:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraListener:Ljava/lang/ref/WeakReference;

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCallbackHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, p0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/xiaomi/camera/device/callable/CallableReturn;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->callback(Lcom/xiaomi/camera/device/callable/CallableReturn;)V

    return-void
.end method

.method public abstract call()Lcom/xiaomi/camera/device/callable/CallableReturn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/camera/device/callable/CallableReturn<",
            "TT;>;"
        }
    .end annotation
.end method

.method public callback(Lcom/xiaomi/camera/device/callable/CallableReturn;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/camera/device/callable/CallableReturn<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mBeginning:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/device/callable/CallableListener;

    .line 3
    iget-object v3, p1, Lcom/xiaomi/camera/device/callable/CallableReturn;->exception:Ljava/lang/Exception;

    const-string v4, ")"

    const-string v5, " (dur: "

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure: cid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/camera/device/callable/CallableReturn;->exception:Ljava/lang/Exception;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_0

    .line 5
    iget-object p1, p1, Lcom/xiaomi/camera/device/callable/CallableReturn;->exception:Ljava/lang/Exception;

    invoke-interface {v2, p1}, Lcom/xiaomi/camera/device/callable/CallableListener;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Success: cid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    .line 7
    iget-object p1, p1, Lcom/xiaomi/camera/device/callable/CallableReturn;->value:Ljava/lang/Object;

    invoke-interface {v2, p1}, Lcom/xiaomi/camera/device/callable/CallableListener;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/device/CameraHandlerThread;

    invoke-virtual {v0}, Lcom/xiaomi/camera/device/CameraHandlerThread;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public postCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCallbackHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E: cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mBeginning:J

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->call()Lcom/xiaomi/camera/device/callable/CallableReturn;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X: cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (dur: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;->mBeginning:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v1, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0Oo/OooO00o;

    invoke-direct {v1, p0, v0}, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0Oo/OooO00o;-><init>(Lcom/xiaomi/camera/device/callable/CameraCallable;Lcom/xiaomi/camera/device/callable/CallableReturn;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method
