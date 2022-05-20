.class public Lcom/android/camera/aiwatermark/data/FestivalWatermark;
.super Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;
.source "FestivalWatermark.java"


# instance fields
.field public mChinaTraditionlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation
.end field

.field public mInternationallist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mInternationallist:Ljava/util/ArrayList;

    return-void
.end method

.method private getChinaTraditionWM()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "0101_c"

    invoke-direct {v1, v5, v4, v3, v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v5, "0505_c"

    invoke-direct {v1, v5, v4, v3, v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v5, "0815_c"

    invoke-direct {v1, v5, v4, v3, v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v5, "0100_c"

    invoke-direct {v1, v5, v4, v3, v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v5, "0707_c"

    invoke-direct {v1, v5, v4, v3, v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v5, "1208_c"

    invoke-direct {v1, v5, v4, v3, v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mChinaTraditionlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getInternationalFestivalWM()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mInternationallist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mInternationallist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "0101"

    invoke-direct {v1, v5, v4, v3, v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mInternationallist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v5, "0214"

    invoke-direct {v1, v5, v4, v3, v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mInternationallist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v5, "0601"

    invoke-direct {v1, v5, v4, v3, v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mInternationallist:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const-string v5, "1225"

    invoke-direct {v1, v5, v4, v3, v2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->mInternationallist:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getFestivalWatermark(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->getChinaTraditionWM()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/aiwatermark/data/FestivalWatermark;->getInternationalFestivalWM()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getForAI()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->getWatermarkByType(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getForManual()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->getWatermarkByType(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
