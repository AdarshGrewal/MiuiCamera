.class public abstract Lcom/xiaomi/camera/imagecodec/BaseReprocessor;
.super Ljava/lang/Object;
.source "BaseReprocessor.java"

# interfaces
.implements Lcom/xiaomi/camera/imagecodec/Reprocessor;


# instance fields
.field public mIsMFNRSupported:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customize(Ljava/util/HashMap;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "customize"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getVersionCode()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isMFNRSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->mIsMFNRSupported:Z

    return v0
.end method

.method public queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "queryFeatureSetting"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public queueImageToPool(Landroid/media/Image;)Landroid/media/Image;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->queueImage(Landroid/media/Image;)V

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImage(J)Landroid/media/Image;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->holdImage(Landroid/media/Image;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queueImageToPool: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public setVirtualCameraIds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
