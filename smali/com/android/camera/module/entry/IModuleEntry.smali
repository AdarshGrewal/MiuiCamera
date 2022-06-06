.class public interface abstract Lcom/android/camera/module/entry/IModuleEntry;
.super Ljava/lang/Object;
.source "IModuleEntry.java"


# virtual methods
.method public abstract getEntryName()Ljava/lang/String;
.end method

.method public abstract getModeItem()Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;
.end method

.method public abstract getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;
.end method

.method public abstract getModule()Lcom/android/camera/module/Module;
.end method

.method public abstract getModuleId()I
.end method

.method public abstract getSupportIntentType()[I
.end method

.method public abstract support()Z
.end method
