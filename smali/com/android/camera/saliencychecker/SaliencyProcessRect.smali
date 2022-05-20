.class public Lcom/android/camera/saliencychecker/SaliencyProcessRect;
.super Ljava/lang/Object;
.source "SaliencyProcessRect.java"


# instance fields
.field public height:I

.field public left:I

.field public top:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->left:I

    .line 3
    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->top:I

    .line 4
    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->width:I

    .line 5
    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->height:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->height:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->left:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->top:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->height:I

    return-void
.end method

.method public setLeft(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->left:I

    return-void
.end method

.method public setTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->top:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaliencyProcessRect{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessRect;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
