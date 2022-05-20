.class public Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;
.super Ljava/lang/Object;
.source "SaliencyProcessOutputObject.java"


# instance fields
.field public bufferData:[B

.field public bufferSize:J

.field public height:I

.field public imgFormat:I

.field public imgHeight:I

.field public imgStride:I

.field public imgWidth:I

.field public isSegmentation:I

.field public left:I

.field public rotateAngle:I

.field public top:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->isSegmentation:I

    .line 3
    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgHeight:I

    .line 4
    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgWidth:I

    .line 5
    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgStride:I

    .line 6
    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->rotateAngle:I

    .line 7
    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgFormat:I

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->bufferSize:J

    .line 9
    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->left:I

    .line 10
    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->top:I

    .line 11
    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->width:I

    .line 12
    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->height:I

    return-void
.end method


# virtual methods
.method public getBufferData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->bufferData:[B

    return-object v0
.end method

.method public getBufferSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->bufferSize:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->height:I

    return v0
.end method

.method public getImgFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgFormat:I

    return v0
.end method

.method public getImgHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgHeight:I

    return v0
.end method

.method public getImgStride()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgStride:I

    return v0
.end method

.method public getImgWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgWidth:I

    return v0
.end method

.method public getIsSegmentation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->isSegmentation:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->left:I

    return v0
.end method

.method public getRotateAngle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->rotateAngle:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->top:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->width:I

    return v0
.end method

.method public setBufferData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->bufferData:[B

    return-void
.end method

.method public setBufferSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->bufferSize:J

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->height:I

    return-void
.end method

.method public setImgFormat(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgFormat:I

    return-void
.end method

.method public setImgHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgHeight:I

    return-void
.end method

.method public setImgStride(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgStride:I

    return-void
.end method

.method public setImgWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgWidth:I

    return-void
.end method

.method public setIsSegmentation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->isSegmentation:I

    return-void
.end method

.method public setLeft(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->left:I

    return-void
.end method

.method public setRotateAngle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->rotateAngle:I

    return-void
.end method

.method public setTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->top:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaliencyProcessOutputObject{isSegmentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->isSegmentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgStride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgStride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rotateAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->rotateAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bufferData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->bufferData:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->bufferSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
