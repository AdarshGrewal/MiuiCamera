.class public Lcom/android/camera/effect/framework/image/MemYuvImage;
.super Ljava/lang/Object;
.source "MemYuvImage.java"


# instance fields
.field public mChannels:I

.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseImage(Landroid/media/Image;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    .line 4
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v2, 0x0

    .line 5
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    .line 6
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .line 7
    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    .line 8
    aget-object v4, p1, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    .line 9
    aget-object v4, p1, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    .line 10
    aget-object v3, p1, v3

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x2

    .line 11
    aget-object v9, p1, v4

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 12
    aget-object v9, p1, v4

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getRowStride()I

    .line 13
    aget-object p1, p1, v4

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 14
    invoke-static/range {v0 .. v8}, Lcom/android/camera/effect/ShaderNativeUtil;->parseYUVImage(IILjava/nio/Buffer;Ljava/nio/Buffer;Ljava/nio/Buffer;IIII)V

    return-void
.end method
