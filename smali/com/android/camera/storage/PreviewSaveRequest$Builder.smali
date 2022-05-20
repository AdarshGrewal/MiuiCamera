.class public Lcom/android/camera/storage/PreviewSaveRequest$Builder;
.super Lcom/android/camera/storage/AbstractSaveRequest$Builder;
.source "PreviewSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/PreviewSaveRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public finalImage:Z

.field public isParallelProcess:Z

.field public mNoGaussian:Z

.field public mSavePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->mSavePath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->finalImage:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->isParallelProcess:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->mNoGaussian:Z

    return p0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/camera/storage/AbstractSaveRequest;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->build()Lcom/android/camera/storage/PreviewSaveRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/camera/storage/PreviewSaveRequest;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/camera/storage/PreviewSaveRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/storage/PreviewSaveRequest;-><init>(Lcom/android/camera/storage/PreviewSaveRequest$Builder;Lcom/android/camera/storage/PreviewSaveRequest$1;)V

    return-object v0
.end method

.method public setFinalImage(Z)Lcom/android/camera/storage/PreviewSaveRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->finalImage:Z

    return-object p0
.end method

.method public setNoGaussian(Z)Lcom/android/camera/storage/PreviewSaveRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->mNoGaussian:Z

    return-object p0
.end method

.method public setParallelProcess(Z)Lcom/android/camera/storage/PreviewSaveRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->isParallelProcess:Z

    return-object p0
.end method

.method public setSavePath(Ljava/lang/String;)Lcom/android/camera/storage/PreviewSaveRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->mSavePath:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Builder{mSavePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", finalImage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->finalImage:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isParallelProcess="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->isParallelProcess:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mNoGaussian="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->mNoGaussian:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mParallelTaskData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mNeedThumbnail="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mNeedThumbnail:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLocation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOrientation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mOrientation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mExifInterface="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mExifInterface:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsHeic="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mIsHeic:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAlgorithmName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mAlgorithmName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
