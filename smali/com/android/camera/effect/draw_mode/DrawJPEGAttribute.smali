.class public Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawJPEGAttribute.java"


# instance fields
.field public mAlgorithmName:Ljava/lang/String;

.field public mApplyWaterMark:Z

.field public mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field public mCoordinatesOfTheRegionUnderWatermarks:[I

.field public mData:[B

.field public mDataOfTheRegionUnderWatermarks:[B

.field public mDate:J

.field public mDeviceWaterMarkEnabled:Z

.field public mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

.field public mEffectIndex:I

.field public mExif:Lcom/android/gallery3d/exif/ExifInterface;

.field public mFinalImage:Z

.field public mHasDualWaterMark:Z

.field public mHasFrontWaterMark:Z

.field public mHeight:I

.field public mInfo:Lcom/xiaomi/camera/core/PictureInfo;

.field public mIsPortraitRawData:Z

.field public mIsUltraPixelWatermarkEnabled:Z

.field public mJpegOrientation:I

.field public mLoc:Landroid/location/Location;

.field public mMirror:Z

.field public mNeedThumbnail:Z

.field public mOrientation:I

.field public mPreviewHeight:I

.field public mPreviewThumbnailHash:I

.field public mPreviewWidth:I

.field public mRequestModuleIdx:I

.field public mShootRotation:F

.field public mTimeWaterMarkText:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mUiStyle:I

.field public mUri:Landroid/net/Uri;

.field public mWaterInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation
.end field

.field public mWidth:I


# direct methods
.method public constructor <init>([BZIIIIILcom/android/camera/effect/EffectController$EffectRectAttribute;Landroid/location/Location;Ljava/lang/String;JIIFZLjava/lang/String;ZLcom/xiaomi/camera/core/PictureInfo;Ljava/util/List;ZZLjava/lang/String;ZZLcom/android/camera/effect/renders/DeviceWatermarkParam;ZIII)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZIIIII",
            "Lcom/android/camera/effect/EffectController$EffectRectAttribute;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "JIIFZ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/xiaomi/camera/core/PictureInfo;",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;ZZ",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/android/camera/effect/renders/DeviceWatermarkParam;",
            "ZIII)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUiStyle:I

    move v2, p3

    .line 4
    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    move v2, p4

    .line 5
    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    move v2, p5

    .line 6
    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    move v2, p6

    .line 7
    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    move-object v2, p1

    .line 8
    iput-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    move v2, p2

    .line 9
    iput-boolean v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mNeedThumbnail:Z

    move-wide v2, p11

    .line 10
    iput-wide v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    move v2, p7

    .line 11
    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    move-object v2, p8

    .line 12
    iput-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    move-object v2, p9

    .line 13
    iput-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    move-object v2, p10

    .line 14
    iput-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    move/from16 v2, p13

    .line 15
    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    move/from16 v2, p14

    .line 16
    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move/from16 v2, p15

    .line 17
    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    move/from16 v2, p16

    .line 18
    iput-boolean v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    .line 19
    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mFinalImage:Z

    move-object/from16 v1, p17

    .line 20
    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    move/from16 v1, p18

    .line 21
    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    move-object/from16 v1, p19

    .line 22
    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    move-object/from16 v1, p20

    .line 23
    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWaterInfos:Ljava/util/List;

    move/from16 v1, p21

    .line 24
    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWaterMarkEnabled:Z

    move/from16 v1, p22

    .line 25
    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mIsUltraPixelWatermarkEnabled:Z

    move-object/from16 v1, p23

    .line 26
    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTimeWaterMarkText:Ljava/lang/String;

    move/from16 v1, p24

    .line 27
    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHasDualWaterMark:Z

    move/from16 v1, p25

    .line 28
    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHasFrontWaterMark:Z

    move-object/from16 v1, p26

    .line 29
    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move/from16 v1, p27

    .line 30
    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mIsPortraitRawData:Z

    const/16 v1, 0x9

    .line 31
    iput v1, v0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    move/from16 v1, p28

    .line 32
    iput v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRequestModuleIdx:I

    move/from16 v1, p29

    .line 33
    iput v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewThumbnailHash:I

    const/4 v1, 0x0

    .line 34
    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDataOfTheRegionUnderWatermarks:[B

    .line 35
    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    move/from16 v1, p30

    .line 36
    iput v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUiStyle:I

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
