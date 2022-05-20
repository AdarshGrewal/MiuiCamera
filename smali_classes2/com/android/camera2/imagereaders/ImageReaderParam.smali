.class public Lcom/android/camera2/imagereaders/ImageReaderParam;
.super Ljava/lang/Object;
.source "ImageReaderParam.java"


# instance fields
.field public isMiviNightModeSupported:Z

.field public isMultiSurfaceSatMode:Z

.field public isQcfaMode:Z

.field public isUseParallelVtCam:Z

.field public mCameraId:I

.field public mConfigs:Lcom/android/camera2/CameraConfigs;

.field public mFacingFront:Z

.field public mHdrType:I

.field public mMTKFusionPhysicalId:[I

.field public mMaxBufferSize:I

.field public mRawCallbackType:I

.field public mSatCameraIds:[I

.field public needMultipleRaw:Z

.field public needQcfa:Z

.field public needSingleRaw:Z


# direct methods
.method public constructor <init>(ILcom/android/camera2/CameraConfigs;ZZZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->mCameraId:I

    .line 3
    iput-object p2, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 4
    iput-boolean p3, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->isMultiSurfaceSatMode:Z

    .line 5
    iput-boolean p4, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->isUseParallelVtCam:Z

    .line 6
    iput-boolean p5, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->needSingleRaw:Z

    .line 7
    iput p6, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->mMaxBufferSize:I

    return-void
.end method


# virtual methods
.method public getCameraId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->mCameraId:I

    return v0
.end method

.method public getConfigs()Lcom/android/camera2/CameraConfigs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->mConfigs:Lcom/android/camera2/CameraConfigs;

    return-object v0
.end method

.method public getHdrType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->mHdrType:I

    return v0
.end method

.method public getMTKFusionPhysicalId()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->mMTKFusionPhysicalId:[I

    return-object v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->mMaxBufferSize:I

    return v0
.end method

.method public getRawCallbackType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->mRawCallbackType:I

    return v0
.end method

.method public getSatCameraIds()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->mSatCameraIds:[I

    return-object v0
.end method

.method public isFacingFront()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->mFacingFront:Z

    return v0
.end method

.method public isMultiSurfaceSatMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->isMultiSurfaceSatMode:Z

    return v0
.end method

.method public isNeedMultipleRaw()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->needMultipleRaw:Z

    return v0
.end method

.method public isNeedSingleRaw()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->needSingleRaw:Z

    return v0
.end method

.method public isQcfaMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->isQcfaMode:Z

    return v0
.end method

.method public isUseParallelVtCam()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->isUseParallelVtCam:Z

    return v0
.end method

.method public miviNightModeSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->isMiviNightModeSupported:Z

    return v0
.end method

.method public needQcfa()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->needQcfa:Z

    return v0
.end method

.method public setFacingFront(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->mFacingFront:Z

    return-void
.end method

.method public setHdrType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->mHdrType:I

    return-void
.end method

.method public setMTKFusionPhysicalId([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->mMTKFusionPhysicalId:[I

    return-void
.end method

.method public setMiviNightModeSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->isMiviNightModeSupported:Z

    return-void
.end method

.method public setNeedMultipleRaw(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->needMultipleRaw:Z

    return-void
.end method

.method public setNeedQcfa(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->needQcfa:Z

    return-void
.end method

.method public setQcfaMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->isQcfaMode:Z

    return-void
.end method

.method public setRawCallbackType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->mRawCallbackType:I

    return-void
.end method

.method public setSatCameraIds([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/imagereaders/ImageReaderParam;->mSatCameraIds:[I

    return-void
.end method
