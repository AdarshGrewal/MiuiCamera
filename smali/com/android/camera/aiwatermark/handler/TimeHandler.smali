.class public Lcom/android/camera/aiwatermark/handler/TimeHandler;
.super Lcom/android/camera/aiwatermark/handler/AbstractHandler;
.source "TimeHandler.java"


# instance fields
.field public mWatermarkItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;-><init>(Z)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/aiwatermark/handler/TimeHandler;->mWatermarkItems:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Lcom/android/camera/aiwatermark/data/TimeWatermark;

    invoke-direct {p1}, Lcom/android/camera/aiwatermark/data/TimeWatermark;-><init>()V

    iput-object p1, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    return-void
.end method


# virtual methods
.method public findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/handler/TimeHandler;->mWatermarkItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->getForAI()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/aiwatermark/handler/TimeHandler;->mWatermarkItems:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/aiwatermark/handler/TimeHandler;->mWatermarkItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object v0
.end method

.method public getDayOfWeek()I
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
