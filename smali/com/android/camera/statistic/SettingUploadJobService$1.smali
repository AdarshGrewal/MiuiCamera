.class public Lcom/android/camera/statistic/SettingUploadJobService$1;
.super Ljava/lang/Object;
.source "SettingUploadJobService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/statistic/SettingUploadJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/statistic/SettingUploadJobService;

.field public final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lcom/android/camera/statistic/SettingUploadJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/statistic/SettingUploadJobService$1;->this$0:Lcom/android/camera/statistic/SettingUploadJobService;

    iput-object p2, p0, Lcom/android/camera/statistic/SettingUploadJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowFirstUseHint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "key_last_setting_update_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 4
    new-instance v0, Lcom/android/camera/statistic/SettingRecord;

    iget-object v1, p0, Lcom/android/camera/statistic/SettingUploadJobService$1;->this$0:Lcom/android/camera/statistic/SettingUploadJobService;

    invoke-virtual {v1}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/statistic/SettingRecord;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/statistic/SettingRecord;->startRecord()V

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/statistic/SettingRecord;->endRecord()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/statistic/SettingUploadJobService$1;->this$0:Lcom/android/camera/statistic/SettingUploadJobService;

    iget-object v1, p0, Lcom/android/camera/statistic/SettingUploadJobService$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/statistic/SettingUploadJobService$1;->this$0:Lcom/android/camera/statistic/SettingUploadJobService;

    invoke-virtual {v0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/SettingUploadJobService;->scheduleSettingUploadJob(Landroid/content/Context;)V

    return-void
.end method
