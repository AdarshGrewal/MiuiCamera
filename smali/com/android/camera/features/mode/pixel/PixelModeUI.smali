.class public Lcom/android/camera/features/mode/pixel/PixelModeUI;
.super Lcom/android/camera/fragment/modeui/BaseModeUI;
.source "PixelModeUI.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/BaseModeUI;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    const/16 v0, 0xab

    .line 8
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    :cond_0
    return-void
.end method

.method private getAi108ContentDescriptString()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo00O()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const v1, 0x7f1200c8

    new-array v4, v3, [Ljava/lang/Object;

    const v5, 0x7f12098b

    .line 2
    invoke-static {v5}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v1, v4}, Lcom/android/camera/Util;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f1200c9

    new-array v4, v3, [Ljava/lang/Object;

    .line 3
    invoke-static {v5}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/android/camera/Util;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    const v1, 0x7f120988

    new-array v4, v3, [Ljava/lang/Object;

    const v5, 0x7f12098a

    .line 4
    invoke-static {v5}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v1, v4}, Lcom/android/camera/Util;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f120989

    new-array v4, v3, [Ljava/lang/Object;

    .line 5
    invoke-static {v5}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/android/camera/Util;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 6
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAi108Running()Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v0, v0, v3

    goto :goto_1

    :cond_1
    aget-object v0, v0, v2

    :goto_1
    return-object v0
.end method

.method private getAi108ItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xab

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOO0O/OooO00o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOO0O/OooO00o;-><init>(Lcom/android/camera/features/mode/pixel/PixelModeUI;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOO0O/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOO0O/OooO0O0;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private getAiUltraPixelPhotographyDrawables()[I
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo00O()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    return-object v0

    :cond_0
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    return-object v0

    :array_0
    .array-data 4
        0x7f0803bf
        0x7f0803c0
    .end array-data

    :array_1
    .array-data 4
        0x7f0803bd
        0x7f0803be
    .end array-data
.end method


# virtual methods
.method public synthetic OooO00o(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 2

    .line 1
    new-instance p1, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->getAiUltraPixelPhotographyDrawables()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->getAiUltraPixelPhotographyDrawables()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAi108Running()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->getAi108ContentDescriptString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setContentDescriptString(Ljava/lang/String;)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p1

    return-object p1
.end method

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
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTimerExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSettingExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->oo000o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSpeechShutterExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getReferenceLineExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSupportedReferenceConfig()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setSubTopConfigItems(Ljava/util/List;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    const/16 v0, 0xaf

    return v0
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
    invoke-super {p0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->getTopConfigItems()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooooo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->getAi108ItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getShineItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportTopMenu()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getEspDisplayItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMoreItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
