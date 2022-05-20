.class public Lcom/xiaomi/camera/isp/IspBuffer;
.super Ljava/lang/Object;
.source "IspBuffer.java"


# instance fields
.field public bufferImage:Landroid/media/Image;

.field public streamId:J

.field public tuningImage:Landroid/media/Image;


# direct methods
.method public constructor <init>(JLandroid/media/Image;Landroid/media/Image;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/xiaomi/camera/isp/IspBuffer;->streamId:J

    .line 3
    iput-object p3, p0, Lcom/xiaomi/camera/isp/IspBuffer;->bufferImage:Landroid/media/Image;

    .line 4
    iput-object p4, p0, Lcom/xiaomi/camera/isp/IspBuffer;->tuningImage:Landroid/media/Image;

    return-void
.end method
