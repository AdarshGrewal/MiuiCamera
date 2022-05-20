.class public Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;
.super Ljava/lang/Object;
.source "CaptureData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/CaptureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureDataBean"
.end annotation


# instance fields
.field public mCaptureId:Ljava/lang/String;

.field public mFirstTimestamp:J

.field public mHasCaptureData:Z

.field public mIsFirstResult:Z

.field public mIsHdrSrShot:Z

.field public mIsMainImageFromPool:Z

.field public mIsSubImageFromPool:Z

.field public mIsTuningImageFromPool:Z

.field public mMainImage:Landroid/media/Image;

.field public mPendingImageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/PendingImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mRequireTuningData:Z

.field public mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

.field public mSatFusionType:I

.field public mStartTime:J

.field public mStreamNum:I

.field public mSubImage:Landroid/media/Image;

.field public mTimestamp:J

.field public mTuningImage:Landroid/media/Image;


# direct methods
.method public constructor <init>(IZIZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mStreamNum:I

    .line 3
    iput-boolean p2, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mRequireTuningData:Z

    .line 4
    iput p3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSatFusionType:I

    .line 5
    iput-boolean p4, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mHasCaptureData:Z

    .line 6
    iput-boolean p5, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsHdrSrShot:Z

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mStartTime:J

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mFirstTimestamp:J

    return-wide v0
.end method

.method private setImageInner(Landroid/media/Image;IIZI)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p5, v1, :cond_3

    if-eq p5, v2, :cond_3

    const/4 v3, 0x3

    if-eq p5, v3, :cond_0

    .line 1
    invoke-virtual {p0, p1, p3, p4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    goto :goto_0

    :cond_0
    if-ne p2, v3, :cond_1

    .line 2
    invoke-virtual {p0, p1, v1, p4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    goto :goto_0

    :cond_1
    if-ne p3, v2, :cond_2

    .line 3
    invoke-virtual {p0, p1, v2, p4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0, p1, v0, p4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    goto :goto_0

    :cond_3
    const/4 p5, 0x6

    if-ne p2, p5, :cond_4

    .line 5
    invoke-virtual {p0, p1, v1, p4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    goto :goto_0

    :cond_4
    if-ne p3, v2, :cond_5

    .line 6
    invoke-virtual {p0, p1, v2, p4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    goto :goto_0

    .line 7
    :cond_5
    invoke-virtual {p0, p1, v0, p4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 5
    iput-object v2, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 8
    iget-object v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 9
    iput-object v2, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTuningImage:Landroid/media/Image;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 12
    iget-object v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTuningImage:Landroid/media/Image;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 13
    iput-object v2, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTuningImage:Landroid/media/Image;

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mPendingImageInfoList:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/PendingImageInfo;

    .line 18
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/PendingImageInfo;->getImage()Landroid/media/Image;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 20
    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 21
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getCaptureId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mCaptureId:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mFirstTimestamp:J

    return-wide v0
.end method

.method public getMainImage()Landroid/media/Image;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    return-object v0
.end method

.method public getPendingImageInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/PendingImageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mPendingImageInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    return-object v0
.end method

.method public getSatFusionType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSatFusionType:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mStartTime:J

    return-wide v0
.end method

.method public getStreamNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mStreamNum:I

    return v0
.end method

.method public getSubImage()Landroid/media/Image;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTimestamp:J

    return-wide v0
.end method

.method public getTuningImage()Landroid/media/Image;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTuningImage:Landroid/media/Image;

    return-object v0
.end method

.method public handlePendingImage()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mPendingImageInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/PendingImageInfo;

    .line 5
    invoke-static {}, Lcom/xiaomi/camera/core/CaptureData;->access$100()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSatFusionType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/PendingImageInfo;->getCameraType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/PendingImageInfo;->getImageType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/PendingImageInfo;->isPoolImage()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "handle pending image: fusionType = %d, cameraType = %d, imageType = %d, isPool = %b"

    .line 7
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/PendingImageInfo;->getImage()Landroid/media/Image;

    move-result-object v5

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/PendingImageInfo;->getCameraType()I

    move-result v6

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/PendingImageInfo;->getImageType()I

    move-result v7

    .line 9
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/PendingImageInfo;->isPoolImage()Z

    move-result v8

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSatFusionType()I

    move-result v9

    move-object v4, p0

    .line 10
    invoke-direct/range {v4 .. v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImageInner(Landroid/media/Image;IIZI)V

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isDataReady()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mRequireTuningData:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTuningImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const/4 v3, 0x2

    .line 2
    iget v4, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mStreamNum:I

    if-ne v3, v4, :cond_3

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/core/CaptureData;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mMainImage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mSubImage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " isTuningDataReady: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isHasCaptureData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isHasCaptureData()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isHasCaptureData()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    if-ne v2, v4, :cond_4

    .line 8
    iget-object v3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isHasCaptureData()Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public isFirstResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsFirstResult:Z

    return v0
.end method

.method public isHasCaptureData()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mHasCaptureData:Z

    return v0
.end method

.method public isHdrSrShot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsHdrSrShot:Z

    return v0
.end method

.method public isMainImageFromPool()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsMainImageFromPool:Z

    return v0
.end method

.method public isRequireTuningData()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mRequireTuningData:Z

    return v0
.end method

.method public isSubImageFromPool()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsSubImageFromPool:Z

    return v0
.end method

.method public isTuningImageFromPool()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsTuningImageFromPool:Z

    return v0
.end method

.method public setCaptureId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mCaptureId:Ljava/lang/String;

    return-void
.end method

.method public setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    .line 2
    iput-boolean p2, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsFirstResult:Z

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isHasCaptureData()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->handlePendingImage()V

    :cond_0
    return-void
.end method

.method public setFirstTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mFirstTimestamp:J

    return-void
.end method

.method public setHasCaptureData(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mHasCaptureData:Z

    if-nez v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mHasCaptureData:Z

    :cond_0
    return-void
.end method

.method public setImage(Landroid/media/Image;IIZ)V
    .locals 7

    .line 16
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isHasCaptureData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSatFusionType()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImageInner(Landroid/media/Image;IIZI)V

    .line 18
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->handlePendingImage()V

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mPendingImageInfoList:Ljava/util/List;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mPendingImageInfoList:Ljava/util/List;

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mPendingImageInfoList:Ljava/util/List;

    new-instance v2, Lcom/xiaomi/camera/core/PendingImageInfo;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/xiaomi/camera/core/PendingImageInfo;-><init>(Landroid/media/Image;IIZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-static {}, Lcom/xiaomi/camera/core/CaptureData;->access$100()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, v1

    const-string p2, "add pending image: cameraType = %d, imageType = %d, isPool = %b"

    .line 24
    invoke-static {v0, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setImage(Landroid/media/Image;IZ)V
    .locals 3

    if-nez p2, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    .line 2
    iput-boolean p3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsMainImageFromPool:Z

    if-eqz p1, :cond_3

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTimestamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p2

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/core/CaptureData;->access$100()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImage: mainImage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 5
    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    .line 6
    iput-boolean p3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsSubImageFromPool:Z

    .line 7
    iget-wide p2, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTimestamp:J

    cmp-long p2, v1, p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    .line 8
    :try_start_1
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTimestamp:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/core/CaptureData;->access$100()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImage: subImage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 10
    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTuningImage:Landroid/media/Image;

    .line 11
    iput-boolean p3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsTuningImageFromPool:Z

    .line 12
    iget-wide p2, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTimestamp:J

    cmp-long p2, v1, p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    .line 13
    :try_start_2
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTimestamp:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p2

    .line 14
    invoke-static {}, Lcom/xiaomi/camera/core/CaptureData;->access$100()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImage: tuningImage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {}, Lcom/xiaomi/camera/core/CaptureData;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setImage: unknown target: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public setIsHdrSrShot(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsHdrSrShot:Z

    return-void
.end method

.method public setRequireTuningData(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mRequireTuningData:Z

    return-void
.end method

.method public setSatFusionType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSatFusionType:I

    return-void
.end method

.method public setStreamNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mStreamNum:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptureDataBean{mResult=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    if-nez v1, :cond_0

    const-string v1, "NULL"

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], mFirstTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mFirstTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
