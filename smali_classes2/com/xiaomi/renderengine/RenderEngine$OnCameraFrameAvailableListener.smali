.class public Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;
.super Ljava/lang/Object;
.source "RenderEngine.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/renderengine/RenderEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnCameraFrameAvailableListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/renderengine/RenderEngine;


# direct methods
.method public constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/RenderEngine$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 2
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1}, Lcom/xiaomi/renderengine/RenderEngine;->access$200(Lcom/xiaomi/renderengine/RenderEngine;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1}, Lcom/xiaomi/renderengine/RenderEngine;->access$300(Lcom/xiaomi/renderengine/RenderEngine;)Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/renderengine/RenderEngine$StateCallback;->onFrameAvailable()V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaomi/renderengine/RenderEngine;->access$202(Lcom/xiaomi/renderengine/RenderEngine;Z)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1}, Lcom/xiaomi/renderengine/RenderEngine;->access$400(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    const-string v0, "RenderEngine"

    const-string v1, "onFrameAvailable first frame arrived."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {v0}, Lcom/xiaomi/renderengine/RenderEngine;->access$100(Lcom/xiaomi/renderengine/RenderEngine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0o/OooO0O0/OooO0o0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0o/OooO0O0/OooO0o0;-><init>(Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
