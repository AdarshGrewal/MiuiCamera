.class public abstract Lcom/android/camera/fragment/modeui/BaseModeUI;
.super Ljava/lang/Object;
.source "BaseModeUI.java"

# interfaces
.implements Lcom/android/camera/fragment/modeui/IModeUI;
.implements Lcom/android/camera/fragment/modeui/IModeId;
.implements Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mFragmentInfo:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mFragmentInfo:Landroid/util/SparseIntArray;

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createShine(II)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;-><init>(I)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object p1

    const v0, 0x7f080430

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    const v0, 0x7f120026

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setActivated(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0O0;

    invoke-direct {p2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO0O0;-><init>(Lcom/android/camera/fragment/modeui/BaseModeUI;)V

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    return-object p1
.end method

.method public createSwitchCam(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;-><init>(I)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object p1

    const v0, 0x7f080409

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    const v0, 0x7f120033

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO00o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Ooooo00/OooO00o;-><init>(Lcom/android/camera/fragment/modeui/BaseModeUI;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setHideSelf(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    return-object p1
.end method

.method public getExtraTopConfigItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getFragmentInfo()Landroid/util/SparseIntArray;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mFragmentInfo:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const v2, 0xfff9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mFragmentInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getPanelEntranceItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopConfigItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result v1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportFlash()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getFlashItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    const v2, 0x800003

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getFlashItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method public showBeauty(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideShine()V

    :cond_0
    return-void
.end method

.method public switchCamera(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb7

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraSwitcher;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$CameraSwitcher;->changeCamera(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateBg()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->popupSolidPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0808ef

    goto :goto_0

    :cond_0
    const v0, 0x7f0800dc

    :goto_0
    return v0
.end method

.method public updateBgResourceColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->popupSolidPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060370

    goto :goto_0

    :cond_0
    const v0, 0x7f060372

    :goto_0
    return v0
.end method
