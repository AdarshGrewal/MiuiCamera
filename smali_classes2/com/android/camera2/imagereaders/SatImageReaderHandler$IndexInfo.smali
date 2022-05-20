.class public Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;
.super Ljava/lang/Object;
.source "SatImageReaderHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/imagereaders/SatImageReaderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexInfo"
.end annotation


# instance fields
.field public mCameraType:I

.field public mImageFlag:I

.field public mIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->mImageFlag:I

    .line 3
    iput p2, p0, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->mCameraType:I

    .line 4
    iput p3, p0, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->mIndex:I

    return-void
.end method


# virtual methods
.method public getCameraType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->mCameraType:I

    return v0
.end method

.method public getImageType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->mImageFlag:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/imagereaders/SatImageReaderHandler$IndexInfo;->mIndex:I

    return v0
.end method
