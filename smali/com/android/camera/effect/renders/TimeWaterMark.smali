.class public Lcom/android/camera/effect/renders/TimeWaterMark;
.super Lcom/android/camera/effect/renders/WaterMark;
.source "TimeWaterMark.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TimeWaterMark"


# instance fields
.field public mCenterX:I

.field public mCenterY:I

.field public final mIsCinematicAspectRatio:Z

.field public final mIsLTR:Z

.field public mPaddingX:I

.field public mPaddingY:I

.field public final mWaterHeight:I

.field public final mWaterText:Ljava/lang/String;

.field public final mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field public final mWaterWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZZ)V
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/effect/renders/WaterMark;-><init>(III)V

    iput-boolean p5, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mIsCinematicAspectRatio:Z

    iput-boolean p6, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mIsLTR:Z

    invoke-static {p2, p3}, Lcom/android/camera/Util;->getWatermarkRatio(II)F

    move-result p5

    invoke-static {}, Lcom/android/camera/Util;->getWaterMarkPaddingX()F

    move-result p6

    mul-float/2addr p6, p5

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p6

    and-int/lit8 p6, p6, -0x2

    iput p6, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingX:I

    invoke-static {}, Lcom/android/camera/Util;->getWaterMarkPaddingY()F

    move-result p6

    mul-float/2addr p6, p5

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p6

    and-int/lit8 p6, p6, -0x2

    iput p6, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingY:I

    iget-boolean p6, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mIsCinematicAspectRatio:Z

    if-eqz p6, :cond_3

    const/16 p6, 0x5a

    if-eq p4, p6, :cond_0

    const/16 p6, 0x10e

    if-ne p4, p6, :cond_1

    :cond_0
    if-le p2, p3, :cond_1

    move v0, p3

    move p3, p2

    move p2, v0

    :cond_1
    invoke-static {p2, p3}, Lcom/android/camera/Util;->getWatermarkCinematicAspectMargin(II)I

    move-result p4

    if-ge p2, p3, :cond_2

    iget p2, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingX:I

    add-int/2addr p2, p4

    iput p2, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingX:I

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingY:I

    add-int/2addr p2, p4

    iput p2, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingY:I

    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterText:Ljava/lang/String;

    invoke-static {p1, p5}, Lcom/android/gallery3d/ui/TimeWaterMarkTexture;->newInstance(Ljava/lang/String;F)Lcom/android/gallery3d/ui/TimeWaterMarkTexture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterWidth:I

    iget-object p1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterHeight:I

    invoke-direct {p0}, Lcom/android/camera/effect/renders/TimeWaterMark;->calcCenterAxis()V

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/TimeWaterMark;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TimeWaterMark"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private calcCenterAxis()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mIsLTR:Z

    const/16 v1, 0x10e

    const/16 v2, 0xb4

    const/16 v3, 0x5a

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mOrientation:I

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingY:I

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterY:I

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingX:I

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingY:I

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterY:I

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingX:I

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterY:I

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterY:I

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mOrientation:I

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/TimeWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/TimeWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterY:I

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/TimeWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/TimeWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterY:I

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/TimeWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/TimeWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterY:I

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/TimeWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/TimeWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterY:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterY:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterHeight:I

    return v0
.end method

.method public getPaddingX()I
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingX:I

    return v0
.end method

.method public getPaddingY()I
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingY:I

    return v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterWidth:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeWaterMark{pictureWidth="

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

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCenterY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mCenterY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPaddingX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPaddingY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mPaddingY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaterWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaterHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaterText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mWaterTexture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsCinematicAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/TimeWaterMark;->mIsCinematicAspectRatio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
