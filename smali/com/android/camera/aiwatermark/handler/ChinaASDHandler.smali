.class public Lcom/android/camera/aiwatermark/handler/ChinaASDHandler;
.super Lcom/android/camera/aiwatermark/handler/ASDHandler;
.source "ChinaASDHandler.java"


# direct methods
.method public constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/aiwatermark/handler/ASDHandler;-><init>(ZLandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 1

    invoke-super {p0}, Lcom/android/camera/aiwatermark/handler/ASDHandler;->findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v0

    return-object v0
.end method

.method public getASDWatermarkList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/aiwatermark/data/ASDWatermark;

    invoke-direct {v0}, Lcom/android/camera/aiwatermark/data/ASDWatermark;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/ASDWatermark;->getForAI()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
