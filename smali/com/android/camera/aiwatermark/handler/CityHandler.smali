.class public abstract Lcom/android/camera/aiwatermark/handler/CityHandler;
.super Lcom/android/camera/aiwatermark/handler/AbstractHandler;
.source "CityHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CityHandler"


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
    new-instance p1, Lcom/android/camera/aiwatermark/data/CityWatermark;

    invoke-direct {p1}, Lcom/android/camera/aiwatermark/data/CityWatermark;-><init>()V

    iput-object p1, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    return-void
.end method


# virtual methods
.method public findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/handler/CityHandler;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->debugGPS()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"

    const-string/jumbo v1, "test.gps.latitude"

    .line 3
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-string/jumbo v3, "test.gps.longtitude"

    .line 4
    invoke-static {v3, v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 6
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 7
    :goto_0
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/camera/aiwatermark/handler/CityHandler;->getAddress(DD)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/handler/CityHandler;->getCityWatermarkList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 9
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 10
    :cond_2
    sget-object v0, Lcom/android/camera/aiwatermark/handler/CityHandler;->TAG:Ljava/lang/String;

    const-string v1, "CityHandler findWatermark"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getAddress(DD)Ljava/lang/String;
.end method

.method public abstract getCityWatermarkList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation
.end method

.method public getLocation()Landroid/location/Location;
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
