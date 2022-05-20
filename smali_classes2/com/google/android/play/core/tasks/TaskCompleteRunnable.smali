.class public final Lcom/google/android/play/core/tasks/TaskCompleteRunnable;
.super Ljava/lang/Object;
.source "TaskCompleteRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mCompleteExecutor:Lcom/google/android/play/core/tasks/InvokeCompleteListener;

.field public final mTask:Lcom/google/android/play/core/tasks/Task;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/tasks/InvokeCompleteListener;Lcom/google/android/play/core/tasks/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/play/core/tasks/TaskCompleteRunnable;->mCompleteExecutor:Lcom/google/android/play/core/tasks/InvokeCompleteListener;

    .line 3
    iput-object p2, p0, Lcom/google/android/play/core/tasks/TaskCompleteRunnable;->mTask:Lcom/google/android/play/core/tasks/Task;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/TaskCompleteRunnable;->mCompleteExecutor:Lcom/google/android/play/core/tasks/InvokeCompleteListener;

    iget-object v0, v0, Lcom/google/android/play/core/tasks/InvokeCompleteListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/TaskCompleteRunnable;->mCompleteExecutor:Lcom/google/android/play/core/tasks/InvokeCompleteListener;

    iget-object v1, v1, Lcom/google/android/play/core/tasks/InvokeCompleteListener;->mListener:Lcom/google/android/play/core/tasks/OnCompleteListener;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/play/core/tasks/TaskCompleteRunnable;->mCompleteExecutor:Lcom/google/android/play/core/tasks/InvokeCompleteListener;

    iget-object v1, v1, Lcom/google/android/play/core/tasks/InvokeCompleteListener;->mListener:Lcom/google/android/play/core/tasks/OnCompleteListener;

    iget-object v2, p0, Lcom/google/android/play/core/tasks/TaskCompleteRunnable;->mTask:Lcom/google/android/play/core/tasks/Task;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/tasks/OnCompleteListener;->onComplete(Lcom/google/android/play/core/tasks/Task;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
