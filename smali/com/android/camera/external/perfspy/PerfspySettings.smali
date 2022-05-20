.class public Lcom/android/camera/external/perfspy/PerfspySettings;
.super Ljava/lang/Object;
.source "PerfspySettings.java"


# static fields
.field public static final CLOUD_DATA_KEY_ENABLE:Ljava/lang/String; = "enable"

.field public static final CLOUD_DATA_KEY_EVENTS:Ljava/lang/String; = "events"

.field public static final CLOUD_DATA_MODULE:Ljava/lang/String; = "camera_perfspy"

.field public static final ENABLE_PROP:Ljava/lang/String; = "persist.vendor.camera.perfSpy.enable"

.field public static final EVENTS_PROP:Ljava/lang/String; = "persist.vendor.camera.perfSpy.events"

.field public static final TAG:Ljava/lang/String; = "PerfspySettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/external/perfspy/PerfspySettings;->updateSettingData()V

    return-void
.end method

.method public static final getCloudDataString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_perfspy"

    .line 2
    invoke-static {v0, v1, p0, p1}, Lcom/xiaomi/compat/miui/MiuiSettingsCompat$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static listenSettingDataChange()V
    .locals 6

    const-string v0, "PerfspySettings"

    const-string v1, "listen setting data change from cloud"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "content://com.android.settings.cloud.CloudSettings/cloud_all_data/notify"

    .line 2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/android/camera/external/perfspy/PerfspySettings$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/camera/external/perfspy/PerfspySettings$1;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listen cloud data failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xiaomi/camera/util/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateSettingData()V
    .locals 4

    const-string v0, "enable"

    const-string v1, "false"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/external/perfspy/PerfspySettings;->getCloudDataString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "perfspys enable is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PerfspySettings"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "true"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "persist.vendor.camera.perfSpy.enable"

    if-eqz v0, :cond_1

    const-string v0, "1"

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/external/perfspy/PerfspySettings;->setProp(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "events"

    const-string v1, ""

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/external/perfspy/PerfspySettings;->getCloudDataString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 12
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, ","

    .line 13
    invoke-static {v0, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "perfspy events prop is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "persist.vendor.camera.perfSpy.events"

    .line 15
    invoke-static {v1, v0}, Lcom/android/camera/external/perfspy/PerfspySettings;->setProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "0"

    .line 16
    invoke-static {v1, v0}, Lcom/android/camera/external/perfspy/PerfspySettings;->setProp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
