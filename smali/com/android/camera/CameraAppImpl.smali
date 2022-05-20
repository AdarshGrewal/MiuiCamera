.class public Lcom/android/camera/CameraAppImpl;
.super Landroid/app/Application;
.source "CameraAppImpl.java"


# static fields
.field public static sContext:Landroid/content/Context;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mActivities:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public mIsVideoCastActivityResumed:Z

.field public mMainIntentActivityLaunched:Z

.field public mRestoreSetting:Z

.field public sLaunched:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    const-class v0, Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->sLaunched:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mRestoreSetting:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mMainIntentActivityLaunched:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mIsVideoCastActivityResumed:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/CameraAppImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static getAndroidContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/CameraAppImpl;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getApplicationId()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mMainIntentActivityLaunched:Z

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v4, "setFootprintFlag"

    new-array v5, v0, [Ljava/lang/Class;

    .line 3
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFootprintFlag failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :catch_3
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 7
    sput-object p0, Lcom/android/camera/CameraAppImpl;->sContext:Landroid/content/Context;

    const-string p1, "camera.db"

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Application;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Application;->deleteDatabase(Ljava/lang/String;)Z

    :cond_0
    const-string/jumbo p1, "rx2.purge-period-seconds"

    const-string v1, "3600"

    .line 11
    invoke-static {p1, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    sget-boolean p1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0O0:Z

    if-eqz p1, :cond_1

    .line 13
    invoke-static {}, Lcom/uber/rxdogtag/RxDogTag;->install()V

    .line 14
    :cond_1
    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->checkSelf()V

    .line 15
    sget-object p1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "avenger"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x2

    const-string v2, "com.android.camera"

    invoke-virtual {p1, v2, v1, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 17
    :cond_2
    invoke-static {}, Lcom/android/camera2/vendortag/struct/MarshalQueryableRegister;->preload()V

    .line 18
    invoke-static {}, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->preload()V

    .line 19
    invoke-static {}, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->preload()V

    .line 20
    invoke-static {}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->preload()V

    .line 21
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O000O()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooOO0()I

    move-result p1

    .line 23
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooOOo()I

    move-result v0

    .line 24
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0o()I

    move-result v1

    .line 25
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oo()I

    move-result v2

    const-wide/32 v3, 0x40000000

    .line 26
    invoke-static {}, Lcom/xiaomi/compat/common/ProcessCompat;->getTotalMemory()J

    move-result-wide v5

    div-long/2addr v5, v3

    const-wide/16 v3, 0x6

    cmp-long v3, v5, v3

    if-lez v3, :cond_3

    .line 27
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooOO()I

    move-result p1

    .line 28
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooOo0()I

    move-result v0

    .line 29
    :cond_3
    iget-object v3, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "totalMemory:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", maxAcquireCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", maxDequeueCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->init(II)V

    .line 31
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->init(II)V

    .line 32
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/parallel/AlgoConnector;->startService(Landroid/content/Context;)V

    .line 33
    :cond_4
    invoke-static {}, Lcom/android/camera/CrashHandler;->getInstance()Lcom/android/camera/CrashHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/CrashHandler;->init(Landroid/app/Application;)V

    .line 34
    invoke-static {p0}, Lcom/android/camera/network/util/NetworkUtils;->bind(Landroid/app/Application;)V

    .line 35
    invoke-static {p0}, Lcom/miui/filtersdk/BeautificationSDK;->init(Landroid/content/Context;)V

    .line 36
    invoke-static {p0}, Lcom/android/camera/upgrade/UpgradeManager;->migrateForUpgrade(Landroid/content/Context;)V

    .line 37
    invoke-static {}, Lcom/android/camera/external/mivi/MIVIHelper;->requestCloudDataAsync()V

    .line 38
    invoke-static {}, Lcom/android/camera/external/perfspy/PerfspySettings;->listenSettingDataChange()V

    .line 39
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->init(Landroid/content/Context;)V

    .line 40
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/performance/PerformanceManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public closeAllActivitiesBut(Landroid/app/Activity;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/CameraAppImpl;->getActivityCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraAppImpl;->getActivity(I)Landroid/app/Activity;

    move-result-object v2

    if-eq v2, p1, :cond_0

    .line 3
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 5
    iget-object v3, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public containsResumedCameraInStack()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 3
    instance-of v3, v2, Lcom/android/camera/Camera;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Lcom/android/camera/Camera;

    .line 5
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->isActivityStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getActivity(I)Landroid/app/Activity;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/CameraAppImpl;->getActivityCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getActivityCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public isApplicationFirstLaunched()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->sLaunched:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->sLaunched:Z

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public isMainIntentActivityLaunched()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mMainIntentActivityLaunched:Z

    return v0
.end method

.method public isNeedRestore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mRestoreSetting:Z

    return v0
.end method

.method public isVideoCastActivityResumed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mIsVideoCastActivityResumed:Z

    return v0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xiaomi.camera.action.VIDEO_CAST"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/CameraAppImpl;->mIsVideoCastActivityResumed:Z

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xiaomi.camera.action.VIDEO_CAST"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/CameraAppImpl;->mIsVideoCastActivityResumed:Z

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    invoke-static {p0}, Lcom/android/camera/ApplicationInit;->init(Landroid/content/Context;)V

    .line 3
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    new-instance v1, Lcom/android/camera/CameraAppImpl$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraAppImpl$1;-><init>(Lcom/android/camera/CameraAppImpl;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 4
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mRestoreSetting:Z

    .line 6
    invoke-static {p0}, Lcom/android/camera/customization/ThemeResource;->init(Landroid/content/Context;)Lcom/android/camera/customization/ThemeResource;

    .line 7
    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeModeManager;->setThemeMode(I)V

    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mMainIntentActivityLaunched:Z

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetRestoreFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mRestoreSetting:Z

    return-void
.end method
