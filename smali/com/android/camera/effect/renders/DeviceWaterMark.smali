.class public Lcom/android/camera/effect/renders/DeviceWaterMark;
.super Lcom/android/camera/effect/renders/WaterMark;
.source "DeviceWaterMark.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DeviceWaterMark"


# instance fields
.field public mCenterX:I

.field public mCenterY:I

.field public final mIsCinematicAspectRatio:Z

.field public final mIsLTR:Z

.field public mPaddingX:I

.field public mPaddingY:I

.field public final mWaterHeight:I

.field public final mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field public final mWaterWidth:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;ZZ)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/effect/renders/WaterMark;-><init>(III)V

    .line 2
    iput-boolean p5, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mIsCinematicAspectRatio:Z

    .line 3
    iput-boolean p6, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mIsLTR:Z

    .line 4
    invoke-static {p1, p2}, Lcom/android/camera/Util;->getWatermarkRatio(II)F

    move-result v0

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->getWaterMarkPaddingX()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingX:I

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->getWaterMarkPaddingY()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingY:I

    .line 7
    iget-boolean v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mIsCinematicAspectRatio:Z

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    if-eqz v1, :cond_3

    if-eq p3, v3, :cond_0

    if-ne p3, v2, :cond_1

    :cond_0
    if-le p1, p2, :cond_1

    move v4, p2

    move p2, p1

    move p1, v4

    .line 8
    :cond_1
    invoke-static {p1, p2}, Lcom/android/camera/Util;->getWatermarkCinematicAspectMargin(II)I

    move-result v1

    if-ge p1, p2, :cond_2

    .line 9
    iget p1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingX:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingX:I

    goto :goto_0

    .line 10
    :cond_2
    iget p1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingY:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingY:I

    :cond_3
    :goto_0
    if-eqz p5, :cond_5

    if-eq p3, v3, :cond_4

    if-ne p3, v2, :cond_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 11
    :goto_1
    invoke-static {p4, v0, p1, p6}, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->newInstance(Ljava/lang/String;FZZ)Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 12
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterWidth:I

    .line 13
    iget-object p1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterHeight:I

    .line 14
    invoke-direct {p0}, Lcom/android/camera/effect/renders/DeviceWaterMark;->calcCenterAxis()V

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWaterMark;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeviceWaterMark"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private calcCenterAxis()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mIsLTR:Z

    const/16 v1, 0x10e

    const/16 v2, 0xb4

    const/16 v3, 0x5a

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mOrientation:I

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterX:I

    .line 4
    iget v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterY:I

    goto/16 :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterX:I

    .line 6
    iget v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterY:I

    goto/16 :goto_0

    .line 7
    :cond_2
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterX:I

    .line 8
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterY:I

    goto/16 :goto_0

    .line 9
    :cond_3
    iget v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterX:I

    .line 10
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterY:I

    goto :goto_0

    .line 11
    :cond_4
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mOrientation:I

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    goto :goto_0

    .line 12
    :cond_5
    iget v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingY:I

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterX:I

    .line 13
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterY:I

    goto :goto_0

    .line 14
    :cond_6
    iget v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingX:I

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterX:I

    .line 15
    iget v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingY:I

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterY:I

    goto :goto_0

    .line 16
    :cond_7
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterX:I

    .line 17
    iget v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingX:I

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterY:I

    goto :goto_0

    .line 18
    :cond_8
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterX:I

    .line 19
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterY:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterY:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterHeight:I

    return v0
.end method

.method public getPaddingX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingX:I

    return v0
.end method

.method public getPaddingY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingY:I

    return v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterWidth:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceWaterMark{pictureWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pictureHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/WaterMark;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCenterX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCenterY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mCenterY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPaddingX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPaddingY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mPaddingY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaterWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaterHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLTR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mIsLTR:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mWaterTexture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsCinematicAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/DeviceWaterMark;->mIsCinematicAspectRatio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
