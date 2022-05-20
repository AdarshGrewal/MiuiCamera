.class public Lcom/android/camera/features/mode/film/dollyzoom/DollyZoomModuleEntry;
.super Lcom/android/camera/module/entry/BaseModuleEntry;
.source "DollyZoomModuleEntry.java"


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
    const-class v0, Lcom/android/camera/features/mode/film/dollyzoom/DollyZoomModuleEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/film/dollyzoom/DollyZoomModeUI;

    iget-object v1, p0, Lcom/android/camera/module/entry/BaseModuleEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/features/mode/film/dollyzoom/DollyZoomModeUI;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getModule()Lcom/android/camera/module/Module;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/DollyZoomModule;

    invoke-direct {v0}, Lcom/android/camera/module/DollyZoomModule;-><init>()V

    return-object v0
.end method

.method public getModuleDevice()Lcom/android/camera/features/mode/IModuleDevice;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/film/dollyzoom/DollyZoomModuleDevice;

    invoke-direct {v0}, Lcom/android/camera/features/mode/film/dollyzoom/DollyZoomModuleDevice;-><init>()V

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    const/16 v0, 0xbd

    return v0
.end method

.method public support()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/entry/BaseModuleEntry;->mFeature:LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOO0O()Z

    move-result v0

    return v0
.end method
