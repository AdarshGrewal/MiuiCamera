.class public Lcom/android/camera/features/mode/pro/photo/ProModuleEntry;
.super Lcom/android/camera/module/entry/BaseModuleEntry;
.source "ProModuleEntry.java"


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
    const-class v0, Lcom/android/camera/features/mode/pro/photo/ProModuleEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModeItem()Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    const v1, 0x7f120572

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/entry/BaseModuleEntry;->createComponentDataItem([II)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;

    invoke-direct {v1}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;-><init>()V

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;->setDataItem(Lcom/android/camera/data/data/ComponentDataItem;)Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;->build()Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f080325
        0x7f080888
        0x7f080889
    .end array-data
.end method

.method public getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/pro/photo/ProModeUI;

    iget-object v1, p0, Lcom/android/camera/module/entry/BaseModuleEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/features/mode/pro/photo/ProModeUI;-><init>(Landroid/content/Context;)V

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
    new-instance v0, Lcom/android/camera/features/mode/pro/photo/ProModuleDevice;

    invoke-direct {v0}, Lcom/android/camera/features/mode/pro/photo/ProModuleDevice;-><init>()V

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    const/16 v0, 0xa7

    return v0
.end method

.method public support()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/entry/BaseModuleEntry;->mFeature:LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0Ooo0()Z

    move-result v0

    return v0
.end method
