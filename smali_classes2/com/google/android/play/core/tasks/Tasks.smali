.class public Lcom/google/android/play/core/tasks/Tasks;
.super Ljava/lang/Object;
.source "Tasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTaskListener(Lcom/google/android/play/core/tasks/Task;Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/Task<",
            "*>;",
            "Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->sExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    .line 2
    sget-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->sExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method public static await(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/tasks/Task<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->getResult(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;-><init>(Lcom/google/android/play/core/tasks/Tasks$1;)V

    .line 4
    invoke-static {p0, v0}, Lcom/google/android/play/core/tasks/Tasks;->addTaskListener(Lcom/google/android/play/core/tasks/Task;Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;->await()V

    .line 6
    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->getResult(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Task must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static await(Lcom/google/android/play/core/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/tasks/Task<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    if-eqz p0, :cond_3

    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->getResult(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;-><init>(Lcom/google/android/play/core/tasks/Tasks$1;)V

    .line 11
    invoke-static {p0, v0}, Lcom/google/android/play/core/tasks/Tasks;->addTaskListener(Lcom/google/android/play/core/tasks/Task;Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;)V

    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;->awaitTimeout(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->getResult(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 14
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "TimeUnit must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Task must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createTaskAndSetResult(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/play/core/tasks/TaskImpl;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/tasks/TaskImpl;->setResult(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getResult(Lcom/google/android/play/core/tasks/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/tasks/Task<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
