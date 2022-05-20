.class public Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;
.super Lcom/android/camera/watermark/BaseWaterMarkDrawable;
.source "MagicMirrorWaterMarkDrawable.java"


# static fields
.field public static final MAGIC_MIRROR_RECT_COLOR:I = -0x47c9


# instance fields
.field public mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

.field public mFaceRectPaint:Landroid/graphics/Paint;

.field public mHonPadding:I

.field public mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;


# direct methods
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
    invoke-direct {p0, p1}, Lcom/android/camera/watermark/BaseWaterMarkDrawable;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getFaceRectPaint(Lcom/android/camera/watermark/WaterMarkData;)Landroid/graphics/Paint;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;->mFaceRectPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method public getHonPadding(Lcom/android/camera/watermark/WaterMarkData;)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;->mHonPadding:I

    return p1
.end method

.method public getTopBackgroundDrawable(Lcom/android/camera/watermark/WaterMarkData;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getTopIndicatorDrawable(Lcom/android/camera/watermark/WaterMarkData;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public initBeforeDraw()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08056e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080200

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;->mFaceRectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;->mFaceRectPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07029c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;->mFaceRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;->mFaceRectPaint:Landroid/graphics/Paint;

    const/16 v1, -0x47c9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->mFacePopupBottom:I

    .line 9
    iget-object v0, p0, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07028e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/watermark/MagicMirrorWaterMarkDrawable;->mHonPadding:I

    .line 10
    iget-object v0, p0, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070294

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/watermark/BaseWaterMarkDrawable;->mVerPadding:I

    return-void
.end method
