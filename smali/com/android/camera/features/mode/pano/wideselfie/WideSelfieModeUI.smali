.class public Lcom/android/camera/features/mode/pano/wideselfie/WideSelfieModeUI;
.super Lcom/android/camera/fragment/modeui/BaseModeUI;
.source "WideSelfieModeUI.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/BaseModeUI;-><init>(Landroid/content/Context;)V

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
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSettingExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getReferenceLineExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSupportedReferenceConfigFilterMore()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setSubTopConfigItems(Ljava/util/List;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getFragmentInfo()Landroid/util/SparseIntArray;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->getFragmentInfo()Landroid/util/SparseIntArray;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mFragmentInfo:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/16 v2, 0xffe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/BaseModeUI;->mFragmentInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    const/16 v0, 0xb0

    return v0
.end method

.method public getPanelEntranceItems()Ljava/util/List;
    .locals 3
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
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    const/16 v2, 0xb0

    .line 3
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/fragment/modeui/BaseModeUI;->createShine(II)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getTopConfigItems()Ljava/util/List;
    .locals 2
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
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportTopMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getEspDisplayItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMoreItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
