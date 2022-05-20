.class public Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;
.super Ljava/lang/Object;
.source "RecordingStateChangeImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$RecordState;


# static fields
.field public static final TAG:Ljava/lang/String; = "RecordingState"


# instance fields
.field public mActivity:Lcom/android/camera/ActivityBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getCurrentModuleIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    const/16 v0, 0xa0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v0

    :goto_0
    return v0
.end method

.method private hideHint()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f1203ae

    goto :goto_0

    :cond_0
    const v2, 0x7f120687

    :goto_0
    const-string v3, "esp_display"

    .line 4
    invoke-interface {v0, v3, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method private updateRightTips(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isReal8K()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v2

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v3

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v4

    if-eqz p1, :cond_8

    if-eqz v2, :cond_1

    const v0, 0x7f1209d7

    .line 6
    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    const v0, 0x7f1209d8

    .line 7
    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    const v0, 0x7f1209d9

    .line 8
    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    const v0, 0x7f1209df

    .line 9
    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    const v0, 0x7f1207bc

    .line 10
    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    .line 11
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p2

    const/16 v0, 0xd0

    const-wide/16 v1, -0x1

    const/16 v3, 0x8

    if-eq p2, v0, :cond_7

    .line 12
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p2

    const/16 v0, 0xd4

    if-ne p2, v0, :cond_6

    goto :goto_2

    .line 13
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p2

    const/16 v0, 0xcf

    if-ne p2, v0, :cond_8

    const p2, 0x7f1203dd

    .line 14
    invoke-interface {p1, v3, p2, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    goto :goto_3

    :cond_7
    :goto_2
    const p2, 0x7f1203e1

    .line 15
    invoke-interface {p1, v3, p2, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 4

    const-string v0, "RecordingState"

    const-string/jumbo v1, "onFailed"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->onFinish()V

    .line 3
    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->getInstance()Lcom/android/camera/aftersales/AftersalesManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/aftersales/AftersalesManager;->count(JI)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFailed()V

    return-void
.end method

.method public onFinish()V
    .locals 12

    const-string v0, "RecordingState"

    const-string/jumbo v1, "onFinish"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->setESPRecordingTimeState(I)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa4

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xa6

    .line 9
    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0xa3

    .line 11
    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    .line 12
    invoke-interface {v6, v7, v8}, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;->setModeLayoutVisibility(IZ)V

    .line 13
    :cond_1
    invoke-direct {p0, v0, v7}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->updateRightTips(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v6

    const/16 v9, 0xa9

    const/16 v10, 0xd0

    const/4 v11, 0x2

    if-eq v6, v9, :cond_1b

    const/16 v9, 0xb7

    if-eq v6, v9, :cond_18

    const/16 v9, 0xbb

    if-eq v6, v9, :cond_16

    const/16 v9, 0xcc

    if-eq v6, v9, :cond_13

    const/16 v9, 0xd4

    if-eq v6, v9, :cond_11

    const/16 v9, 0xd7

    if-eq v6, v9, :cond_18

    const/16 v9, 0xb3

    if-eq v6, v9, :cond_f

    const/16 v9, 0xb4

    if-eq v6, v9, :cond_a

    const/16 v9, 0xcf

    if-eq v6, v9, :cond_7

    if-eq v6, v10, :cond_1b

    if-eqz v1, :cond_2

    .line 15
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_2
    if-eqz v2, :cond_3

    .line 16
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_3
    if-eqz v0, :cond_5

    .line 17
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    .line 18
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideExtraMenu()V

    .line 20
    :cond_4
    invoke-interface {v0, v11}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    :cond_5
    if-eqz v3, :cond_6

    .line 21
    invoke-virtual {v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckMacroMode()V

    .line 22
    invoke-virtual {v3, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->recheckVideoFps(Z)V

    .line 23
    invoke-virtual {v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckAiEnhancedVideo()V

    .line 24
    invoke-virtual {v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckAiAudio()V

    .line 25
    invoke-virtual {v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckAiAudioSingle()V

    .line 26
    invoke-virtual {v3, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigESPDisplay(Z)V

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_21

    .line 28
    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 29
    invoke-interface {v5, v7}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->disableFrontFlashAndHalo(Z)V

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_8

    .line 30
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_8
    if-eqz v2, :cond_9

    .line 31
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_9
    if-eqz v0, :cond_21

    .line 32
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setConfigMenuResetWhenRestartmode()V

    .line 33
    invoke-interface {v0, v11}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto/16 :goto_0

    :cond_a
    if-eqz v1, :cond_b

    .line 34
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_b
    if-eqz v2, :cond_c

    .line 35
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_c
    if-eqz v0, :cond_d

    .line 36
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    .line 37
    invoke-interface {v0, v11}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 38
    :cond_d
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb5

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    if-eqz v0, :cond_e

    .line 40
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->onRecordingStop()V

    .line 41
    :cond_e
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_21

    .line 42
    invoke-interface {v0, v8}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterResetTip(Z)V

    .line 43
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterDescriptionTip()V

    .line 44
    invoke-virtual {v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckAiAudio()V

    goto/16 :goto_0

    :cond_f
    if-eqz v0, :cond_10

    .line 45
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    .line 46
    :cond_10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    if-eqz v0, :cond_21

    .line 47
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->processingFinish()V

    goto/16 :goto_0

    .line 48
    :cond_11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a3

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    if-eqz v1, :cond_12

    .line 49
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;->processingFinish()V

    :cond_12
    if-eqz v0, :cond_21

    .line 50
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    .line 51
    invoke-interface {v0, v11}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 52
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    goto/16 :goto_0

    :cond_13
    if-eqz v1, :cond_14

    .line 53
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_14
    if-eqz v2, :cond_15

    .line 54
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_15
    if-eqz v0, :cond_21

    .line 55
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    .line 56
    invoke-interface {v0, v11}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    new-array v1, v8, [I

    const/16 v2, 0xc5

    aput v2, v1, v7

    .line 57
    invoke-interface {v0, v8, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    goto :goto_0

    .line 58
    :cond_16
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a5

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;

    if-eqz v2, :cond_17

    .line 60
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_17
    if-eqz v0, :cond_21

    .line 61
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;->onRecordingStop()V

    goto :goto_0

    :cond_18
    if-eqz v1, :cond_19

    .line 62
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_19
    if-eqz v2, :cond_1a

    .line 63
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_1a
    if-eqz v0, :cond_21

    .line 64
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    .line 65
    invoke-interface {v0, v11}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 66
    fill-array-data v1, :array_0

    invoke-interface {v0, v8, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    .line 67
    invoke-interface {v0, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMusicClose(Z)V

    goto :goto_0

    :cond_1b
    if-eqz v1, :cond_1c

    .line 68
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_1c
    if-eqz v2, :cond_1e

    .line 69
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v1

    if-ne v1, v10, :cond_1d

    .line 70
    invoke-interface {v2, v8, v8}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->enableStopButton(ZZ)V

    .line 71
    :cond_1d
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_1e
    if-eqz v0, :cond_1f

    .line 72
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    .line 73
    invoke-interface {v0, v11}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 74
    :cond_1f
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_20

    .line 75
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterDescriptionTip()V

    .line 76
    invoke-virtual {v3, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigESPDisplay(Z)V

    :cond_20
    if-eqz v3, :cond_21

    .line 77
    invoke-virtual {v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckMacroMode()V

    .line 78
    invoke-virtual {v3, v8}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckParameterResetTip(Z)V

    :cond_21
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xc5
        0xf5
        0x103
        0xc6
        0xb5
    .end array-data
.end method

.method public onLongExposePrepare()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingLongExposePrepare()V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v1

    const/16 v2, 0xad

    if-ne v1, v2, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    :cond_0
    return-void
.end method

.method public onLongExposeStart()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingLongExposeStart()V

    return-void
.end method

.method public onPause()V
    .locals 8

    const-string v0, "RecordingState"

    const-string/jumbo v1, "onPause"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->setESPRecordingTimeState(I)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa2

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xaf

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    const/4 v4, 0x0

    .line 7
    invoke-direct {p0, v2, v4}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->updateRightTips(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v5

    const/16 v6, 0xb3

    if-eq v5, v6, :cond_4

    const/16 v6, 0xb7

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3

    const/16 v6, 0xcc

    if-eq v5, v6, :cond_2

    const/16 v4, 0xd4

    if-eq v5, v4, :cond_1

    const/16 v4, 0xd7

    if-eq v5, v4, :cond_3

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPause()V

    .line 10
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    if-eqz v0, :cond_5

    .line 13
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;->processingPause()V

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPause()V

    .line 15
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    new-array v0, v7, [I

    const/16 v1, 0xc5

    aput v1, v0, v4

    .line 16
    invoke-interface {v2, v7, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    .line 17
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    goto :goto_0

    .line 18
    :cond_3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPause()V

    .line 19
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 20
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 21
    fill-array-data v0, :array_0

    invoke-interface {v2, v7, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    .line 22
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    goto :goto_0

    .line 23
    :cond_4
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    .line 24
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    .line 25
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->processingPause()V

    :cond_5
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xc5
        0xf5
        0x103
        0xc6
        0xb5
    .end array-data
.end method

.method public onPostPreview()V
    .locals 2

    const-string v0, "RecordingState"

    const-string/jumbo v1, "onPostPreview"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x2

    .line 6
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 8
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->setESPRecordingTimeState(I)V

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 10
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingWorkspace()V

    return-void
.end method

.method public onPostSavingFinish()V
    .locals 7

    const-string v0, "RecordingState"

    const-string/jumbo v1, "onPostSavingFinish"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0x3b1

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    .line 4
    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->setESPRecordingTimeState(I)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v2

    const/16 v3, 0xa6

    const/4 v4, 0x0

    const/16 v5, 0xb0

    const/4 v6, 0x0

    if-eq v2, v3, :cond_4

    const/16 v0, 0xac

    if-eq v2, v0, :cond_2

    if-eq v2, v5, :cond_1

    if-eqz v1, :cond_5

    .line 6
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd8

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;

    if-eqz v0, :cond_5

    .line 9
    invoke-interface {v0, v6, v6, v6}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->updatePreviewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 10
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    .line 11
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->recheckVideoFps(Z)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-eqz v1, :cond_5

    const-string/jumbo v2, "onPostExecute setDisplayPreviewBitmap null"

    .line 15
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-interface {v1, v6}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V

    .line 17
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->showSmallPreview(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onPostSavingStart(I)V
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPostSaving: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingState"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xac

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0xd0

    if-ne v3, v5, :cond_0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setConfigMenuResetWhenRestartmode()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v5, 0xa3

    .line 7
    invoke-virtual {v3, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;->switchModeOrExternalTipLayout(Z)V

    .line 9
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v5, 0xa4

    invoke-virtual {v3, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xaf

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v5, :cond_3

    .line 11
    invoke-interface {v5}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    .line 12
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v7, 0xa2

    invoke-virtual {v5, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-nez v5, :cond_4

    const-string p1, "actionProcessing null, may be something wrong"

    .line 13
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v7, 0x3b1

    invoke-virtual {v1, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz v1, :cond_5

    const/4 v7, 0x5

    .line 15
    invoke-interface {v1, v7}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->setESPRecordingTimeState(I)V

    .line 16
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v1

    const/16 v7, 0xa6

    const/16 v8, 0xb6

    const/16 v9, 0xb0

    const/4 v10, 0x0

    if-eq v1, v7, :cond_12

    if-eq v1, v9, :cond_11

    const/16 v7, 0xb8

    if-eq v1, v7, :cond_14

    const/16 v7, 0xbb

    const-wide/16 v11, -0x1

    const v9, 0x7f120931

    const/16 v13, 0x8

    if-eq v1, v7, :cond_10

    const/4 v7, 0x2

    if-eq v1, v2, :cond_d

    const/16 v2, 0xad

    if-eq v1, v2, :cond_7

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {v0, v7}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 18
    :cond_6
    invoke-interface {v5, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPostAction(I)V

    goto/16 :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 19
    invoke-interface {v0, v7, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(IZ)V

    :cond_8
    if-eqz v3, :cond_9

    .line 20
    invoke-interface {v3, v10}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reConfigESPDisplay(Z)V

    .line 21
    :cond_9
    invoke-interface {v5, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPostAction(I)V

    .line 22
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v8}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p1, :cond_a

    .line 24
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    :cond_a
    if-eqz v0, :cond_c

    .line 25
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    .line 26
    sget-boolean p1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0Oo:Z

    if-eqz p1, :cond_b

    const v9, 0x7f1205bf

    :cond_b
    invoke-interface {v0, v13, v9, v11, v12}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    .line 27
    :cond_c
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p1, :cond_14

    .line 29
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    goto :goto_1

    :cond_d
    if-eqz v0, :cond_e

    .line 30
    invoke-interface {v0, v7}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    :cond_e
    if-eqz v3, :cond_f

    .line 31
    invoke-interface {v3, v10}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reConfigESPDisplay(Z)V

    .line 32
    :cond_f
    invoke-interface {v5, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPostAction(I)V

    goto :goto_1

    .line 33
    :cond_10
    invoke-interface {v5, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPostAction(I)V

    if-eqz v0, :cond_14

    .line 34
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    .line 35
    invoke-interface {v0, v13, v9, v11, v12}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    goto :goto_1

    .line 36
    :cond_11
    invoke-interface {v5}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    .line 37
    invoke-interface {v5, v10}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateLoading(Z)V

    .line 38
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd8

    .line 39
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;

    .line 40
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->resetShootUI()V

    goto :goto_1

    .line 41
    :cond_12
    invoke-interface {v5}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    .line 42
    invoke-interface {v5, v10}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateLoading(Z)V

    .line 43
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->oo00oO()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 44
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v8}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p1, :cond_13

    .line 46
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    if-eqz v0, :cond_13

    .line 47
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    .line 48
    :cond_13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 49
    invoke-virtual {p1, v9}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    .line 50
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->resetShootUI()V

    :cond_14
    :goto_1
    return-void
.end method

.method public onPrepare()V
    .locals 10

    const-string v0, "RecordingState"

    const-string/jumbo v1, "onPrepare: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->setESPRecordingTimeState(I)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v0

    const/16 v2, 0xb6

    const/16 v3, 0xd4

    const/16 v4, 0xbb

    const/16 v5, 0xb3

    if-eq v0, v5, :cond_5

    const/16 v6, 0xa2

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v7, 0xab

    .line 6
    invoke-virtual {v0, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTimerBurstShutter()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()V

    .line 11
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 12
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPrepare()V

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_2

    .line 15
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    .line 16
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v6, 0xe3

    invoke-virtual {v0, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;

    if-eqz v0, :cond_6

    .line 18
    invoke-interface {v0, v7}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->subscribe(I)V

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v6, 0x3a3

    invoke-virtual {v0, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    .line 20
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;->processingPrepare()V

    goto :goto_1

    .line 21
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 22
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPrepare()V

    goto :goto_1

    .line 23
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v6, 0xe6

    invoke-virtual {v0, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    .line 24
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->processingPrepare()V

    .line 25
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v6, 0xac

    invoke-virtual {v0, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_8

    .line 26
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 27
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideExtraMenu()V

    :cond_7
    if-eqz v0, :cond_8

    .line 28
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideConfigMenu(Z)V

    .line 29
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v6

    const/16 v7, 0xa3

    const/4 v8, 0x1

    if-eq v6, v7, :cond_11

    const/16 v7, 0xb0

    const/16 v9, 0xa6

    if-eq v6, v9, :cond_10

    const/16 v2, 0xad

    if-eq v6, v2, :cond_f

    if-eq v6, v7, :cond_d

    if-eq v6, v4, :cond_c

    if-eq v6, v3, :cond_b

    const/16 v2, 0xd7

    if-eq v6, v2, :cond_b

    if-eq v6, v5, :cond_13

    const/16 v2, 0xb4

    if-eq v6, v2, :cond_9

    const/16 v2, 0xb7

    if-eq v6, v2, :cond_b

    const/16 v2, 0xb8

    if-eq v6, v2, :cond_b

    .line 30
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v2

    if-nez v2, :cond_13

    if-eqz v0, :cond_13

    .line 31
    invoke-interface {v0, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto/16 :goto_2

    .line 32
    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xb5

    .line 33
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    if-eqz v2, :cond_a

    .line 34
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->onRecordingPrepare()V

    .line 35
    :cond_a
    invoke-interface {v0, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto/16 :goto_2

    :cond_b
    if-eqz v0, :cond_13

    .line 36
    invoke-interface {v0, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto/16 :goto_2

    .line 37
    :cond_c
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0x1a5

    .line 38
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;

    if-eqz v0, :cond_13

    .line 39
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;->onRecordingPrepare()V

    goto/16 :goto_2

    .line 40
    :cond_d
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_e

    .line 41
    invoke-interface {v0, v8}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearIndicator(I)V

    .line 42
    :cond_e
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xd8

    .line 43
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;

    if-eqz v0, :cond_13

    .line 44
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->setShootingUI()V

    goto :goto_2

    :cond_f
    if-eqz v0, :cond_13

    .line 45
    invoke-interface {v0, v8, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(IZ)V

    goto :goto_2

    .line 46
    :cond_10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    .line 47
    invoke-virtual {v3, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    .line 48
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->setShootUI()V

    .line 49
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->oo00oO()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 50
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    .line 51
    invoke-virtual {v3, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v2, :cond_13

    .line 52
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    if-eqz v0, :cond_13

    const/4 v2, 0x0

    .line 53
    invoke-interface {v0, v1, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    goto :goto_2

    .line 54
    :cond_11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xc2

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v2, :cond_12

    .line 55
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x3

    .line 56
    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    :cond_12
    if-eqz v0, :cond_13

    .line 57
    invoke-interface {v0, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 58
    :cond_13
    :goto_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xaf

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_14

    .line 59
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTipImage(Z)V

    .line 60
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTips(Z)V

    :cond_14
    return-void
.end method

.method public onResume()V
    .locals 6

    const-string v0, "RecordingState"

    const-string/jumbo v1, "onResume"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->setESPRecordingTimeState(I)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/16 v2, 0x8

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->updateRightTips(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v2

    const/16 v3, 0xb3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    const/16 v3, 0xb7

    const/4 v5, 0x4

    if-eq v2, v3, :cond_3

    const/16 v3, 0xbb

    if-eq v2, v3, :cond_2

    const/16 v3, 0xcc

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd7

    if-eq v2, v3, :cond_3

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingResume()V

    .line 9
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingResume()V

    .line 11
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 12
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideConfigMenu(Z)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-interface {v0, v4, v4}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->enableStopButton(ZZ)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingResume()V

    .line 15
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 16
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideConfigMenu(Z)V

    .line 17
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_4

    .line 19
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()V

    .line 20
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 21
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTipImage(Z)V

    .line 22
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideAllTips(Z)V

    goto :goto_0

    .line 23
    :cond_5
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideConfigMenu(Z)V

    .line 24
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    .line 25
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->processingResume()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 9

    const-string v0, "RecordingState"

    const-string/jumbo v1, "onStart"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa3

    .line 6
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0x3b1

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 8
    invoke-interface {v4, v5}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->setESPRecordingTimeState(I)V

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v6, 0xac

    invoke-virtual {v4, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/16 v7, 0x8

    .line 10
    invoke-direct {p0, v4, v7}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->updateRightTips(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->hideHint()V

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    .line 12
    invoke-interface {v2, v7, v8}, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;->setModeLayoutVisibility(IZ)V

    .line 13
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v2

    if-eq v2, v3, :cond_c

    if-eq v2, v6, :cond_b

    const/16 v3, 0xb0

    if-eq v2, v3, :cond_a

    const/16 v3, 0xb3

    if-eq v2, v3, :cond_9

    const/16 v3, 0xb7

    if-eq v2, v3, :cond_8

    const/16 v3, 0xb9

    if-eq v2, v3, :cond_7

    const/16 v3, 0xbb

    const/4 v5, 0x7

    if-eq v2, v3, :cond_5

    const/16 v3, 0xd0

    if-eq v2, v3, :cond_4

    const/16 v3, 0xd4

    if-eq v2, v3, :cond_3

    const/16 v1, 0xd7

    if-eq v2, v1, :cond_2

    .line 14
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    goto/16 :goto_0

    .line 15
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    .line 16
    invoke-interface {v4, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMusicClose(Z)V

    goto/16 :goto_0

    .line 17
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0x3a3

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    .line 18
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;->processingStart()V

    if-eqz v1, :cond_d

    .line 19
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    goto/16 :goto_0

    .line 20
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    if-eqz v1, :cond_d

    .line 21
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    goto/16 :goto_0

    .line 22
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0x1a4

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;

    if-eqz v2, :cond_6

    .line 23
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    :cond_6
    if-eqz v1, :cond_d

    .line 24
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    goto :goto_0

    .line 25
    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz v0, :cond_d

    .line 26
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->processingStart()V

    goto :goto_0

    .line 27
    :cond_8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    .line 28
    invoke-interface {v4, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMusicClose(Z)V

    goto :goto_0

    .line 29
    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    .line 30
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->processingStart()V

    goto :goto_0

    .line 31
    :cond_a
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    .line 32
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd8

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;

    if-eqz v0, :cond_d

    const v1, 0x7f1209f7

    .line 34
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->updateHintText(I)V

    goto :goto_0

    .line 35
    :cond_b
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    .line 36
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v0

    if-eqz v4, :cond_d

    .line 37
    invoke-virtual {v0, v6}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedStringIdIgnoreClose(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v7, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(ILjava/lang/String;)V

    .line 38
    invoke-interface {v4, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertESPFeatureTip(Z)V

    goto :goto_0

    .line 39
    :cond_c
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    .line 40
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 41
    invoke-interface {v0, v5, v8, v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateSubTip(IZLjava/lang/Object;)V

    :cond_d
    :goto_0
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updateZoomRatioToggleButtonState(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->setRecordingOrPausing(Z)V

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1, v1, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    :cond_3
    :goto_1
    return-void
.end method
