.class public Lcom/android/camera/aiwatermark/handler/ChinaScenicSpotsHandler;
.super Lcom/android/camera/aiwatermark/handler/ScenicSpotsHandler;
.source "ChinaScenicSpotsHandler.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/aiwatermark/handler/ScenicSpotsHandler;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getRegionMap()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/camera/aiwatermark/data/Region;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    instance-of v1, v0, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;->getRegionMap(I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWatermarkList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->getForAI()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
