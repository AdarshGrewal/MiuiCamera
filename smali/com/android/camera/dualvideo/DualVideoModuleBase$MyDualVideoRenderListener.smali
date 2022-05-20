.class public Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;
.super Ljava/lang/Object;
.source "DualVideoModuleBase.java"

# interfaces
.implements Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/DualVideoModuleBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyDualVideoRenderListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 1

    .line 8
    invoke-virtual {p2}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 9
    invoke-virtual {p2, p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->setGridWindowLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 11
    invoke-virtual {p2, p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setGridWindowLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_FRONT:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_BACK:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0Oo(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->hasMiniComposeType()Z

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRecordingPaused()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "value_preview_mini"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "value_preview_equal"

    :goto_0
    const-string v1, "attr_compose_type"

    .line 3
    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sput-object v0, Lcom/android/camera/statistic/CameraStatUtils;->mLayoutType:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyLayoutTypeToRemoteDevice(I)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyLayoutTypeToRemoteDevice(I)V

    :goto_1
    return-void
.end method

.method public onAuxSourceImageAvailable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-static {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->access$000(Lcom/android/camera/dualvideo/DualVideoModuleBase;)Lcom/android/camera/dualvideo/render/RenderTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->subFrameAvailable()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->access$102(Lcom/android/camera/dualvideo/DualVideoModuleBase;Z)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->tryAnimBlackCover()V

    return-void
.end method

.method public onLayoutTypeChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOoo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOoo;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-static {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->access$200(Lcom/android/camera/dualvideo/DualVideoModuleBase;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-static {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->access$300(Lcom/android/camera/dualvideo/DualVideoModuleBase;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetTouchFocus(I)V

    :cond_0
    return-void
.end method

.method public onRenderRequestNeeded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->requestRender()V

    return-void
.end method

.method public onSwitchClicked()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSwitchClicked: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, LOooO00o/OooO0O0/OooO00o/Oooo0oo/Oooo000;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/Oooo000;

    .line 5
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    sget-object v3, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOoo0;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOoo0;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/dualvideo/render/LayoutType;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v4, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOoOO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOoOO;

    .line 8
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    sget-object v4, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOooO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOooO;

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/dualvideo/render/LayoutType;

    .line 10
    new-instance v3, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOooo;

    invoke-direct {v3, v2, v1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOooo;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o00000OO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o00000OO;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o00000Oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o00000Oo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->reStartCurrentModule()V

    return-void
.end method
