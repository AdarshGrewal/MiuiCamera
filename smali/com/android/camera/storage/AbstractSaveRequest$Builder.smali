.class public abstract Lcom/android/camera/storage/AbstractSaveRequest$Builder;
.super Ljava/lang/Object;
.source "AbstractSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/AbstractSaveRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field public mAlgorithmName:Ljava/lang/String;

.field public mData:[B

.field public mDate:J

.field public mExifInterface:Lcom/android/gallery3d/exif/ExifInterface;

.field public mHeight:I

.field public mInfo:Lcom/xiaomi/camera/core/PictureInfo;

.field public mIsHeic:Z

.field public mLocation:Landroid/location/Location;

.field public mNeedThumbnail:Z

.field public mOrientation:I

.field public mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

.field public mSize:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/android/camera/storage/AbstractSaveRequest;
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mAlgorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mData:[B

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mDate:J

    return-wide v0
.end method

.method public getExifInterface()Lcom/android/gallery3d/exif/ExifInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mExifInterface:Lcom/android/gallery3d/exif/ExifInterface;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mHeight:I

    return v0
.end method

.method public getInfo()Lcom/xiaomi/camera/core/PictureInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mOrientation:I

    return v0
.end method

.method public getParallelTaskData()Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mSize:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mWidth:I

    return v0
.end method

.method public isHeic()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mIsHeic:Z

    return v0
.end method

.method public isNeedThumbnail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mNeedThumbnail:Z

    return v0
.end method

.method public setAlgorithmName(Ljava/lang/String;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mAlgorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public setData([B)Lcom/android/camera/storage/AbstractSaveRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mData:[B

    return-object p0
.end method

.method public setDate(J)Lcom/android/camera/storage/AbstractSaveRequest$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mDate:J

    return-object p0
.end method

.method public setExifInterface(Lcom/android/gallery3d/exif/ExifInterface;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mExifInterface:Lcom/android/gallery3d/exif/ExifInterface;

    return-object p0
.end method

.method public setHeight(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mHeight:I

    return-object p0
.end method

.method public setInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    return-object p0
.end method

.method public setIsHeic(Z)Lcom/android/camera/storage/AbstractSaveRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mIsHeic:Z

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method public setNeedThumbnail(Z)Lcom/android/camera/storage/AbstractSaveRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mNeedThumbnail:Z

    return-object p0
.end method

.method public setOrientation(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mOrientation:I

    return-object p0
.end method

.method public setParallelTaskData(Lcom/xiaomi/camera/core/ParallelTaskData;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    return-object p0
.end method

.method public setSize(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mSize:I

    return-object p0
.end method

.method public setWidth(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mWidth:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Builder{mParallelTaskData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNeedThumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mNeedThumbnail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExifInterface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mExifInterface:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsHeic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mIsHeic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAlgorithmName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mAlgorithmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
