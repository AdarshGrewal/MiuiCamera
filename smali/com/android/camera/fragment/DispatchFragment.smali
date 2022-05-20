.class public Lcom/android/camera/fragment/DispatchFragment;
.super Lcom/android/camera/fragment/BaseFragment;
.source "DispatchFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FragmentDispatch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private reInitData(IIII)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v4

    .line 6
    invoke-static {p1}, Lcom/android/camera/fragment/clone/Config;->resetIfNeed(I)V

    const/4 v5, 0x3

    if-eq p4, v5, :cond_0

    const/4 v5, 0x6

    if-eq p4, v5, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getBackupKey()I

    move-result v5

    if-lez v5, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getBackupKey()I

    move-result v5

    .line 9
    invoke-interface {v4, v2, v5}, Lcom/android/camera/data/backup/DataBackUp;->backupRunning(Lcom/android/camera/data/data/runing/DataItemRunning;I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 11
    instance-of v6, v5, Lcom/android/camera/ActivityBase;

    if-eqz v6, :cond_1

    .line 12
    check-cast v5, Lcom/android/camera/ActivityBase;

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    .line 13
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/extra/DataItemLive;->clearAll()V

    .line 14
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->clearArrayMap()V

    .line 15
    invoke-interface {v4}, Lcom/android/camera/data/backup/DataBackUp;->clearBackUp()V

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v5

    invoke-virtual {v0, p1, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(II)I

    move-result v0

    .line 17
    invoke-interface {v4, v2, v0}, Lcom/android/camera/data/backup/DataBackUp;->revertOrCreateRunning(Lcom/android/camera/data/data/runing/DataItemRunning;I)V

    .line 18
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->reInitSupport(II)V

    .line 19
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v4

    if-nez v0, :cond_3

    .line 21
    invoke-static {p1, v4}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->createGlobal(ILcom/android/camera/CameraIntentManager;)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p1

    .line 22
    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->setPaintCondition(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    return-void

    .line 23
    :cond_3
    invoke-virtual {v2, p1, p2, v0, p3}, Lcom/android/camera/data/data/runing/DataItemRunning;->reInitComponent(IILcom/android/camera2/CameraCapabilities;I)V

    .line 24
    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/android/camera/data/data/config/DataItemConfig;->reInitComponent(IILcom/android/camera2/CameraCapabilities;I)V

    .line 25
    invoke-virtual {v3, p1, p2, v0}, Lcom/android/camera/data/data/extra/DataItemLive;->reInitComponent(IILcom/android/camera2/CameraCapabilities;)V

    .line 26
    invoke-static {p1, v4}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->createGlobal(ILcom/android/camera/CameraIntentManager;)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p1

    .line 27
    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->setPaintCondition(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    return-void
.end method

.method private showFrontFacingGuide()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;->isSupportFrontFacingDisplayFoldTip(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;->showFrontFacingDisplayFoldTip()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;->dismissFrontFacingDisplayFoldTip()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public needViewClear()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    const-string p1, "FragmentDispatch"

    const-string v0, "frameAvailable"

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/DispatchFragment;->reCheck()V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p2

    .line 3
    iget p3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p3, p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->createGlobal(ILcom/android/camera/CameraIntentManager;)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->setPaintCondition(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 p2, 0x0

    const/4 p3, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/DispatchFragment;->provideAnimateElement(ILjava/util/List;I)V

    return-object p2
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "reInit ,  resetType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentDispatch"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p2

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v0

    .line 6
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/camera/fragment/DispatchFragment;->reInitData(IIII)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/DispatchFragment;->showFrontFacingGuide()V

    return-void
.end method

.method public reCheck()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_1

    .line 3
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckMutexConfigs(I)V

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckFocusPeakConfig()V

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckExposureFeedbackConfig()V

    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterResetTip(Z)V

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterDescriptionTip()V

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckRaw()V

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckDocumentMode()V

    .line 10
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckDualVideoMode()V

    .line 11
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckGradienter()V

    .line 12
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckCenterMark()V

    .line 13
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckVideoUltraClearTip()V

    .line 14
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckVideo4KHDR10P()V

    .line 15
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckVideoHDR10Tip()V

    .line 16
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckVideoLog()V

    const/4 v2, 0x0

    .line 17
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckAIWatermark(Z)V

    .line 18
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reConfigSpeechShutter()V

    .line 19
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->recheckVideoFps(Z)V

    .line 20
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckFastMotion(Z)V

    .line 21
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckFilm()V

    :cond_1
    :goto_0
    return-void
.end method
