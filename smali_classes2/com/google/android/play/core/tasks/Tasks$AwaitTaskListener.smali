.class public Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnFailureListener;
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/tasks/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AwaitTaskListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnFailureListener;",
        "Lcom/google/android/play/core/tasks/OnSuccessListener<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/tasks/Tasks$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public await()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public awaitTimeout(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/tasks/Tasks$AwaitTaskListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
