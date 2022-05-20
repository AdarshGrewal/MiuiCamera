.class public Lcom/android/camera/Camera$2;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/android/camera/module/loader/NullHolder<",
        "Lcom/android/camera/module/Module;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/camera/module/loader/NullHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/Module;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->getException()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$100(Lcom/android/camera/Camera;I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iput-object v1, p1, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 5
    iput-object v1, p1, Lcom/android/camera/ActivityBase;->mCurrentModeUI:Lcom/android/camera/fragment/modeui/IModeUI;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->setCurrentModule(Lcom/android/camera/module/Module;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object p1, p1, Lcom/android/camera/ActivityBase;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/ui/RenderEngineAdapter;->resetFrameAvailableFlag()V

    .line 10
    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertMainThread()V

    .line 11
    iget-object p1, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1, v1}, Lcom/android/camera/Camera;->access$202(Lcom/android/camera/Camera;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataCloudMgr()Lcom/android/camera/data/cloud/DataCloud$CloudManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/cloud/DataCloud$CloudManager;->fillCloudValues()V

    .line 13
    iget-object p1, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraParallelProcessEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    .line 16
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    .line 17
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x3a1

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    if-eqz p1, :cond_3

    .line 19
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->init()V

    .line 20
    iget-object p1, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    iget-object p1, p1, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 21
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMoreModeStyle()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 22
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa01

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    if-eqz p1, :cond_4

    .line 24
    iget-object v0, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    const v1, 0x7f0a0316

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PopupMenuLayout;

    .line 25
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->addOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/android/camera/Camera$2;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/Camera;->access$300(Lcom/android/camera/Camera;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraSetupConsumer#accept: switch module done"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera$2;->accept(Lcom/android/camera/module/loader/NullHolder;)V

    return-void
.end method
