.class public Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;
.super Ljava/lang/Object;
.source "ImageReaderSurfaceSpec.java"


# instance fields
.field public isForMTKFusion:Z

.field public isForParallelVT:Z

.field public mAliasIndex:I

.field public mImageReader:Landroid/media/ImageReader;

.field public mIndex:I

.field public mParam:Lcom/xiaomi/protocol/IImageReaderParameterSets;

.field public needImageReader:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mIndex:I

    .line 3
    iput v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mAliasIndex:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->needImageReader:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    .line 3
    iget v2, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mIndex:I

    iget v3, p1, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mAliasIndex:I

    iget v3, p1, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mAliasIndex:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isForParallelVT:Z

    iget-boolean v3, p1, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isForParallelVT:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mParam:Lcom/xiaomi/protocol/IImageReaderParameterSets;

    iget-object p1, p1, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mParam:Lcom/xiaomi/protocol/IImageReaderParameterSets;

    .line 4
    invoke-virtual {v2, p1}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAliasIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mAliasIndex:I

    return v0
.end method

.method public getImageReader()Landroid/media/ImageReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mImageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mIndex:I

    return v0
.end method

.method public getParam()Lcom/xiaomi/protocol/IImageReaderParameterSets;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mParam:Lcom/xiaomi/protocol/IImageReaderParameterSets;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mAliasIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isForParallelVT:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mParam:Lcom/xiaomi/protocol/IImageReaderParameterSets;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isForMTKFusion()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isForMTKFusion:Z

    return v0
.end method

.method public isForParallelVT()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isForParallelVT:Z

    return v0
.end method

.method public isNeedImageReader()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->needImageReader:Z

    return v0
.end method

.method public setAliasIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mAliasIndex:I

    return-void
.end method

.method public setForMTKFusion(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isForMTKFusion:Z

    return-void
.end method

.method public setForParallelVT(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mParam:Lcom/xiaomi/protocol/IImageReaderParameterSets;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isForParallelVT:Z

    .line 3
    iput-boolean p1, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    return-void
.end method

.method public setImageReader(Landroid/media/ImageReader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mImageReader:Landroid/media/ImageReader;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mIndex:I

    return-void
.end method

.method public setNeedImageReader(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->needImageReader:Z

    return-void
.end method

.method public setParam(Lcom/xiaomi/protocol/IImageReaderParameterSets;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mParam:Lcom/xiaomi/protocol/IImageReaderParameterSets;

    return-void
.end method
