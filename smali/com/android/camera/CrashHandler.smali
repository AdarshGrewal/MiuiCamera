.class public Lcom/android/camera/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraFCHandler"

.field public static sInstance:Lcom/android/camera/CrashHandler;


# instance fields
.field public mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field public mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/CrashHandler;

    invoke-direct {v0}, Lcom/android/camera/CrashHandler;-><init>()V

    sput-object v0, Lcom/android/camera/CrashHandler;->sInstance:Lcom/android/camera/CrashHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/camera/CrashHandler;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/CrashHandler;->sInstance:Lcom/android/camera/CrashHandler;

    return-object v0
.end method

.method private resetBrightnessInAutoMode(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Meet exception when resetBrightnessInAutoMode(): "

    const-string v1, "CameraFCHandler"

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {p1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x1

    if-ne v3, p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-static {v2, p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setTemporaryAutoBrightnessAdjustment(Landroid/hardware/display/DisplayManager;F)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/CrashHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 2
    iget-object p1, p0, Lcom/android/camera/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 4
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    .line 5
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v4, v2

    const-string v0, "Camera FC, @Module = %d And @CameraId = %d"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "CameraFCHandler"

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Error:Java Crash"

    .line 6
    invoke-static {v0}, Lcom/android/camera/performance/MqsHelper;->sendMsg(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->getInstance()Lcom/android/camera/aftersales/AftersalesManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/camera/aftersales/AftersalesManager;->count(JI)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera FC, msg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    iget-object v0, p0, Lcom/android/camera/CrashHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/camera/CrashHandler;->resetBrightnessInAutoMode(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 11
    invoke-static {v0}, Lcom/android/camera/Util;->setBrightnessRampRate(I)V

    .line 12
    invoke-static {v1}, Lcom/android/camera/Util;->setScreenEffect(Z)V

    .line 13
    iput-object v2, p0, Lcom/android/camera/CrashHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDefaultHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/android/camera/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 17
    iput-object v2, p0, Lcom/android/camera/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    :cond_1
    return-void
.end method
