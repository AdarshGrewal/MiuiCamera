.class public Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;
.super Ljava/lang/Object;
.source "TasksRepository.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->getTasksFromRemoteDataSource(Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

.field public final synthetic val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;->this$0:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;->val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataNotAvailable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;->val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;->onDataNotAvailable()V

    return-void
.end method

.method public onTasksLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mvp/data/Task;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;->this$0:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->access$000(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;->this$0:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->access$300(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;->val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;->this$0:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;->onTasksLoaded(Ljava/util/List;)V

    return-void
.end method
