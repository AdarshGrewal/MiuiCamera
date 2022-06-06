.class public Lcom/android/camera/features/mimojis/mvp/data/source/local/TasksLocalDataSource;
.super Ljava/lang/Object;
.source "TasksLocalDataSource.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;


# static fields
.field public static INSTANCE:Lcom/android/camera/features/mimojis/mvp/data/source/local/TasksLocalDataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/camera/features/mimojis/mvp/data/source/local/TasksLocalDataSource;
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/mvp/data/source/local/TasksLocalDataSource;->INSTANCE:Lcom/android/camera/features/mimojis/mvp/data/source/local/TasksLocalDataSource;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/features/mimojis/mvp/data/source/local/TasksLocalDataSource;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mvp/data/source/local/TasksLocalDataSource;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/camera/features/mimojis/mvp/data/source/local/TasksLocalDataSource;->INSTANCE:Lcom/android/camera/features/mimojis/mvp/data/source/local/TasksLocalDataSource;

    :cond_0
    sget-object p0, Lcom/android/camera/features/mimojis/mvp/data/source/local/TasksLocalDataSource;->INSTANCE:Lcom/android/camera/features/mimojis/mvp/data/source/local/TasksLocalDataSource;

    return-object p0
.end method


# virtual methods
.method public activateTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V
    .locals 0

    return-void
.end method

.method public activateTask(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public clearCompletedTasks()V
    .locals 0

    return-void
.end method

.method public completeTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V
    .locals 0

    return-void
.end method

.method public completeTask(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public deleteAllTasks()V
    .locals 0

    return-void
.end method

.method public deleteTask(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getTask(Ljava/lang/String;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;)V
    .locals 0

    invoke-interface {p2}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;->onDataNotAvailable()V

    return-void
.end method

.method public getTasks(Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;->onDataNotAvailable()V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;->onTasksLoaded(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public refreshTasks()V
    .locals 0

    return-void
.end method

.method public saveTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V
    .locals 0

    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
