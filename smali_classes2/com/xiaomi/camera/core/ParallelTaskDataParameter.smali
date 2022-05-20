.class public Lcom/xiaomi/camera/core/ParallelTaskDataParameter;
.super Ljava/lang/Object;
.source "ParallelTaskDataParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    }
.end annotation


# instance fields
.field public anchorPreview:Z

.field public mAgeGenderAndMagicMirrorWater:Z

.field public mAlgorithmName:Ljava/lang/String;

.field public mBokehFrontCamera:Z

.field public mCameraPreferredMode:I

.field public mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

.field public mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field public mFaceWaterMarkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation
.end field

.field public mFilterId:I

.field public mHasDualWaterMark:Z

.field public mIsFrontCamera:Z

.field public mIsMoonMode:Z

.field public mIsSupportMiDualBokeh:Z

.field public mIsSupportZeroDegreeOrientationImage:Z

.field public mJpegQuality:I

.field public mJpegRotation:I

.field public mLightingPattern:I

.field public mLocation:Landroid/location/Location;

.field public mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field public mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field public mMirror:Z

.field public mOrientation:I

.field public mOutputFormat:I

.field public mOutputSize:Landroid/util/Size;

.field public mPictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

.field public mPictureSize:Landroid/util/Size;

.field public mPortraitLightingVersion:I

.field public mPrefix:Ljava/lang/String;

.field public mPreviewSize:Landroid/util/Size;

.field public mRawSize:Landroid/util/Size;

.field public mReprocessBurstShotPicture:Z

.field public mSaveGroupshotPrimitive:Z

.field public mShootOrientation:I

.field public mShootRotation:F

.field public mSiqeType:B

.field public mSuffix:Ljava/lang/String;

.field public mSupportIspHeif:Z

.field public mTiltShiftMode:Ljava/lang/String;

.field public mTimeWaterMarkString:Ljava/lang/String;

.field public mVendorWaterMark:Z


