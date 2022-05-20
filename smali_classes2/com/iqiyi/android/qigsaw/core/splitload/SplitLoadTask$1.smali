.class public Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;
.super Ljava/lang/Object;
.source "SplitLoadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->access$000(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;

    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->access$100(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;)V

    .line 3
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;

    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->access$000(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
