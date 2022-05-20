.class public Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$2;
.super Ljava/lang/Object;
.source "TasksRemoteDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->getTask(Ljava/lang/String;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;

.field public final synthetic val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;

.field public final synthetic val$task:Lcom/android/camera/features/mimojis/mvp/data/Task;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;Lcom/android/camera/features/mimojis/mvp/data/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$2;->this$0:Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$2;->val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;

    iput-object p3, p0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$2;->val$task:Lcom/android/camera/features/mimojis/mvp/data/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$2;->val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$2;->val$task:Lcom/android/camera/features/mimojis/mvp/data/Task;

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;->onTaskLoaded(Lcom/android/camera/features/mimojis/mvp/data/Task;)V

    return-void
.end method
