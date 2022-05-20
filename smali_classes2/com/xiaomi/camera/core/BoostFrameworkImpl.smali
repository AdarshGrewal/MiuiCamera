.class public Lcom/xiaomi/camera/core/BoostFrameworkImpl;
.super Ljava/lang/Object;
.source "BoostFrameworkImpl.java"

# interfaces
.implements Lcom/xiaomi/camera/core/BaseBoostFramework;


# static fields
.field public static final BOOST_CLASS_NAME_MTK:Ljava/lang/String; = "android.util.MtkBoostFramework"

.field public static final BOOST_CLASS_NAME_QUALCOM:Ljava/lang/String; = "android.util.BoostFramework"

.field public static final BOOST_METHOD_NAME:Ljava/lang/String; = "perfLockAcquire"

.field public static final BOOST_PARAM_NAME:Ljava/lang/String;

.field public static final BOOST_STOP_NAME:Ljava/lang/String; = "perfLockRelease"

.field public static final TAG:Ljava/lang/String; = "BoostFrameworkImpl"

.field public static isInited:Z

.field public static mBoostClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static mDefaultParams:[I

.field public static mStartBoost:Ljava/lang/reflect/Method;

.field public static mStopBoost:Ljava/lang/reflect/Method;


# instance fields
.field public mDefultMtkPerfList:[I

.field public mDefultQComPerfList:[I

.field public mPerf:Ljava/lang/Object;

.field public mVideoPerfList:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "boost_params"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->BOOST_PARAM_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mStartBoost:Ljava/lang/reflect/Method;

    .line 3
    sput-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mStopBoost:Ljava/lang/reflect/Method;

    .line 4
    sput-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mBoostClass:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 5
    sput-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefaultParams:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefultQComPerfList:[I

    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 4
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefultMtkPerfList:[I

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mVideoPerfList:[I

    .line 6
    const-class v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-boolean v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->isInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 8
    :try_start_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->BOOST_CLASS_NAME_MTK:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->BOOST_CLASS_NAME_QUALCOM:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mBoostClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    const-string v4, "perfLockAcquire"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    .line 9
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    const-class v6, [I

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mStartBoost:Ljava/lang/reflect/Method;

    .line 10
    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mBoostClass:Ljava/lang/Class;

    const-string v4, "perfLockRelease"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mStopBoost:Ljava/lang/reflect/Method;

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getBoostParams()[I

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    sput-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefaultParams:[I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 13
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_2
    :goto_1
    sput-boolean v2, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->isInited:Z

    .line 15
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mBoostClass:Ljava/lang/Class;

    if-eqz v0, :cond_4

    .line 17
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mBoostClass:Ljava/lang/Class;

    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v3, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception v1

    .line 21
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :array_0
    .array-data 4
        0x40804000    # 4.0078125f
        0xfff
        0x40804100
        0xfff
        0x40800000    # 4.0f
        0xfff
        0x40800100    # 4.000122f
        0xfff
        0x40800200    # 4.000244f
        0xfff
        0x40804200
        0xfff
    .end array-data

    :array_1
    .array-data 4
        0x400000
        0x1e8480
        0x400100
        0x1e8480
        0x1000000
        0x0
        0xc00000
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x40800000    # 4.0f
        0xfff
        0x40804000    # 4.0078125f
        0xfff
        0x40800100    # 4.000122f
        0xfff
        0x40804100
        0xfff
        0x40c20000    # 6.0625f
        0x14
        0x40c1c000    # 6.0546875f
        0x1e
    .end array-data
.end method

.method private getBoostParams()[I
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->BOOST_PARAM_NAME:Ljava/lang/String;

    const-string v2, "array"

    const-string v3, "com.android.camera"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private startBoostInternal(I[I)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startBoostInternal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoostFrameworkImpl"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "not init boost pref"

    .line 3
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mStartBoost:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const-string v0, "ready to boost"

    .line 5
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mStartBoost:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 7
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mStartBoost:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    aput-object p2, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start boost exception "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v2
.end method

.method private stopBoostInternal()V
    .locals 4

    const-string v0, "BoostFrameworkImpl"

    const-string v1, "stopBoostInternal:"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, "not init boost pref, not need to stop"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mStopBoost:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    const-string v1, "ready to stop boost"

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mStopBoost:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 7
    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mStopBoost:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop boost exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public startBoost(II)Z
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result p2

    if-nez p2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mVideoPerfList:[I

    goto :goto_1

    .line 3
    :cond_1
    sget-object p2, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefaultParams:[I

    if-eqz p2, :cond_2

    array-length p2, p2

    if-nez p2, :cond_4

    .line 4
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefultMtkPerfList:[I

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefultQComPerfList:[I

    :goto_0
    sput-object p2, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefaultParams:[I

    .line 5
    :cond_4
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefaultParams:[I

    .line 6
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(I[I)Z

    move-result p1

    return p1
.end method

.method public startBoost(I[I)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoostInternal(I[I)Z

    move-result p1

    return p1
.end method

.method public stopBoost()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoostInternal()V

    return-void
.end method