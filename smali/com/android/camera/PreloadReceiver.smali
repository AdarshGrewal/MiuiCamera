.class public Lcom/android/camera/PreloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PreloadReceiver.java"


# static fields
.field public static final ACTION_POPUP_FAILED:Ljava/lang/String; = "miui.intent.action.POPUP_UPDOWN_FAILED"

.field public static final KEY_POPUP_FAILED_TYPE:Ljava/lang/String; = "updown_failed_type"

.field public static final TAG:Ljava/lang/String; = "PreloadReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "PreloadReceiver"

    const-string/jumbo v0, "receive boot complete"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->preload()V

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->preload()V

    new-instance p2, Lcom/android/camera/module/Camera2Module;

    invoke-direct {p2}, Lcom/android/camera/module/Camera2Module;-><init>()V

    new-instance p2, Lcom/android/camera/CameraSettings;

    invoke-direct {p2}, Lcom/android/camera/CameraSettings;-><init>()V

    invoke-static {}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->preload()V

    invoke-static {p1}, Lcom/android/camera/statistic/SettingUploadJobService;->scheduleSettingUploadJob(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "miui.intent.action.POPUP_UPDOWN_FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string/jumbo v0, "updown_failed_type"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->getInstance()Lcom/android/camera/aftersales/AftersalesManager;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p2, 0x6

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/camera/aftersales/AftersalesManager;->count(JI)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-ne p2, p1, :cond_2

    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->getInstance()Lcom/android/camera/aftersales/AftersalesManager;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 p2, 0xa

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/camera/aftersales/AftersalesManager;->count(JI)V

    :cond_2
    :goto_0
    return-void
.end method