# direct methods
.method public constructor <init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSupportIspHeif:Z

    .line 5
    iput-byte v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSiqeType:B

    .line 6
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    .line 7
    iput-object p2, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    .line 8
    iput-object p3, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    .line 9
    iput p4, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputFormat:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;ILcom/xiaomi/camera/core/ParallelTaskDataParameter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSupportIspHeif:Z

    .line 12
    iput-byte v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSiqeType:B

    .line 13
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mHasDualWaterMark:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mHasDualWaterMark:Z

    .line 14
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMirror:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMirror:Z

    .line 15
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLightingPattern:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLightingPattern:I

    .line 16
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Landroid/util/Size;

    iget-object v1, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    .line 18
    :cond_0
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    if-eqz v0, :cond_1

    .line 19
    new-instance v0, Landroid/util/Size;

    iget-object v1, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    .line 20
    :cond_1
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    if-eqz v0, :cond_2

    .line 21
    new-instance v0, Landroid/util/Size;

    iget-object v1, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    .line 22
    :cond_2
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFilterId:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFilterId:I

    .line 23
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOrientation:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOrientation:I

    .line 24
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegRotation:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegRotation:I

    .line 25
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootRotation:F

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootRotation:F

    .line 26
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootOrientation:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootOrientation:I

    .line 27
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsSupportZeroDegreeOrientationImage:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsSupportZeroDegreeOrientationImage:Z

    .line 28
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 29
    new-instance v0, Landroid/location/Location;

    iget-object v1, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLocation:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLocation:Landroid/location/Location;

    .line 30
    :cond_3
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTimeWaterMarkString:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTimeWaterMarkString:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFaceWaterMarkList:Ljava/util/List;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFaceWaterMarkList:Ljava/util/List;

    .line 32
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAgeGenderAndMagicMirrorWater:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAgeGenderAndMagicMirrorWater:Z

    .line 33
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsFrontCamera:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsFrontCamera:Z

    .line 34
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    if-eqz v0, :cond_4

    .line 35
    new-instance v0, Landroid/util/Size;

    iget-object v1, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    .line 36
    :cond_4
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputFormat:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputFormat:I

    .line 37
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mBokehFrontCamera:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mBokehFrontCamera:Z

    .line 38
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAlgorithmName:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAlgorithmName:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    .line 40
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSuffix:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSuffix:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTiltShiftMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTiltShiftMode:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    .line 43
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegQuality:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegQuality:I

    .line 44
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->anchorPreview:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->anchorPreview:Z

    .line 45
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSupportIspHeif:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSupportIspHeif:Z

    .line 46
    iget-byte p1, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSiqeType:B

    iput-byte p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSiqeType:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/xiaomi/camera/core/ParallelTaskDataParameter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;-><init>(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    return-void
.end method

.method public static synthetic access$1002(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegRotation:I

    return p1
.end method

.method public static synthetic access$1102(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootRotation:F

    return p1
.end method

.method public static synthetic access$1202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootOrientation:I

    return p1
.end method

.method public static synthetic access$1302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsSupportZeroDegreeOrientationImage:Z

    return p1
.end method

.method public static synthetic access$1402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSupportIspHeif:Z

    return p1
.end method

.method public static synthetic access$1502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;B)B
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSiqeType:B

    return p1
.end method

.method public static synthetic access$1602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->anchorPreview:Z

    return p1
.end method

.method public static synthetic access$1702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method public static synthetic access$1802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTimeWaterMarkString:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFaceWaterMarkList:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$2002(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAgeGenderAndMagicMirrorWater:Z

    return p1
.end method

.method public static synthetic access$202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mHasDualWaterMark:Z

    return p1
.end method

.method public static synthetic access$2102(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsFrontCamera:Z

    return p1
.end method

.method public static synthetic access$2202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mBokehFrontCamera:Z

    return p1
.end method

.method public static synthetic access$2302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAlgorithmName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    return-object p1
.end method

.method public static synthetic access$2502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSuffix:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTiltShiftMode:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSaveGroupshotPrimitive:Z

    return p1
.end method

.method public static synthetic access$2802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    return-object p1
.end method

.method public static synthetic access$2902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegQuality:I

    return p1
.end method

.method public static synthetic access$3002(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPrefix:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mVendorWaterMark:Z

    return p1
.end method

.method public static synthetic access$3102(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    return-object p1
.end method

.method public static synthetic access$3202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsMoonMode:Z

    return p1
.end method

.method public static synthetic access$3302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mReprocessBurstShotPicture:Z

    return p1
.end method

.method public static synthetic access$3402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsSupportMiDualBokeh:Z

    return p1
.end method

.method public static synthetic access$3502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPortraitLightingVersion:I

    return p1
.end method

.method public static synthetic access$3602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mCameraPreferredMode:I

    return p1
.end method

.method public static synthetic access$3702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/camera/effect/EffectController$EffectRectAttribute;)Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMirror:Z

    return p1
.end method

.method public static synthetic access$702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLightingPattern:I

    return p1
.end method

.method public static synthetic access$802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFilterId:I

    return p1
.end method

.method public static synthetic access$902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOrientation:I

    return p1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAlgorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraPreferredMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mCameraPreferredMode:I

    return v0
.end method

.method public getDeviceWatermarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    return-object v0
.end method

.method public getEffectRectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    return-object v0
.end method

.method public getFaceWaterMarkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFaceWaterMarkList:Ljava/util/List;

    return-object v0
.end method

.method public getFilterId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFilterId:I

    return v0
.end method

.method public getJpegQuality()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegQuality:I

    return v0
.end method

.method public getJpegRotation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegRotation:I

    return v0
.end method

.method public getLightingPattern()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLightingPattern:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getMajorAIWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object v0
.end method

.method public getMinorAIWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOrientation:I

    return v0
.end method

.method public getOutputFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputFormat:I

    return v0
.end method

.method public getOutputSize()Landroid/util/Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    return-object v0
.end method

.method public getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    return-object v0
.end method

.method public getPictureSize()Landroid/util/Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    return-object v0
.end method

.method public getPortraitLightingVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPortraitLightingVersion:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    return-object v0
.end method

.method public getRawSize()Landroid/util/Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    return-object v0
.end method

.method public getShootOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootOrientation:I

    return v0
.end method

.method public getShootRotation()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootRotation:F

    return v0
.end method

.method public getSiqeType()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSiqeType:B

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportZeroDegreeOrientationImage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsSupportZeroDegreeOrientationImage:Z

    return v0
.end method

.method public getTiltShiftMode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTiltShiftMode:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeWaterMarkString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTimeWaterMarkString:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorWaterMark()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mVendorWaterMark:Z

    return v0
.end method

.method public isAgeGenderAndMagicMirrorWater()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAgeGenderAndMagicMirrorWater:Z

    return v0
.end method

.method public isAnchorPreview()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->anchorPreview:Z

    return v0
.end method

.method public isBokehFrontCamera()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mBokehFrontCamera:Z

    return v0
.end method

.method public isCinematicAspectRatio()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFrontCamera()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsFrontCamera:Z

    return v0
.end method

.method public isHasDualWaterMark()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mHasDualWaterMark:Z

    return v0
.end method

.method public isHasFrontWaterMark()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isFrontWatermarkEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHasWaterMark()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasDualWaterMark()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasFrontWaterMark()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTimeWaterMarkString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMirror()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMirror:Z

    return v0
.end method

.method public isMoonMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsMoonMode:Z

    return v0
.end method

.method public isSaveGroupshotPrimitive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSaveGroupshotPrimitive:Z

    return v0
.end method

.method public isSupportIspHeif()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSupportIspHeif:Z

    return v0
.end method

.method public isSupportMiDualBokeh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsSupportMiDualBokeh:Z

    return v0
.end method

.method public isUltraPixelWaterMark()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isUltraWatermarkEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSiqeType(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSiqeType:B

    return-void
.end method

.method public shouldReprocessBurstShotPicture()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mReprocessBurstShotPicture:Z

    return v0
.end method

.method public updateOutputSize(II)V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    return-void
.end method
