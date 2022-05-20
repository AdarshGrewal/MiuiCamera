.class public Lcom/google/android/play/core/tasks/InvokeFailureListener;
.super Ljava/lang/Object;
.source "InvokeFailureListener.java"

# interfaces
.implements Lcom/google/android/play/core/tasks/InvocationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/InvocationListener<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final lock:Ljava/lang/Object;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mListener:Lcom/google/android/play/core/tasks/OnFailureListener;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnFailureListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/InvokeFailureListener;->lock:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/play/core/tasks/InvokeFailureListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Lcom/google/android/play/core/tasks/InvokeFailureListener;->mListener:Lcom/google/android/play/core/tasks/OnFailureListener;

    return-void
.end method


# virtual methods
.method public invoke(Lcom/google/android/play/core/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/play/core/tasks/InvokeFailureListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/InvokeFailureListener;->mListener:Lcom/google/android/play/core/tasks/OnFailureListener;

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/google/android/play/core/tasks/InvokeFailureListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/tasks/TaskFailureRunnable;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/tasks/TaskFailureRunnable;-><init>(Lcom/google/android/play/core/tasks/InvokeFailureListener;Lcom/google/android/play/core/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
