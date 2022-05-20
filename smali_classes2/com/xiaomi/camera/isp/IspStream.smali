.class public Lcom/xiaomi/camera/isp/IspStream;
.super Ljava/lang/Object;
.source "IspStream.java"


# instance fields
.field public format:I

.field public height:I

.field public streamId:J

.field public stride:[I

.field public width:I


# direct methods
.method public constructor <init>(JII[II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/xiaomi/camera/isp/IspStream;->streamId:J

    .line 3
    iput p3, p0, Lcom/xiaomi/camera/isp/IspStream;->width:I

    .line 4
    iput p4, p0, Lcom/xiaomi/camera/isp/IspStream;->height:I

    .line 5
    iput-object p5, p0, Lcom/xiaomi/camera/isp/IspStream;->stride:[I

    .line 6
    iput p6, p0, Lcom/xiaomi/camera/isp/IspStream;->format:I

    return-void
.end method
