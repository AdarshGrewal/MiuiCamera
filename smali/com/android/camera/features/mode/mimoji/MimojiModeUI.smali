.class public Lcom/android/camera/features/mode/mimoji/MimojiModeUI;
.super Lcom/android/camera/fragment/modeui/BaseModeUI;
.source "MimojiModeUI.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/BaseModeUI;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic OooO00o(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p0

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p0, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getPreviewState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v0

    if-eqz p0, :cond_1

    const p0, 0x7f120087

    goto :goto_1

    :cond_1
    const p0, 0x7f120086

    .line 5
    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    const v0, 0x7f08041e

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    const v0, 0x7f08041f

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    const/16 v0, 0xa2

    .line 10
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/features/mode/mimoji/MimojiModeUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/mimoji/MimojiModeUI;->showMimojiTimbre(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/features/mode/mimoji/MimojiModeUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/mimoji/MimojiModeUI;->showMimojiBg(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/features/mode/mimoji/MimojiModeUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/mimoji/MimojiModeUI;->showMimojiPanel(Landroid/view/View;)V

    return-void
.end method

.method private getMimojiGifItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xa2

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0oO/OooO0o0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0oO/OooO0o0;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0oO/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0oO/OooO0O0;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private showMimojiBg(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    :cond_0
    return-void
.end method

.method private showMimojiPanel(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    :cond_0
    return-void
.end method

.method private showMimojiTimbre(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 2
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getExtraTopConfigItems()Ljava/util/List;
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
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getRatioExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSettingExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->oo000o()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1, v2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPhoto()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSpeechShutterExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getReferenceLineExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSupportedReferenceConfig()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setSubTopConfigItems(Ljava/util/List;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getFragmentInfo()Landroid/util/SparseIntArray;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->getFragmentInfo()Landroid/util/SparseIntArray;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mFragmentInfo:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0xfff3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mFragmentInfo:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/16 v2, 0xff8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mFragmentInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    const/16 v0, 0xb8

    return v0
.end method

.method public getPanelEntranceItems()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1, v2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiPanelState()I

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPreview()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v2, 0x1

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    const-string v4, "close_state"

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, v3, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 6
    :goto_0
    new-instance v5, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;-><init>(I)V

    const/4 v6, 0x0

    .line 7
    invoke-virtual {v5, v6}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v5

    const v7, 0x7f08040d

    .line 8
    invoke-virtual {v5, v7}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 9
    invoke-virtual {v5, p0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    const v7, 0x7f120088

    .line 10
    invoke-virtual {v5, v7}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    const-string v7, "add_state"

    .line 11
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setActivated(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    new-instance v4, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0oO/OooO0Oo;

    invoke-direct {v4, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0oO/OooO0Oo;-><init>(Lcom/android/camera/features/mode/mimoji/MimojiModeUI;)V

    .line 12
    invoke-virtual {v3, v4}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 13
    invoke-virtual {v3}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object v3

    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    .line 15
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/modeui/BaseModeUI;->createSwitchCam(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result v4

    if-ne v4, v2, :cond_3

    goto/16 :goto_6

    .line 17
    :cond_3
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPhoto()Z

    move-result v4

    const v5, 0x7f120085

    const v7, 0x7f080419

    const/16 v8, 0x9

    const/4 v9, 0x2

    if-nez v4, :cond_5

    .line 18
    new-instance v4, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    const/16 v10, 0x10

    invoke-direct {v4, v10}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;-><init>(I)V

    .line 19
    invoke-virtual {v4, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v4

    const v10, 0x7f08041b

    .line 20
    invoke-virtual {v4, v10}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 21
    invoke-virtual {v4, p0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    const v10, 0x7f120089

    .line 22
    invoke-virtual {v4, v10}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v6

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setActivated(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    new-instance v4, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0oO/OooO00o;

    invoke-direct {v4, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0oO/OooO00o;-><init>(Lcom/android/camera/features/mode/mimoji/MimojiModeUI;)V

    .line 24
    invoke-virtual {v3, v4}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 25
    invoke-virtual {v3}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object v3

    .line 26
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 27
    :cond_5
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isBgIconNeedShow()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 28
    new-instance v3, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    invoke-direct {v3, v8}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;-><init>(I)V

    .line 29
    invoke-virtual {v3, v2}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v3

    .line 30
    invoke-virtual {v3, v7}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 31
    invoke-virtual {v3, p0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 32
    invoke-virtual {v3, v5}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 33
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v4

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v6

    :goto_3
    invoke-virtual {v3, v4}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setActivated(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    new-instance v4, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0oO/OooO0OO;

    invoke-direct {v4, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0oO/OooO0OO;-><init>(Lcom/android/camera/features/mode/mimoji/MimojiModeUI;)V

    .line 34
    invoke-virtual {v3, v4}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 35
    invoke-virtual {v3}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object v3

    .line 36
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_7
    :goto_4
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isBgIconNeedShow()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 38
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiVideo()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 39
    new-instance v3, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    invoke-direct {v3, v8}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;-><init>(I)V

    .line 40
    invoke-virtual {v3, v9}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v3

    .line 41
    invoke-virtual {v3, v7}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 42
    invoke-virtual {v3, p0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 43
    invoke-virtual {v3, v5}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 44
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v6

    :goto_5
    invoke-virtual {v3, v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setActivated(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0oO/OooO0OO;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0oO/OooO0OO;-><init>(Lcom/android/camera/features/mode/mimoji/MimojiModeUI;)V

    .line 45
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    .line 46
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object v1

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    return-object v0
.end method

.method public getTopConfigItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->getTopConfigItems()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0oO0Ooo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/mode/mimoji/MimojiModeUI;->getMimojiGifItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setGravity(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportTopMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getEspDisplayItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMoreItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public switchCamera(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeui/BaseModeUI;->switchCamera(Landroid/view/View;)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "mimoji_click_create_switch"

    const-string v0, "create"

    .line 3
    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateBg()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getPreviewState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f0800da

    goto :goto_1

    :cond_1
    const v0, 0x7f0800dc

    :goto_1
    return v0
.end method

.method public updateBgResourceColor()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getPreviewState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f060374

    goto :goto_1

    :cond_1
    const v0, 0x7f060372

    :goto_1
    return v0
.end method
