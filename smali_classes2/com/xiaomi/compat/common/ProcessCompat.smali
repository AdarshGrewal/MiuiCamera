.class public final Lcom/xiaomi/compat/common/ProcessCompat;
.super Ljava/lang/Object;
.source "ProcessCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTotalMemory()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    return-wide v0
.end method
