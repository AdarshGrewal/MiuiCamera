.class public interface abstract Lcom/android/camera/fragment/modeui/IModeUI;
.super Ljava/lang/Object;
.source "IModeUI.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# virtual methods
.method public abstract getExtraTopConfigItem()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/config/TopConfigItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPanelEntranceItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTopConfigItem()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/config/TopConfigItem;",
            ">;"
        }
    .end annotation
.end method
