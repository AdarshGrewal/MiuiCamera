.class public Lcom/android/camera/external/mivi/MIVIHelper$SettingDataChangeObserver;
.super Landroid/database/ContentObserver;
.source "MIVIHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/external/mivi/MIVIHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingDataChangeObserver"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "MIVIHelper"

    const-string v0, "SettingDataChangeObserver onChange: "

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Lcom/android/camera/external/mivi/MIVIHelper;->setDataChanged(Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/external/mivi/MIVIHelper;->requestCloudDataAsync()V

    return-void
.end method
