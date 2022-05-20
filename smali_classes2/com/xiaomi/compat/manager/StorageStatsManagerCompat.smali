.class public final Lcom/xiaomi/compat/manager/StorageStatsManagerCompat;
.super Ljava/lang/Object;
.source "StorageStatsManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isQuotaSupported(Landroid/app/usage/StorageStatsManager;Ljava/util/UUID;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/util/UUID;)Z

    move-result p0

    return p0
.end method
