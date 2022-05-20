.class public final Lcom/xiaomi/compat/common/MemoryCompat;
.super Ljava/lang/Object;
.source "MemoryCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    return-void
.end method
