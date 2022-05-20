.class public Lcom/android/camera/backup/CameraSettingsBackupImpl$1;
.super Ljava/lang/Object;
.source "CameraSettingsBackupImpl.java"

# interfaces
.implements Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/backup/CameraSettingsBackupImpl;->onBackupSettings(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/backup/CameraSettingsBackupImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/backup/CameraSettingsBackupImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/backup/CameraSettingsBackupImpl$1;->this$0:Lcom/android/camera/backup/CameraSettingsBackupImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lmiui/cloud/backup/data/PrefsBackupHelper;->backup(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;)V

    return-void
.end method
