.class public Lcom/xiaomi/engine/PreProcessData;
.super Ljava/lang/Object;
.source "PreProcessData.java"


# instance fields
.field public mCameraId:I

.field public mCaptureRequestMetadataNative:Landroid/os/Parcelable;

.field public mFormat:I

.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>(IIIILandroid/os/Parcelable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/xiaomi/engine/PreProcessData;->mCameraId:I

    .line 3
    iput p2, p0, Lcom/xiaomi/engine/PreProcessData;->mWidth:I

    .line 4
    iput p3, p0, Lcom/xiaomi/engine/PreProcessData;->mHeight:I

    .line 5
    iput p4, p0, Lcom/xiaomi/engine/PreProcessData;->mFormat:I

    .line 6
    iput-object p5, p0, Lcom/xiaomi/engine/PreProcessData;->mCaptureRequestMetadataNative:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public getCameraId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/engine/PreProcessData;->mCameraId:I

    return v0
.end method

.method public getCaptureRequestMetaDataNative()Landroid/os/Parcelable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/engine/PreProcessData;->mCaptureRequestMetadataNative:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/engine/PreProcessData;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/engine/PreProcessData;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/engine/PreProcessData;->mWidth:I

    return v0
.end method

.method public setCameraId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/engine/PreProcessData;->mCameraId:I

    return-void
.end method

.method public setCaptureRequestMetaDataNative(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/engine/PreProcessData;->mCaptureRequestMetadataNative:Landroid/os/Parcelable;

    return-void
.end method

.method public setFormat(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/engine/PreProcessData;->mFormat:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/engine/PreProcessData;->mHeight:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/engine/PreProcessData;->mWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreProcessData{ mCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/engine/PreProcessData;->mCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/engine/PreProcessData;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/engine/PreProcessData;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/engine/PreProcessData;->mFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureRequestMetadataNative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/engine/PreProcessData;->mCaptureRequestMetadataNative:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
