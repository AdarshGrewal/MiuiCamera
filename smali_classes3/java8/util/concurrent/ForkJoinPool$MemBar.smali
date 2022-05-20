.class public final Ljava8/util/concurrent/ForkJoinPool$MemBar;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemBar"
.end annotation


# static fields
.field public static final OFF:J

.field public static final U:Lsun/misc/Unsafe;

.field public static final x:Ljava8/util/concurrent/Mock;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava8/util/concurrent/Mock;

    invoke-direct {v0}, Ljava8/util/concurrent/Mock;-><init>()V

    sput-object v0, Ljava8/util/concurrent/ForkJoinPool$MemBar;->x:Ljava8/util/concurrent/Mock;

    .line 2
    sget-object v0, Ljava8/util/concurrent/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/concurrent/ForkJoinPool$MemBar;->U:Lsun/misc/Unsafe;

    .line 3
    :try_start_0
    const-class v1, Ljava8/util/concurrent/Mock;

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/concurrent/ForkJoinPool$MemBar;->OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fullFence()V
    .locals 5

    .line 1
    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$MemBar;->U:Lsun/misc/Unsafe;

    sget-object v1, Ljava8/util/concurrent/ForkJoinPool$MemBar;->x:Ljava8/util/concurrent/Mock;

    sget-wide v2, Ljava8/util/concurrent/ForkJoinPool$MemBar;->OFF:J

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static loadFence()V
    .locals 4

    .line 1
    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$MemBar;->U:Lsun/misc/Unsafe;

    sget-object v1, Ljava8/util/concurrent/ForkJoinPool$MemBar;->x:Ljava8/util/concurrent/Mock;

    sget-wide v2, Ljava8/util/concurrent/ForkJoinPool$MemBar;->OFF:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    return-void
.end method

.method public static storeFence()V
    .locals 5

    .line 1
    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$MemBar;->U:Lsun/misc/Unsafe;

    sget-object v1, Ljava8/util/concurrent/ForkJoinPool$MemBar;->x:Ljava8/util/concurrent/Mock;

    sget-wide v2, Ljava8/util/concurrent/ForkJoinPool$MemBar;->OFF:J

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    return-void
.end method
