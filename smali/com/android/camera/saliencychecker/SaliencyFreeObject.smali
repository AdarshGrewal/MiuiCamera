.class public Lcom/android/camera/saliencychecker/SaliencyFreeObject;
.super Ljava/lang/Object;
.source "SaliencyFreeObject.java"


# instance fields
.field public algoHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/camera/saliencychecker/SaliencyFreeObject;->algoHandle:J

    return-void
.end method


# virtual methods
.method public getAlgoHandle()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/saliencychecker/SaliencyFreeObject;->algoHandle:J

    return-wide v0
.end method

.method public setAlgoHandle(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/saliencychecker/SaliencyFreeObject;->algoHandle:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaliencyFreeObject{algoHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/saliencychecker/SaliencyFreeObject;->algoHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
