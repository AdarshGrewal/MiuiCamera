.class public Lcom/android/camera/features/mode/more/uninstall/MoreUnInstallModuleEntry;
.super Lcom/android/camera/module/entry/BaseModuleEntry;
.source "MoreUnInstallModuleEntry.java"


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
    const-class v0, Lcom/android/camera/features/mode/more/uninstall/MoreUnInstallModuleEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/more/uninstall/MoreUnInstallModeUI;

    iget-object v1, p0, Lcom/android/camera/module/entry/BaseModuleEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/features/mode/more/uninstall/MoreUnInstallModeUI;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getModule()Lcom/android/camera/module/Module;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/FakerModule;

    invoke-direct {v0}, Lcom/android/camera/module/FakerModule;-><init>()V

    return-object v0
.end method

.method public getModuleDevice()Lcom/android/camera/features/mode/IModuleDevice;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/more/uninstall/MoreUnInstallModuleDevice;

    invoke-direct {v0}, Lcom/android/camera/features/mode/more/uninstall/MoreUnInstallModuleDevice;-><init>()V

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    const/16 v0, 0xfd

    return v0
.end method

.method public support()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
