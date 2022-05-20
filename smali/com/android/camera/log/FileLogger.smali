.class public Lcom/android/camera/log/FileLogger;
.super Ljava/lang/Object;
.source "FileLogger.java"


# static fields
.field public static BASE_FORMAT_TAG:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "FileLogger"

.field public static final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public static mLogger:Lmiuix/util/Log$Facade;

.field public static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooOOO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOO0/OooOOO;

    sput-object v0, Lcom/android/camera/log/FileLogger;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lcom/android/camera/log/FileLogger;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    sget-object v9, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO0oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO0oo;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/android/camera/log/FileLogger;->BASE_FORMAT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "file-logger"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

.method public static synthetic OooO00o(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "rejectedExecution "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileLogger"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 6
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    const-string v1, ""

    invoke-virtual {v0, p0, v1, p1}, Lmiuix/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic OooO0O0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic OooO0O0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic OooO0OO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic OooO0OO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic OooO0Oo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic OooO0Oo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic OooO0o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic OooO0o0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1}, Lmiuix/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic OooO0o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    invoke-virtual {v0, p0, p1, p2}, Lmiuix/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooOO0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooOO0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooOOO0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooOOO0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 7
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 12
    :cond_2
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO0o0;

    invoke-direct {v1, p0, p1, p2}, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO0o0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lcom/android/camera/log/FileLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO0Oo;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO0Oo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 7
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 12
    :cond_2
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO0o;

    invoke-direct {v1, p0, p1, p2}, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO0o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lcom/android/camera/log/FileLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 5
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO0oO;

    invoke-direct {v1, p0, p1, p2}, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO0oO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lmiuix/util/Log;->getFileLogger(Landroid/content/Context;)Lmiuix/util/Log$Facade;

    move-result-object p0

    sput-object p0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 3
    invoke-static {p1, p2}, Lcom/android/camera/log/FileLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-static {p1, p2}, Lcom/android/camera/log/FileLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-static {p1, p2}, Lcom/android/camera/log/FileLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-static {p1, p2}, Lcom/android/camera/log/FileLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :pswitch_3
    invoke-static {p1, p2}, Lcom/android/camera/log/FileLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :pswitch_4
    invoke-static {p1, p2}, Lcom/android/camera/log/FileLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooOO0O;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooOO0O;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 5
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooOO0o;

    invoke-direct {v1, p0, p1, p2}, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooOO0o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO0OO;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO0OO;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 7
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 12
    :cond_2
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO00o;

    invoke-direct {v1, p0, p1, p2}, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lcom/android/camera/log/FileLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 14
    sget-object v0, Lcom/android/camera/log/FileLogger;->mLogger:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 15
    :cond_1
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->wrapTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    sget-object v0, Lcom/android/camera/log/FileLogger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO0O0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooOO0/OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static wrapTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/log/FileLogger;->BASE_FORMAT_TAG:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-%d] - %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/log/FileLogger;->BASE_FORMAT_TAG:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v1, Lcom/android/camera/log/FileLogger;->BASE_FORMAT_TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
