.class public Lcom/android/camera/ActivityBase$4;
.super Lio/reactivex/Single;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ActivityBase;->trackAppLunchTimeStart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Single<",
        "Ljava/util/HashMap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ActivityBase$4;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/util/HashMap;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const-string v2, "cat /dev/cpuset/camera-daemon/cpus"

    .line 2
    invoke-static {v2, v1}, Lcom/android/camera/Util;->execCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v3, "cpus"

    .line 3
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cat $(dirname $(grep -nir \"xo_therm\" /sys/class/thermal/thermal_zone*/type))/temp"

    .line 4
    invoke-static {v2, v1}, Lcom/android/camera/Util;->execCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string/jumbo v3, "temperature"

    .line 5
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    const-string v3, "cat /proc/meminfo|grep -E \'MemFree|MemAvailable\'"

    .line 6
    invoke-static {v3, v2}, Lcom/android/camera/Util;->execCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    const-string v4, "\r\n"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 8
    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    return-void

    .line 9
    :cond_3
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    const-string v7, ":"

    .line 10
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 11
    aget-object v7, v6, v1

    aget-object v6, v6, v2

    const-string v8, "\\D"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_4
    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
