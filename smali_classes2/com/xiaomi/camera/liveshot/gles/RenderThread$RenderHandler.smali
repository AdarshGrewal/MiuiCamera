.class public Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;
.super Landroid/os/Handler;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/liveshot/gles/RenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderHandler"
.end annotation


# instance fields
.field public final mRenderThread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/camera/liveshot/gles/RenderThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/liveshot/gles/RenderThread;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;->mRenderThread:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/liveshot/gles/RenderThread;Lcom/xiaomi/camera/liveshot/gles/RenderThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;-><init>(Lcom/xiaomi/camera/liveshot/gles/RenderThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/gles/RenderThread$RenderHandler;->mRenderThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_4

    const/16 v2, 0x20

    if-eq v1, v2, :cond_3

    const/16 p1, 0x30

    if-eq v1, p1, :cond_2

    const/16 p1, 0x40

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->access$500(Lcom/xiaomi/camera/liveshot/gles/RenderThread;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->access$400(Lcom/xiaomi/camera/liveshot/gles/RenderThread;)V

    goto :goto_0

    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->access$300(Lcom/xiaomi/camera/liveshot/gles/RenderThread;I)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->access$100(Lcom/xiaomi/camera/liveshot/gles/RenderThread;)V

    invoke-static {v0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->access$200(Lcom/xiaomi/camera/liveshot/gles/RenderThread;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    :goto_0
    return-void
.end method
