.class public Lcom/android/camera/features/mode/pixel/PixelModuleEntry;
.super Lcom/android/camera/module/entry/BaseModuleEntry;
.source "PixelModuleEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/entry/BaseModuleEntry;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private ultraPixelModuleNameRes()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    .line 2
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOO:Z

    const v1, 0x7f12056e

    if-eqz v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOoOO()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooO00()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const v0, 0x7f12056d

    return v0

    :cond_2
    const v0, 0x7f120570

    return v0

    :cond_3
    const v0, 0x7f12056f

    return v0
.end method


# virtual methods
.method public getEntryName()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/features/mode/pixel/PixelModuleEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModeItem()Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    invoke-static {}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelIcon()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x7f080884

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f080885

    aput v2, v0, v1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mode/pixel/PixelModuleEntry;->ultraPixelModuleNameRes()I

    move-result v1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/entry/BaseModuleEntry;->createComponentDataItem([II)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;

    invoke-direct {v1}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;-><init>()V

    .line 5
    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;->setDataItem(Lcom/android/camera/data/data/ComponentDataItem;)Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;->build()Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;

    move-result-object v0

    return-object v0
.end method

.method public getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/pixel/PixelModeUI;

    iget-object v1, p0, Lcom/android/camera/module/entry/BaseModuleEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/features/mode/pixel/PixelModeUI;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getModule()Lcom/android/camera/module/Module;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/Camera2Module;

    invoke-direct {v0}, Lcom/android/camera/module/Camera2Module;-><init>()V

    return-object v0
.end method

.method public getModuleDevice()Lcom/android/camera/features/mode/IModuleDevice;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/pixel/PixelModuleDevice;

    invoke-direct {v0}, Lcom/android/camera/features/mode/pixel/PixelModuleDevice;-><init>()V

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    const/16 v0, 0xaf

    return v0
.end method

.method public support()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/entry/BaseModuleEntry;->mFeature:LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000000O()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
