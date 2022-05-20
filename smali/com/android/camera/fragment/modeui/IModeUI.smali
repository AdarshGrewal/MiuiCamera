.class public interface abstract Lcom/android/camera/fragment/modeui/IModeUI;
.super Ljava/lang/Object;
.source "IModeUI.java"


# virtual methods
.method public abstract getExtraTopConfigItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFragmentInfo()Landroid/util/SparseIntArray;
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

.method public abstract getTopConfigItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation
.end method
