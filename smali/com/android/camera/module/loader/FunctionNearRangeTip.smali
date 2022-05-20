.class public Lcom/android/camera/module/loader/FunctionNearRangeTip;
.super Lcom/android/camera/FuncPreviewMetadata;
.source "FunctionNearRangeTip.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/FuncPreviewMetadata<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Landroid/hardware/camera2/CaptureResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "FunctionNearRangeTip"


# instance fields
.field public mBottomPopupTips:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;",
            ">;"
        }
    .end annotation
.end field

.field public mDualController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/protocol/ModeProtocol$DualController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "near_range_dbg"

    .line 1
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    sput-boolean v0, Lcom/android/camera/module/loader/FunctionNearRangeTip;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/FuncPreviewMetadata;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xaf

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/FunctionNearRangeTip;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xb6

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DualController;

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/FunctionNearRangeTip;->mDualController:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private DEBUG(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/module/loader/FunctionNearRangeTip;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/FunctionNearRangeTip;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateSubTip(IZLjava/lang/Object;)V

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/FunctionNearRangeTip;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateSubTip(IZLjava/lang/Object;)V

    return-void
.end method

.method public onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/camera/FuncPreviewMetadata;->mModuleReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FuncPreviewMetadata;->mModuleReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_f

    .line 4
    iget-object v0, p0, Lcom/android/camera/FuncPreviewMetadata;->mModuleReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->supportNearRangeMode()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Lcom/android/camera/module/Camera2Module;->setNearRangeModeUIStatus(Z)V

    .line 7
    invoke-virtual {v0, v2}, Lcom/android/camera/module/Camera2Module;->setNearRangeMode(Z)V

    return-object p1

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/camera2/CaptureResultParser;->getFallbackRoleId(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    .line 9
    sget-object v1, Lcom/android/camera/module/loader/FunctionNearRangeTip;->TAG:Ljava/lang/String;

    const-string v4, "NearRangeMode:Not satisfied <fallback role id UW>!"

    invoke-direct {p0, v1, v4}, Lcom/android/camera/module/loader/FunctionNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v2}, Lcom/android/camera/module/Camera2Module;->setNearRangeMode(Z)V

    goto/16 :goto_3

    .line 11
    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/camera/module/Camera2Module;->setNearRangeMode(Z)V

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getBogusCameraId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    sget-object v1, Lcom/android/camera/module/loader/FunctionNearRangeTip;->TAG:Ljava/lang/String;

    const-string v4, "NearRangeMode:Not satisfed <back facing>!"

    invoke-direct {p0, v1, v4}, Lcom/android/camera/module/loader/FunctionNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    .line 14
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isNeedNearRangeTip()Z

    move-result v4

    if-nez v4, :cond_4

    .line 15
    sget-object v1, Lcom/android/camera/module/loader/FunctionNearRangeTip;->TAG:Ljava/lang/String;

    const-string v4, "NearRangeMode:isNeedNearRangeTip is false!"

    invoke-direct {p0, v1, v4}, Lcom/android/camera/module/loader/FunctionNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 16
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    const/16 v5, 0xa3

    if-eq v4, v5, :cond_5

    .line 17
    sget-object v1, Lcom/android/camera/module/loader/FunctionNearRangeTip;->TAG:Ljava/lang/String;

    const-string v4, "NearRangeMode:Not satisfed <capture mode>!"

    invoke-direct {p0, v1, v4}, Lcom/android/camera/module/loader/FunctionNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 18
    :cond_5
    sget-boolean v4, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v4, :cond_6

    .line 19
    sget-object v1, Lcom/android/camera/module/loader/FunctionNearRangeTip;->TAG:Ljava/lang/String;

    const-string v4, "NearRangeMode:Not satisfed <sat device>!"

    invoke-direct {p0, v1, v4}, Lcom/android/camera/module/loader/FunctionNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 20
    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 21
    sget-object v1, Lcom/android/camera/module/loader/FunctionNearRangeTip;->TAG:Ljava/lang/String;

    const-string v4, "NearRangeMode:Not satisfed <document mode>!"

    invoke-direct {p0, v1, v4}, Lcom/android/camera/module/loader/FunctionNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 22
    :cond_7
    iget-object v4, p0, Lcom/android/camera/module/loader/FunctionNearRangeTip;->mDualController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/camera/module/loader/FunctionNearRangeTip;->mDualController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$DualController;

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomPanelVisible()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 23
    sget-object v1, Lcom/android/camera/module/loader/FunctionNearRangeTip;->TAG:Ljava/lang/String;

    const-string v4, "NearRangeMode:Not satisfed <zoom slide>!"

    invoke-direct {p0, v1, v4}, Lcom/android/camera/module/loader/FunctionNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 24
    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xc2

    .line 25
    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v4, :cond_9

    .line 26
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_1

    :cond_9
    move v4, v2

    :goto_1
    if-eqz v4, :cond_a

    .line 27
    sget-object v1, Lcom/android/camera/module/loader/FunctionNearRangeTip;->TAG:Ljava/lang/String;

    const-string v4, "NearRangeMode:Not satisfed <beauty panel>!"

    invoke-direct {p0, v1, v4}, Lcom/android/camera/module/loader/FunctionNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 28
    :cond_a
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xb4

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz v4, :cond_b

    .line 29
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->isSeekBarVisible()Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v3

    goto :goto_2

    :cond_b
    move v4, v2

    :goto_2
    if-eqz v4, :cond_c

    .line 30
    sget-object v1, Lcom/android/camera/module/loader/FunctionNearRangeTip;->TAG:Ljava/lang/String;

    const-string v4, "NearRangeMode:Not satisfed <seek bar>!"

    invoke-direct {p0, v1, v4}, Lcom/android/camera/module/loader/FunctionNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    move v2, v1

    :goto_3
    if-eqz v2, :cond_d

    .line 31
    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionNearRangeTip;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionNearRangeTip;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->isSubTipShowing(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 32
    sget-object v1, Lcom/android/camera/module/loader/FunctionNearRangeTip;->TAG:Ljava/lang/String;

    const-string v3, "NearRangeMode:Enter near range mode"

    invoke-direct {p0, v1, v3}, Lcom/android/camera/module/loader/FunctionNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0000Ooo/OooO0O0;

    invoke-direct {v3, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0000Ooo/OooO0O0;-><init>(Lcom/android/camera/module/loader/FunctionNearRangeTip;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 34
    :cond_d
    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionNearRangeTip;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionNearRangeTip;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->isSubTipShowing(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 35
    sget-object v1, Lcom/android/camera/module/loader/FunctionNearRangeTip;->TAG:Ljava/lang/String;

    const-string v3, "NearRangeMode: hide near range mode tip"

    invoke-direct {p0, v1, v3}, Lcom/android/camera/module/loader/FunctionNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0000Ooo/OooO00o;

    invoke-direct {v3, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0000Ooo/OooO00o;-><init>(Lcom/android/camera/module/loader/FunctionNearRangeTip;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    :cond_e
    :goto_4
    invoke-virtual {v0, v2}, Lcom/android/camera/module/Camera2Module;->setNearRangeModeUIStatus(Z)V

    :cond_f
    return-object p1
.end method

.method public bridge synthetic onPreviewMetadata(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionNearRangeTip;->onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    return-object p1
.end method
