.class public Lcom/android/camera2/vendortag/struct/BinningSrData;
.super Ljava/lang/Object;
.source "BinningSrData.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BinningSrData"


# instance fields
.field public mBinningSrEnabled:Z

.field public mBinningSrInputSize:Lcom/android/camera/CameraSize;

.field public mBinningSrOutputSize:Lcom/android/camera/CameraSize;

.field public mMaxBufferSize:I

.field public mMaxJpegWidthForWideSensor:I

.field public mMaxYuvWidthForWideSensor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    .line 9
    iput v0, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mMaxBufferSize:I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mBinningSrEnabled:Z

    .line 11
    new-instance v0, Lcom/android/camera/CameraSize;

    invoke-direct {v0}, Lcom/android/camera/CameraSize;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mBinningSrInputSize:Lcom/android/camera/CameraSize;

    .line 12
    new-instance v0, Lcom/android/camera/CameraSize;

    invoke-direct {v0}, Lcom/android/camera/CameraSize;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mBinningSrOutputSize:Lcom/android/camera/CameraSize;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    .line 2
    iput v0, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mMaxBufferSize:I

    .line 3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mBinningSrEnabled:Z

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mMaxYuvWidthForWideSensor:I

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mMaxJpegWidthForWideSensor:I

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mMaxBufferSize:I

    return-void
.end method

.method public static parseData([B)Lcom/android/camera2/vendortag/struct/BinningSrData;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/camera2/vendortag/struct/BinningSrData;

    invoke-direct {v0, p0}, Lcom/android/camera2/vendortag/struct/BinningSrData;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot parse binning sr data ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BinningSrData"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lcom/android/camera2/vendortag/struct/BinningSrData;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/BinningSrData;-><init>()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getBinningSrInputSize()Lcom/android/camera/CameraSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mBinningSrInputSize:Lcom/android/camera/CameraSize;

    return-object v0
.end method

.method public getBinningSrOutputSize()Lcom/android/camera/CameraSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mBinningSrOutputSize:Lcom/android/camera/CameraSize;

    return-object v0
.end method

.method public getMaxBinningSrBufferSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mMaxBufferSize:I

    return v0
.end method

.method public getMaxJpegWidthForWideSensor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mMaxJpegWidthForWideSensor:I

    return v0
.end method

.method public getMaxYuvWidthForWideSensor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mMaxYuvWidthForWideSensor:I

    return v0
.end method

.method public isBinningSrEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mBinningSrEnabled:Z

    return v0
.end method

.method public setBinningSrInputSize(Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mBinningSrInputSize:Lcom/android/camera/CameraSize;

    return-void
.end method

.method public setBinningSrOutputSize(Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mBinningSrOutputSize:Lcom/android/camera/CameraSize;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BinningSrData{mBinningSrEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mBinningSrEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxYuvWidthForWideSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mMaxYuvWidthForWideSensor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxJpegWidthForWideSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mMaxJpegWidthForWideSensor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxBufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/BinningSrData;->mMaxBufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
