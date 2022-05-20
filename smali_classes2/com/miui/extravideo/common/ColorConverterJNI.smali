.class public Lcom/miui/extravideo/common/ColorConverterJNI;
.super Ljava/lang/Object;
.source "ColorConverterJNI.java"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "video_extra_color_converter"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native convertYuv420pToYvu420sp(II[B[B)I
.end method

.method public static native convertYuv420sp32mToYvu420sp(II[B[BI)I
.end method

.method public static native convertYuv420sp64x32TileToYvu420sp(II[B[B)I
.end method

.method public static native convertYuv420spToYvu420sp(II[B[BIIIIZ)I
.end method
