.class public Lcom/android/camera/aiwatermark/handler/ChinaFestivalHandler;
.super Lcom/android/camera/aiwatermark/handler/FestivalHandler;
.source "ChinaFestivalHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ChinaFestivalHandler"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/aiwatermark/handler/FestivalHandler;-><init>(Z)V

    .line 2
    new-instance p1, Lcom/android/camera/aiwatermark/data/FestivalWatermark;

    invoke-direct {p1}, Lcom/android/camera/aiwatermark/data/FestivalWatermark;-><init>()V

    iput-object p1, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    return-void
.end method

.method private findFestivalWatermark(Ljava/lang/String;)Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->mData:Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;

    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/AbstractWatermarkData;->getForAI()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/camera/aiwatermark/handler/ChinaFestivalHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getChinaDate()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->today()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDate()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->getDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->isChineseEve()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0100_c"

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/aiwatermark/handler/ChinaFestivalHandler;->getChinaDate()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    sget-object v1, Lcom/android/camera/aiwatermark/handler/ChinaFestivalHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChineseDate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/aiwatermark/handler/ChinaFestivalHandler;->findFestivalWatermark(Ljava/lang/String;)Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/aiwatermark/handler/ChinaFestivalHandler;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera/aiwatermark/handler/ChinaFestivalHandler;->findFestivalWatermark(Ljava/lang/String;)Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    sget-object v0, Lcom/android/camera/aiwatermark/handler/ChinaFestivalHandler;->TAG:Ljava/lang/String;

    const-string v1, "Festival watermark null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
