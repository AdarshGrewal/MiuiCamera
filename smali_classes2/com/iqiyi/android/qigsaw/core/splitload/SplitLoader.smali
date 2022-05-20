.class public abstract Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;
.super Ljava/lang/Object;
.source "SplitLoader.java"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public loadCode(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public loadCode2(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;
        }
    .end annotation

    return-void
.end method

.method public final loadResources(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->loadResources(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    const/16 v1, -0x15

    invoke-direct {v0, v1, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method
