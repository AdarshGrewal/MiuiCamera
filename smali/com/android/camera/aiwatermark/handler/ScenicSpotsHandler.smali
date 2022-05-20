.class public abstract Lcom/android/camera/aiwatermark/handler/ScenicSpotsHandler;
.super Lcom/android/camera/aiwatermark/handler/AbstractHandler;
.source "ScenicSpotsHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScenicSpotsHandler"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;-><init>(Z)V

    .line 2
    new-instance p1, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;

    invoke-direct {p1}, Lcom/android/camera/aiwatermark/data/ScenicSpotsWatermark;-><init>()V

    iput-object p1, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    return-void
.end method

.method private getLocation()Landroid/location/Location;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocationDirectly()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public findScenicSpot()Ljava/lang/String;
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/android/camera/aiwatermark/handler/ScenicSpotsHandler;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/camera/aiwatermark/handler/ScenicSpotsHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->debugGPS()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"

    const-string/jumbo v1, "test.gps.latitude"

    .line 4
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-string/jumbo v3, "test.gps.longtitude"

    .line 5
    invoke-static {v3, v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 7
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/handler/ScenicSpotsHandler;->getRegionMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 12
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/handler/ScenicSpotsHandler;->getRegionMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/aiwatermark/data/Region;

    .line 15
    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/android/camera/aiwatermark/data/Region;->isInRegion(DD)Z

    move-result v6

    .line 16
    sget-object v7, Lcom/android/camera/aiwatermark/handler/ScenicSpotsHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; isInRegion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1

    return-object v5

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/handler/ScenicSpotsHandler;->findScenicSpot()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/handler/ScenicSpotsHandler;->getWatermarkList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 3
    invoke-virtual {v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getRegionMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/camera/aiwatermark/data/Region;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWatermarkList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation
.end method
