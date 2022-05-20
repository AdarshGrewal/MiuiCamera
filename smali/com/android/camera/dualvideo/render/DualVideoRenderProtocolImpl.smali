.class public Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;
.super Ljava/lang/Object;
.source "DualVideoRenderProtocolImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;


# static fields
.field public static final TAG:Ljava/lang/String; = "DualVideoRenderProtocol"


# instance fields
.field public final mRenderManager:Lcom/android/camera/dualvideo/render/RenderManager;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/RenderManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;->mRenderManager:Lcom/android/camera/dualvideo/render/RenderManager;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->setResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mCameraId:I

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private restoreData()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooooOo;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooooOo;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->removeExternalConfig(I)V

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->refreshSelectData()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getRenderManager()Lcom/android/camera/dualvideo/render/RenderManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;->mRenderManager:Lcom/android/camera/dualvideo/render/RenderManager;

    return-object v0
.end method

.method public registerProtocol()V
    .locals 2

    const-string v0, "DualVideoRenderProtocol"

    const-string/jumbo v1, "registerProtocol: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1ae

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    const-string v0, "DualVideoRenderProtocol"

    const-string/jumbo v1, "unRegisterProtocol: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setmDrawGridWindow(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;->getRenderManager()Lcom/android/camera/dualvideo/render/RenderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/RenderManager;->release()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;->restoreData()V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1ae

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
