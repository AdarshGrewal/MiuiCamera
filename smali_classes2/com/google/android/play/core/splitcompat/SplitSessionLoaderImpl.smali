.class public final Lcom/google/android/play/core/splitcompat/SplitSessionLoaderImpl;
.super Ljava/lang/Object;
.source "SplitSessionLoaderImpl.java"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/SplitSessionLoader;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/SplitSessionLoaderImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public load(Ljava/util/List;Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/play/core/splitcompat/SplitCompat;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/SplitSessionLoaderImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/splitcompat/SplitLoadSessionTask;

    invoke-direct {v1, p1, p2}, Lcom/google/android/play/core/splitcompat/SplitLoadSessionTask;-><init>(Ljava/util/List;Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Ingestion should only be called in SplitCompat mode."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
