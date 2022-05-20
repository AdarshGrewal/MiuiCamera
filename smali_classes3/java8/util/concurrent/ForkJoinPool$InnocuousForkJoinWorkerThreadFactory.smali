.class public final Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava8/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InnocuousForkJoinWorkerThreadFactory"
.end annotation


# static fields
.field public static final ACC:Ljava/security/AccessControlContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/security/Permission;

    .line 1
    sget-object v1, Ljava8/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "enableContextClassLoaderOverride"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "modifyThreadGroup"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "setContextClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava8/util/concurrent/ForkJoinPool;->contextWithPermissions([Ljava/security/Permission;)Ljava/security/AccessControlContext;

    move-result-object v0

    sput-object v0, Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;->ACC:Ljava/security/AccessControlContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava8/util/concurrent/ForkJoinPool$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava8/util/concurrent/ForkJoinPool;)Ljava8/util/concurrent/ForkJoinWorkerThread;
    .locals 1

    .line 1
    new-instance v0, Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;-><init>(Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;Ljava8/util/concurrent/ForkJoinPool;)V

    sget-object p1, Ljava8/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;->ACC:Ljava/security/AccessControlContext;

    invoke-static {v0, p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/concurrent/ForkJoinWorkerThread;

    return-object p1
.end method
