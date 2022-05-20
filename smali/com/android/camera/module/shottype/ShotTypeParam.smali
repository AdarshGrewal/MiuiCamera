.class public Lcom/android/camera/module/shottype/ShotTypeParam;
.super Ljava/lang/Object;
.source "ShotTypeParam.java"


# instance fields
.field public isCupCapture:Z

.field public isDngPostProc:Z

.field public final isImageIntent:Z

.field public final isMultiFrameCapture:Z

.field public final isMultiRawCapture:Z

.field public final isParallel:Z

.field public final isRepeatingCapture:Z

.field public final mActualId:I

.field public final mBogusId:I

.field public mConfigs:Lcom/android/camera2/CameraConfigs;

.field public final mModuleIndex:I

.field public mRawType:I

.field public final needDepth:Z


# direct methods
.method public constructor <init>(Lcom/android/camera2/CameraConfigs;ZIIIZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 3
    iput-boolean p2, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->isImageIntent:Z

    .line 4
    iput p3, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->mModuleIndex:I

    .line 5
    iput p4, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->mBogusId:I

    .line 6
    iput p5, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->mActualId:I

    .line 7
    iput-boolean p6, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->isParallel:Z

    .line 8
    iput-boolean p7, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->isMultiFrameCapture:Z

    .line 9
    iput-boolean p8, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->isMultiRawCapture:Z

    .line 10
    iput-boolean p9, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->isRepeatingCapture:Z

    .line 11
    iput-boolean p10, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->needDepth:Z

    return-void
.end method


# virtual methods
.method public getActualId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->mActualId:I

    return v0
.end method

.method public getBogusId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->mBogusId:I

    return v0
.end method

.method public getCameraConfigs()Lcom/android/camera2/CameraConfigs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->mConfigs:Lcom/android/camera2/CameraConfigs;

    return-object v0
.end method

.method public getModuleIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->mModuleIndex:I

    return v0
.end method

.method public getRawType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->mRawType:I

    return v0
.end method

.method public isCupCapture()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->isCupCapture:Z

    return v0
.end method

.method public isDngPostProc()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->isDngPostProc:Z

    return v0
.end method

.method public isImageIntent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->isImageIntent:Z

    return v0
.end method

.method public isMultiFrameCapture()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->isMultiFrameCapture:Z

    return v0
.end method

.method public isMultiRawCapture()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->isMultiRawCapture:Z

    return v0
.end method

.method public isParallel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->isParallel:Z

    return v0
.end method

.method public isRepeatingCapture()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->isRepeatingCapture:Z

    return v0
.end method

.method public needDepth()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->needDepth:Z

    return v0
.end method

.method public setCupCapture(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->isCupCapture:Z

    return-void
.end method

.method public setDngPostProc(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->isDngPostProc:Z

    return-void
.end method

.method public setRawType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/shottype/ShotTypeParam;->mRawType:I

    return-void
.end method
