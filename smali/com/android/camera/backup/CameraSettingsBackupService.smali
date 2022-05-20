.class public Lcom/android/camera/backup/CameraSettingsBackupService;
.super Lmiui/cloud/backup/CloudBackupServiceBase;
.source "CameraSettingsBackupService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiui/cloud/backup/CloudBackupServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackupImpl()Lmiui/cloud/backup/ICloudBackup;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/backup/CameraSettingsBackupImpl;

    invoke-direct {v0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;-><init>()V

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lmiui/cloud/backup/CloudBackupServiceBase;->onHandleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, ""

    const-string v1, "exception when onHandleIntent "

    .line 2
    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
