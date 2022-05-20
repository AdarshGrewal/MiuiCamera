.class public Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$1;
.super Ljava/lang/Object;
.source "SplitCompatResourcesLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->installSplitResDirs(Landroid/content/Context;Landroid/content/res/Resources;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$resources:Landroid/content/res/Resources;

.field public final synthetic val$splitResPaths:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$1;->val$resources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$1;->val$splitResPaths:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$1;->val$resources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$1;->val$splitResPaths:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$V14;->access$100(Landroid/content/Context;Landroid/content/res/Resources;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->access$200()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 5
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_1
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
