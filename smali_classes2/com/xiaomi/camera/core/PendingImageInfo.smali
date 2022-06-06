.class public Lcom/xiaomi/camera/core/PendingImageInfo;
.super Ljava/lang/Object;
.source "PendingImageInfo.java"


# instance fields
.field public mCameraType:I

.field public mImage:Landroid/media/Image;

.field public mImageType:I

.field public mIsPoolImage:Z


# direct methods
.method public constructor <init>(Landroid/media/Image;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PendingImageInfo;->mImage:Landroid/media/Image;

    iput p2, p0, Lcom/xiaomi/camera/core/PendingImageInfo;->mCameraType:I

    iput p3, p0, Lcom/xiaomi/camera/core/PendingImageInfo;->mImageType:I

    iput-boolean p4, p0, Lcom/xiaomi/camera/core/PendingImageInfo;->mIsPoolImage:Z

    return-void
.end method


# virtual methods
.method public getCameraType()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/camera/core/PendingImageInfo;->mCameraType:I

    return v0
.end method

.method public getImage()Landroid/media/Image;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/PendingImageInfo;->mImage:Landroid/media/Image;

    return-object v0
.end method

.method public getImageType()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/camera/core/PendingImageInfo;->mImageType:I

    return v0
.end method

.method public isPoolImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/camera/core/PendingImageInfo;->mIsPoolImage:Z

    return v0
.end method
