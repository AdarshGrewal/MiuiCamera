.class public final Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl;
.super Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;
.source "SplitLoaderImpl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;-><init>(Landroid/content/Context;)V

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

    .line 1
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->create(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    const/16 p3, -0x1b

    invoke-direct {p2, p3, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method
