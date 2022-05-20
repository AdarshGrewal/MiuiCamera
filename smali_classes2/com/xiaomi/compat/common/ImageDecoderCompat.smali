.class public final Lcom/xiaomi/compat/common/ImageDecoderCompat;
.super Ljava/lang/Object;
.source "ImageDecoderCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSource([B)Landroid/graphics/ImageDecoder$Source;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/graphics/ImageDecoder;->createSource([B)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    return-object p0
.end method
