.class public final Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;
.super Ljava/lang/ref/WeakReference;
.source "ForkJoinTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExceptionNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava8/util/concurrent/ForkJoinTask<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final ex:Ljava/lang/Throwable;

.field public final hashCode:I

.field public next:Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;

.field public final thrower:J


# direct methods
.method public constructor <init>(Ljava8/util/concurrent/ForkJoinTask;Ljava/lang/Throwable;Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/ForkJoinTask<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava8/util/concurrent/ForkJoinTask<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    iput-object p2, p0, Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    .line 3
    iput-object p3, p0, Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p2

    iput-wide p2, p0, Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;->thrower:J

    .line 5
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;->hashCode:I

    return-void
.end method
