.class public Lcom/android/camera/aiwatermark/handler/IndiaCityHandler;
.super Lcom/android/camera/aiwatermark/handler/CityHandler;
.source "IndiaCityHandler.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/aiwatermark/handler/CityHandler;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/aiwatermark/handler/CityHandler;->findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v0

    return-object v0
.end method

.method public getAddress(DD)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCityWatermarkList()Ljava/util/ArrayList;
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
