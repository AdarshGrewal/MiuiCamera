.class public Lcom/android/camera2/imagereaders/ImageReaderSurface;
.super Ljava/lang/Object;
.source "ImageReaderSurface.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageReaderSurface"


# instance fields
.field public fromBinder:Z

.field public mImageReaderSurfaces:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurface;->mImageReaderSurfaces:Landroid/util/SparseArray;

    return-void
.end method

.method public static getCopy(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    .line 5
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const-string p0, "ImageReaderSurface"

    const-string v0, "getCopy: no original values"

    .line 6
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSurfaceFromSparseArray(Landroid/util/SparseArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 4
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    .line 5
    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isNeedImageReader()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    const-string p0, "ImageReaderSurface"

    const-string v0, "getSurfaceFromSparseArray: no original values"

    .line 9
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getValueFromSparseArray(Landroid/util/SparseArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const-string p0, "ImageReaderSurface"

    const-string v0, "getValueFromSparseArray: no original values"

    .line 6
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addSpec(ILcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurface;->mImageReaderSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public getAllSpecs()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurface;->mImageReaderSurfaces:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getImageReaderSpecs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurface;->mImageReaderSurfaces:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/camera2/imagereaders/ImageReaderSurface;->mImageReaderSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/camera2/imagereaders/ImageReaderSurface;->mImageReaderSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getParamSpecs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/protocol/IImageReaderParameterSets;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurface;->mImageReaderSurfaces:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/camera2/imagereaders/ImageReaderSurface;->mImageReaderSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/camera2/imagereaders/ImageReaderSurface;->mImageReaderSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getParam()Lcom/xiaomi/protocol/IImageReaderParameterSets;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSurfaceSpecs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurface;->mImageReaderSurfaces:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/camera2/imagereaders/ImageReaderSurface;->mImageReaderSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/camera2/imagereaders/ImageReaderSurface;->mImageReaderSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isFromBinder()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurface;->fromBinder:Z

    return v0
.end method

.method public setFromBinder(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurface;->fromBinder:Z

    return-void
.end method
