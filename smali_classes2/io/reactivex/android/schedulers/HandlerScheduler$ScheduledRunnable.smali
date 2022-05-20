.class public final Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;
.super Ljava/lang/Object;
.source "HandlerScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/android/schedulers/HandlerScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScheduledRunnable"
.end annotation


# instance fields
.field public final delegate:Ljava/lang/Runnable;

.field public volatile disposed:Z

.field public final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;->handler:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;->delegate:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;->disposed:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;->disposed:Z

    return v0
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;->delegate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fatal Exception thrown on Scheduler."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
