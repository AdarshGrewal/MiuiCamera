.class public Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;
.super Ljava/lang/Object;
.source "MP4UtilEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/jcodec/MP4UtilEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoTag"
.end annotation


# instance fields
.field public boxType:Ljava/lang/String;

.field public data:[B

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;->key:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;->data:[B

    .line 4
    iput-object p3, p0, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;->boxType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBoxType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;->boxType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;->data:[B

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoTag{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", boxType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;->boxType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
