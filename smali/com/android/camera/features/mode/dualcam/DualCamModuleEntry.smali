.class public Lcom/android/camera/features/mode/dualcam/DualCamModuleEntry;
.super Lcom/android/camera/module/entry/BaseModuleEntry;
.source "DualCamModuleEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/entry/BaseModuleEntry;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getEntryName()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/features/mode/dualcam/DualCamModuleEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModeItem()Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_0

    .line 3
    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOO()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12056a

    goto :goto_0

    :cond_0
    const v0, 0x7f1207f4

    .line 4
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/entry/BaseModuleEntry;->createComponentDataItem([II)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;

    invoke-direct {v1}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;-><init>()V

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;->setDataItem(Lcom/android/camera/data/data/ComponentDataItem;)Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;->build()Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f080317
        0x7f080874
        0x7f080875
    .end array-data
.end method

.method public getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/dualcam/DualCamModeUI;

    iget-object v1, p0, Lcom/android/camera/module/entry/BaseModuleEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/features/mode/dualcam/DualCamModeUI;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getModule()Lcom/android/camera/module/Module;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/dualvideo/DualVideoGridModule;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/DualVideoGridModule;-><init>()V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;-><init>()V

    return-object v0
.end method

.method public getModuleDevice()Lcom/android/camera/features/mode/IModuleDevice;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/dualcam/DualCamModuleDevice;

    invoke-direct {v0}, Lcom/android/camera/features/mode/dualcam/DualCamModuleDevice;-><init>()V

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    const/16 v0, 0xcc

    return v0
.end method

.method public support()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/entry/BaseModuleEntry;->mFeature:LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0o0Oo()Z

    move-result v0

    return v0
.end method
