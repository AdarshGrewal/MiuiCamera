.class public final Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
.super Ljava8/util/concurrent/ForkJoinWorkerThread;
.source "ForkJoinWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/ForkJoinWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InnocuousForkJoinWorkerThread"
.end annotation


# static fields
.field public static final INNOCUOUS_ACC:Ljava/security/AccessControlContext;

.field public static final innocuousThreadGroup:Ljava/lang/ThreadGroup;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread$1;

    invoke-direct {v0}, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread$1;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    sput-object v0, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->innocuousThreadGroup:Ljava/lang/ThreadGroup;

    .line 3
    new-instance v0, Ljava/security/AccessControlContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/ProtectionDomain;

    new-instance v2, Ljava/security/ProtectionDomain;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    sput-object v0, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->INNOCUOUS_ACC:Ljava/security/AccessControlContext;

    return-void
.end method

.method public constructor <init>(Ljava8/util/concurrent/ForkJoinPool;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->innocuousThreadGroup:Ljava/lang/ThreadGroup;

    sget-object v2, Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->INNOCUOUS_ACC:Ljava/security/AccessControlContext;

    .line 2
    invoke-direct {p0, p1, v0, v1, v2}, Ljava8/util/concurrent/ForkJoinWorkerThread;-><init>(Ljava8/util/concurrent/ForkJoinPool;Ljava/lang/ClassLoader;Ljava/lang/ThreadGroup;Ljava/security/AccessControlContext;)V

    return-void
.end method


# virtual methods
.method public afterTopLevelExec()V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava8/util/concurrent/TLRandom;->eraseThreadLocals(Ljava/lang/Thread;)V

    return-void
.end method

.method public setContextClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "setContextClassLoader"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    return-void
.end method
