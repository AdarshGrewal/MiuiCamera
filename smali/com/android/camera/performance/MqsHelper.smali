.class public Lcom/android/camera/performance/MqsHelper;
.super Ljava/lang/Object;
.source "MqsHelper.java"


# static fields
.field public static final ERROR_ACTION:Ljava/lang/String; = "com.miui.daemon.camera.app.error"

.field public static final INTENT_ACTION:Ljava/lang/String; = "ACTION"

.field public static final INTENT_ATRACE_APPS:Ljava/lang/String; = "ATRACE_APPS"

.field public static final INTENT_DURATION_MIN:Ljava/lang/String; = "DURATION_MIN"

.field public static final INTENT_FILE_PREFIX:Ljava/lang/String; = "FILE_PREFIX"

.field public static final INTENT_LONG_TRACE:Ljava/lang/String; = "LONG_TRACE"

.field public static final INTENT_MAX_FILE_SIZE_MB:Ljava/lang/String; = "MAX_FILE_SIZE_MB"

.field public static final INTENT_SINGLE_CPU_BUFFER:Ljava/lang/String; = "SINGLE_CPU_BUFFER"

.field public static final INTENT_TAGS:Ljava/lang/String; = "TAGS"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final REPEAT_INTERVAL:Ljava/lang/Long;

.field public static final TAG:Ljava/lang/String; = "MqsHelper"

.field public static final TARGET_PACKAGENAME:Ljava/lang/String; = "com.miui.daemon"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TRACEUR_PACKAGE:Ljava/lang/String; = "com.android.traceur"

.field public static final TRACE_ACTION:Ljava/lang/String; = "com.android.traceur.AppReceiver"

.field public static final TRACE_DUMP:Ljava/lang/String; = "traceutil_dump"

.field public static final TRACE_START:Ljava/lang/String; = "traceutil_start"

.field public static final TRACE_STOP:Ljava/lang/String; = "traceutil_stop"

.field public static final mIssueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/camera/performance/MqsHelper;->mIssueMap:Ljava/util/HashMap;

    const-wide/32 v0, 0xea60

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/camera/performance/MqsHelper;->REPEAT_INTERVAL:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isRepeatInShort(Ljava/lang/String;)Z
    .locals 9

    const-class v0, Lcom/android/camera/performance/MqsHelper;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return v2

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 4
    sget-object v3, Lcom/android/camera/performance/MqsHelper;->mIssueMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 5
    sget-object v3, Lcom/android/camera/performance/MqsHelper;->mIssueMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sget-object v3, Lcom/android/camera/performance/MqsHelper;->REPEAT_INTERVAL:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    .line 7
    sget-object v2, Lcom/android/camera/performance/MqsHelper;->mIssueMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v0

    return v4

    .line 9
    :cond_1
    monitor-exit v0

    return v2

    .line 10
    :cond_2
    :try_start_2
    sget-object v2, Lcom/android/camera/performance/MqsHelper;->mIssueMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static sendMsg(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/android/camera/performance/MqsHelper;->isRepeatInShort(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/performance/MqsHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t send error message to MQS in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/performance/MqsHelper;->REPEAT_INTERVAL:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 5
    invoke-static {v2}, Lcom/android/camera/Util;->convertModeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    .line 7
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "CameraApp Mode:%s[%d] CameraId:%s "

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    .line 11
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 13
    sget-object v0, Lcom/android/camera/performance/MqsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occur the reason is that "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.daemon.camera.app.error"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.miui.daemon"

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "title"

    .line 17
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static traceDump()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/performance/PerformanceManager;->DUMP_SYSTRACE_ENABLE:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/performance/MqsHelper;->TAG:Ljava/lang/String;

    const-string v1, "not allow traceDump"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/performance/MqsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "traceDump"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.traceur.AppReceiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.traceur"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ACTION"

    const-string/jumbo v2, "traceutil_dump"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "FILE_PREFIX"

    const-string v2, "MiCam-"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static traceStart()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/performance/PerformanceManager;->DUMP_SYSTRACE_ENABLE:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/performance/MqsHelper;->TAG:Ljava/lang/String;

    const-string v1, "not allow traceStart"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/performance/MqsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "traceStart"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.traceur.AppReceiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.traceur"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ACTION"

    const-string/jumbo v2, "traceutil_start"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TAGS"

    const-string v2, "freq,sched,gfx,camera"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1000

    const-string v2, "SINGLE_CPU_BUFFER"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x28

    const-string v2, "max.file.size.mb"

    .line 9
    invoke-static {v2, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "MAX_FILE_SIZE_MB"

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "ATRACE_APPS"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "LONG_TRACE"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x5a0

    const-string v2, "max.duration.min"

    .line 13
    invoke-static {v2, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "DURATION_MIN"

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static traceStop()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/performance/PerformanceManager;->DUMP_SYSTRACE_ENABLE:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/performance/MqsHelper;->TAG:Ljava/lang/String;

    const-string v1, "not allow traceStop"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/performance/MqsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "traceStop"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.traceur.AppReceiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.traceur"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ACTION"

    const-string/jumbo v2, "traceutil_stop"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
