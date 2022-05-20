.class public Lcom/android/camera/module/video/Boost;
.super Ljava/lang/Object;
.source "Boost.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Boost"

.field public static mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoost()Lcom/xiaomi/camera/core/BoostFrameworkImpl;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/video/Boost;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;-><init>()V

    sput-object v0, Lcom/android/camera/module/video/Boost;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/module/video/Boost;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    return-object v0
.end method

.method public static declared-synchronized startBoost(II)V
    .locals 4

    const-class v0, Lcom/android/camera/module/video/Boost;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooooO0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Boost"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBoost: duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "scene: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/module/video/Boost;->getBoost()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized stopBoost()V
    .locals 3

    const-class v0, Lcom/android/camera/module/video/Boost;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooooO0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Boost"

    const-string/jumbo v2, "stopBoost: "

    .line 2
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/module/video/Boost;->getBoost()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
