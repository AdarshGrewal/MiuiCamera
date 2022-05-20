.class public Lcom/xiaomi/camera/imagecodec/ReprocessData;
.super Ljava/lang/Object;
.source "ReprocessData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;,
        Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_JPEG_QUALITY:I = 0x64

.field public static REPROCESS_FUNCTION_NONE:I = 0x0

.field public static REPROCESS_FUNCTION_RAW_MFNR:I = 0x1

.field public static REPROCESS_FUNCTION_RAW_MFNR_2ND:I = 0x2

.field public static REPROCESS_FUNCTION_RAW_SUPERNIGHT:I = 0x3

.field public static REPROCESS_FUNCTION_RAW_SUPERNIGHT_2ND:I = 0x4


# instance fields
.field public mCropRegion:[I

.field public mDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

.field public mImageName:Ljava/lang/String;

.field public mImageTag:Ljava/lang/String;

.field public mIsFrontCamera:Z

.field public mIsFrontMirror:Z

.field public mIsMainImageFromPool:Z

.field public mIsTuningImageFromPool:Z

.field public mJpegQuality:I

.field public mKeepTuningImage:Z

.field public mMainImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field public mOrientation:I

.field public mOutputFormat:I

.field public mOutputHeight:I

.field public mOutputWidth:I

.field public mRawInputHeight:I

.field public mRawInputWidth:I

.field public mReprocessFunctionType:I

.field public mResultListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

.field public mRotateOrientationToZero:Z

.field public mSiqeType:B

.field public mTotalCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

.field public mTuningImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field public mYuvInputHeight:I

.field public mYuvInputWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/media/Image;Ljava/lang/String;Lcom/xiaomi/protocol/ICustomCaptureResult;ZIIILcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOrientation:I

    const/16 v0, 0x64

    .line 3
    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mImageTag:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTotalCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    .line 8
    iput-boolean p4, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontCamera:Z

    .line 9
    iput p5, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputWidth:I

    .line 10
    iput p6, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputHeight:I

    .line 11
    iput p7, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputFormat:I

    .line 12
    iput-object p8, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mResultListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    .line 13
    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/protocol/ICustomCaptureResult;ZIIILcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/protocol/ICustomCaptureResult;",
            "ZIII",
            "Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOrientation:I

    const/16 v0, 0x64

    .line 16
    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    .line 17
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    .line 18
    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mImageTag:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTotalCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    .line 20
    iput-boolean p4, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontCamera:Z

    .line 21
    iput p5, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputWidth:I

    .line 22
    iput p6, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputHeight:I

    .line 23
    iput p7, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputFormat:I

    .line 24
    iput-object p8, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mResultListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    return-void
.end method


# virtual methods
.method public getCropRegion()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mCropRegion:[I

    return-object v0
.end method

.method public getDataStatusCallback()Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    return-object v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getJpegQuality()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    return v0
.end method

.method public getMainImage()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOrientation:I

    return v0
.end method

.method public getOutputFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputFormat:I

    return v0
.end method

.method public getOutputHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputHeight:I

    return v0
.end method

.method public getOutputWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputWidth:I

    return v0
.end method

.method public getRawInputHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRawInputHeight:I

    return v0
.end method

.method public getRawInputWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRawInputWidth:I

    return v0
.end method

.method public getReprocessFunctionType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mReprocessFunctionType:I

    return v0
.end method

.method public getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mResultListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    return-object v0
.end method

.method public getSiqeType()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mSiqeType:B

    return v0
.end method

.method public getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTotalCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    return-object v0
.end method

.method public getTuningImage()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTuningImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getYuvInputHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mYuvInputHeight:I

    return v0
.end method

.method public getYuvInputWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mYuvInputWidth:I

    return v0
.end method

.method public isFrontCamera()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontCamera:Z

    return v0
.end method

.method public isFrontMirror()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontMirror:Z

    return v0
.end method

.method public isImageFromPool()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsMainImageFromPool:Z

    return v0
.end method

.method public isKeepTuningImage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mKeepTuningImage:Z

    return v0
.end method

.method public isRotateOrientationToZero()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRotateOrientationToZero:Z

    return v0
.end method

.method public isTuningImageFromPool()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsTuningImageFromPool:Z

    return v0
.end method

.method public setCropRegion([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mCropRegion:[I

    return-void
.end method

.method public setDataStatusCallback(Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    return-void
.end method

.method public setFrontMirror(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontMirror:Z

    return-void
.end method

.method public setImageFromPool(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsMainImageFromPool:Z

    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mImageName:Ljava/lang/String;

    return-void
.end method

.method public setJpegQuality(I)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    :goto_1
    return-void
.end method

.method public setKeepTuningImage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mKeepTuningImage:Z

    return-void
.end method

.method public setMainImage(Landroid/media/Image;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/Image;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setMainImage(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    .line 2
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOrientation:I

    return-void
.end method

.method public setRawInputSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRawInputWidth:I

    .line 2
    iput p2, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRawInputHeight:I

    return-void
.end method

.method public setReprocessFunctionType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mReprocessFunctionType:I

    return-void
.end method

.method public setRotateOrientationToZero(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRotateOrientationToZero:Z

    return-void
.end method

.method public setSiqeType(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mSiqeType:B

    return-void
.end method

.method public setTuningImage(Landroid/media/Image;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/Image;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTuningImageList:Ljava/util/ArrayList;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTuningImageList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setTuningImage(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTuningImageList:Ljava/util/ArrayList;

    .line 2
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTuningImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setTuningImageFromPool(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsTuningImageFromPool:Z

    return-void
.end method

.method public setYuvInputSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mYuvInputWidth:I

    .line 2
    iput p2, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mYuvInputHeight:I

    return-void
.end method
