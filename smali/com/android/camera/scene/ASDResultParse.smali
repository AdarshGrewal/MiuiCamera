.class public abstract Lcom/android/camera/scene/ASDResultParse;
.super Ljava/lang/Object;
.source "ASDResultParse.java"

# interfaces
.implements Lcom/android/camera/scene/IResultParse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/scene/IResultParse<",
        "[",
        "Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;",
        ">;"
    }
.end annotation


# instance fields
.field public mDualController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/protocol/ModeProtocol$DualController;",
            ">;"
        }
    .end annotation
.end field

.field public mIsMacroModeEnable:Z

.field public final mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation
.end field

.field public mTips:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;",
            ">;"
        }
    .end annotation
.end field

.field public mTopAlert:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/protocol/ModeProtocol$TopAlert;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/BaseModule;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/scene/ASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/scene/ASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/scene/ASDResultParse;->mIsMacroModeEnable:Z

    :cond_0
    return-void
.end method

.method private getDualController()Lcom/android/camera/protocol/ModeProtocol$DualController;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/scene/ASDResultParse;->mDualController:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/scene/ASDResultParse;->mDualController:Ljava/lang/ref/WeakReference;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/scene/ASDResultParse;->mDualController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    return-object v0
.end method

.method private getTips()Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/scene/ASDResultParse;->mTips:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/scene/ASDResultParse;->mTips:Ljava/lang/ref/WeakReference;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/scene/ASDResultParse;->mTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    return-object v0
.end method


# virtual methods
.method public getTopAlert()Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/scene/ASDResultParse;->mTopAlert:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/scene/ASDResultParse;->mTopAlert:Ljava/lang/ref/WeakReference;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/scene/ASDResultParse;->mTopAlert:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    return-object v0
.end method

.method public isGeneralInterception()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/scene/ASDResultParse;->mIsMacroModeEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSuggestionIntercept(Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/scene/ASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/scene/ASDResultParse;->isGeneralInterception()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getBogusCameraId()I

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo p1, "no back camera!"

    invoke-static {p1}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    const-string/jumbo p1, "zoom > 1x!"

    invoke-static {p1}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    return v1

    :cond_3
    invoke-static {}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isAlreadyTip()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->type:I

    iget p1, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->value:I

    invoke-static {v2, p1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isCheckSceneEnable(II)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "A tip has occurred this time.!"

    invoke-static {p1}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/scene/ASDResultParse;->getTopAlert()Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/scene/ASDResultParse;->getTopAlert()Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f120430

    goto :goto_0

    :cond_5
    const v0, 0x7f12042f

    :goto_0
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isCurrentRecommendTipText(I)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "dirty tip is visible!"

    invoke-static {p1}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    return v1

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/scene/ASDResultParse;->getDualController()Lcom/android/camera/protocol/ModeProtocol$DualController;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/camera/scene/ASDResultParse;->getDualController()Lcom/android/camera/protocol/ModeProtocol$DualController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomPanelVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v1

    goto :goto_1

    :cond_7
    move p1, v0

    :goto_1
    if-eqz p1, :cond_8

    const-string p1, "Zoom bar is in effect, no prompt\uff01"

    invoke-static {p1}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    return v1

    :cond_8
    return v0
.end method
