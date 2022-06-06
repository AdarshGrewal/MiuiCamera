.class public LOooO0O0/OooO00o/OooO00o/OooOOOO;
.super Ljava/lang/Object;
.source "LottieTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0O0/OooO00o/OooO00o/OooOOOO$OooO0O0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static OooO0o0:Ljava/util/concurrent/Executor;


# instance fields
.field public final OooO00o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LOooO0O0/OooO00o/OooO00o/OooOO0<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final OooO0O0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LOooO0O0/OooO00o/OooO00o/OooOO0<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public final OooO0OO:Landroid/os/Handler;

.field public volatile OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOOO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOOO<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0o0:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "LOooO0O0/OooO00o/OooO00o/OooOOO<",
            "TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LOooO0O0/OooO00o/OooO00o/OooOOOO;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "LOooO0O0/OooO00o/OooO00o/OooOOO<",
            "TT;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO00o:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0O0:Ljava/util/Set;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0OO:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOOO;

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO0O0/OooO00o/OooO00o/OooOOO;

    invoke-direct {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOOO;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, LOooO0O0/OooO00o/OooO00o/OooOOO;

    invoke-direct {p2, p1}, LOooO0O0/OooO00o/OooO00o/OooOOO;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p2}, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOOO;)V

    goto :goto_0

    :cond_0
    sget-object p2, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0o0:Ljava/util/concurrent/Executor;

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOOOO$OooO0O0;

    invoke-direct {v0, p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOOOO$OooO0O0;-><init>(LOooO0O0/OooO00o/OooO00o/OooOOOO;Ljava/util/concurrent/Callable;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic OooO00o(LOooO0O0/OooO00o/OooO00o/OooOOOO;)LOooO0O0/OooO00o/OooO00o/OooOOO;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOOO;

    return-object p0
.end method

.method private OooO00o()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0OO:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO00o/OooO00o/OooOOOO$OooO00o;

    invoke-direct {v1, p0}, LOooO0O0/OooO00o/OooO00o/OooOOOO$OooO00o;-><init>(LOooO0O0/OooO00o/OooO00o/OooOOOO;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private OooO00o(LOooO0O0/OooO00o/OooO00o/OooOOO;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOOO<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOOO;

    if-nez v0, :cond_0

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOOO;

    invoke-direct {p0}, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO00o()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A task may only be set once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic OooO00o(LOooO0O0/OooO00o/OooO00o/OooOOOO;LOooO0O0/OooO00o/OooO00o/OooOOO;)V
    .locals 0

    invoke-direct {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOOO;)V

    return-void
.end method

.method public static synthetic OooO00o(LOooO0O0/OooO00o/OooO00o/OooOOOO;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO00o(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic OooO00o(LOooO0O0/OooO00o/OooO00o/OooOOOO;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO00o(Ljava/lang/Throwable;)V

    return-void
.end method

.method private declared-synchronized OooO00o(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO00o:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0O0/OooO00o/OooO00o/OooOO0;

    invoke-interface {v1, p1}, LOooO0O0/OooO00o/OooO00o/OooOO0;->OooO00o(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized OooO00o(Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0O0:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Lottie encountered an error but no failure listener was added:"

    invoke-static {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO0OO(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0O0/OooO00o/OooO00o/OooOO0;

    invoke-interface {v1, p1}, LOooO0O0/OooO00o/OooO00o/OooOO0;->OooO00o(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized OooO00o(LOooO0O0/OooO00o/OooO00o/OooOO0;)LOooO0O0/OooO00o/OooO00o/OooOOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOO0<",
            "Ljava/lang/Throwable;",
            ">;)",
            "LOooO0O0/OooO00o/OooO00o/OooOOOO<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOOO;

    if-eqz v0, :cond_0

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOOO;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOOO;->OooO00o()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOOO;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOOO;->OooO00o()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, LOooO0O0/OooO00o/OooO00o/OooOO0;->OooO00o(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0O0:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooO0O0(LOooO0O0/OooO00o/OooO00o/OooOO0;)LOooO0O0/OooO00o/OooO00o/OooOOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOO0<",
            "TT;>;)",
            "LOooO0O0/OooO00o/OooO00o/OooOOOO<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOOO;

    if-eqz v0, :cond_0

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOOO;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOOO;->OooO0O0()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOOO;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOOO;->OooO0O0()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, LOooO0O0/OooO00o/OooO00o/OooOO0;->OooO00o(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO00o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooO0OO(LOooO0O0/OooO00o/OooO00o/OooOO0;)LOooO0O0/OooO00o/OooO00o/OooOOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOO0<",
            "Ljava/lang/Throwable;",
            ">;)",
            "LOooO0O0/OooO00o/OooO00o/OooOOOO<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0O0:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooO0Oo(LOooO0O0/OooO00o/OooO00o/OooOO0;)LOooO0O0/OooO00o/OooO00o/OooOOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOO0<",
            "TT;>;)",
            "LOooO0O0/OooO00o/OooO00o/OooOOOO<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO00o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
