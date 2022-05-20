.class public Lcom/android/camera/watermark/WaterMarkBitmap;
.super Ljava/lang/Object;
.source "WaterMarkBitmap.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WaterMarkBitmap"


# instance fields
.field public mWaterInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation
.end field

.field public mWaterMarkData:Lcom/android/camera/watermark/WaterMarkData;

.field public mWaterMarkDrawable:Lcom/android/camera/watermark/BaseWaterMarkDrawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterInfos:Ljava/util/List;

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/watermark/WaterMarkBitmap;->generateWaterMarkData()Lcom/android/camera/watermark/WaterMarkData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterMarkData:Lcom/android/camera/watermark/WaterMarkData;

    return-void
.end method


# virtual methods
.method public generateWaterMarkData()Lcom/android/camera/watermark/WaterMarkData;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterInfos:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterInfos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/watermark/WaterMarkData;

    invoke-virtual {v0}, Lcom/android/camera/watermark/WaterMarkData;->getWatermarkType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 3
    sget-object v2, Lcom/android/camera/watermark/WaterMarkBitmap;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected watermark type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;

    iget-object v1, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/camera/watermark/AgeGenderWaterMarkDrawable;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterMarkDrawable:Lcom/android/camera/watermark/BaseWaterMarkDrawable;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->getWaterMarkData()Lcom/android/camera/watermark/WaterMarkData;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;

    iget-object v1, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterMarkDrawable:Lcom/android/camera/watermark/BaseWaterMarkDrawable;

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->getWaterMarkData()Lcom/android/camera/watermark/WaterMarkData;

    move-result-object v1

    :goto_0
    return-object v1

    .line 8
    :cond_3
    :goto_1
    sget-object v0, Lcom/android/camera/watermark/WaterMarkBitmap;->TAG:Ljava/lang/String;

    const-string v2, "The watermark data is empty."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getWaterMarkData()Lcom/android/camera/watermark/WaterMarkData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterMarkData:Lcom/android/camera/watermark/WaterMarkData;

    return-object v0
.end method

.method public releaseBitmap()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/watermark/WaterMarkBitmap;->mWaterMarkDrawable:Lcom/android/camera/watermark/BaseWaterMarkDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
