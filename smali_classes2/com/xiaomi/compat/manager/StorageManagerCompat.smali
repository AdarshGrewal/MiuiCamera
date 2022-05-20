.class public final Lcom/xiaomi/compat/manager/StorageManagerCompat;
.super Ljava/lang/Object;
.source "StorageManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVolumes(Landroid/os/storage/StorageManager;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/storage/StorageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
