.class public Lcom/android/camera/statistic/OneTrackWrapper;
.super Ljava/lang/Object;
.source "OneTrackWrapper.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "31000000285"

.field public static final CHANNEL:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "OneTrackWrapper"

.field public static mIsInit:Z

.field public static volatile mOneTrack:Lcom/xiaomi/onetrack/OneTrack;

.field public static sInitialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "ro.product.mod_device"

    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/statistic/OneTrackWrapper;->CHANNEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/android/camera/statistic/OneTrackWrapper;->sInitialized:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/Util;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/statistic/OneTrackWrapper;->sInitialized:Z

    new-instance v1, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    const-string v2, "31000000285"

    invoke-virtual {v1, v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/statistic/OneTrackWrapper;->CHANNEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->setChannel(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    invoke-virtual {v1, v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->setExceptionCatcherEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAutoTrackActivityAction(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object p0

    sput-object p0, Lcom/android/camera/statistic/OneTrackWrapper;->mOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/xiaomi/onetrack/OneTrack;->setDebugMode(Z)V

    invoke-static {p0}, Lcom/xiaomi/onetrack/OneTrack;->setTestMode(Z)V

    sput-boolean v0, Lcom/android/camera/statistic/OneTrackWrapper;->mIsInit:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/statistic/OneTrackWrapper;->mOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/statistic/OneTrackWrapper;->mIsInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/statistic/OneTrackWrapper;->mOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
