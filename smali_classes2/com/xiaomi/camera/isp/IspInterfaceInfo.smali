.class public Lcom/xiaomi/camera/isp/IspInterfaceInfo;
.super Ljava/lang/Object;
.source "IspInterfaceInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IspInterfaceInfo"


# instance fields
.field public mInitialized:Z

.field public mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

.field public mIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

.field public mPicImageReader:Landroid/media/ImageReader;

.field public mTuningImageReader:Landroid/media/ImageReader;

.field public mYuvImageReader:Landroid/media/ImageReader;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/camera/isp/IspInterface;Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/media/ImageReader;Landroid/media/ImageReader;Landroid/media/ImageReader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    .line 4
    iput-object p3, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mPicImageReader:Landroid/media/ImageReader;

    .line 5
    iput-object p4, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mYuvImageReader:Landroid/media/ImageReader;

    .line 6
    iput-object p5, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mTuningImageReader:Landroid/media/ImageReader;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInitialized:Z

    return-void
.end method


# virtual methods
.method public getIspInterface()Lcom/xiaomi/camera/isp/IspInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    return-object v0
.end method

.method public getPicImageReader()Landroid/media/ImageReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mPicImageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getPicOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-virtual {v0}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getPicOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getRawInputConfiguration()Landroid/util/Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-virtual {v0}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getRawInputSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getYuvImageReader()Landroid/media/ImageReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mYuvImageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getYuvInputConfiguration()Landroid/util/Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-virtual {v0}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getYuvInputSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getYuvOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-virtual {v0}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getYuvOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInitialized:Z

    return v0
.end method

.method public release()V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: E. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInitialized:Z

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mPicImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 5
    iput-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mPicImageReader:Landroid/media/ImageReader;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mYuvImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 8
    iput-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mYuvImageReader:Landroid/media/ImageReader;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mTuningImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 11
    iput-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mTuningImageReader:Landroid/media/ImageReader;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/xiaomi/camera/isp/IspInterface;->release()V

    .line 14
    iput-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    .line 15
    :cond_3
    iput-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->mInputOutput:Lcom/xiaomi/camera/isp/IspInterfaceIO;

    .line 16
    sget-object v0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->TAG:Ljava/lang/String;

    const-string v1, "release: X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
