.class public Lcom/android/camera/aiwatermark/handler/IndiaFestivalHandler;
.super Lcom/android/camera/aiwatermark/handler/FestivalHandler;
.source "IndiaFestivalHandler.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/aiwatermark/handler/FestivalHandler;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/aiwatermark/handler/FestivalHandler;->findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v0

    return-object v0
.end method
