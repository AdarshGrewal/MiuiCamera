.class public Lcom/android/camera/module/Camera2Module$StopTimerBurstRunnable;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StopTimerBurstRunnable"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StopTimerBurstRunnable"


# instance fields
.field public final totalCount:I

.field public final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$StopTimerBurstRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    .line 4
    iput p2, p0, Lcom/android/camera/module/Camera2Module$StopTimerBurstRunnable;->totalCount:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;ILcom/android/camera/module/Camera2Module$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/Camera2Module$StopTimerBurstRunnable;-><init>(Lcom/android/camera/module/Camera2Module;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$StopTimerBurstRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    const-string v0, "StopTimerBurstRunnable"

    const-string/jumbo v1, "run: module is null, returning."

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$6200(Lcom/android/camera/module/Camera2Module;)V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/Camera2Module$StopTimerBurstRunnable;->totalCount:I

    invoke-virtual {v0, v1}, Lcom/android/camera/timerburst/TimerBurstController;->decreaseCount(I)V

    return-void
.end method
