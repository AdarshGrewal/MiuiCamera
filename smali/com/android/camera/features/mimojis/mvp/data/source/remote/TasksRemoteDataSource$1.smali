.class public Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$1;
.super Ljava/lang/Object;
.source "TasksRemoteDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->getTasks(Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;

.field public final synthetic val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$1;->this$0:Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$1;->val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$1;->val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;->onTasksLoaded(Ljava/util/List;)V

    return-void
.end method
