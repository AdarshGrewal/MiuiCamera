.class public Lcom/android/camera/performance/PerformanceManager;
.super Ljava/lang/Object;
.source "PerformanceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/performance/PerformanceManager$Take;,
        Lcom/android/camera/performance/PerformanceManager$Event;
    }
.end annotation


# static fields
.field public static final ACTION_APPLY_PREVIEW_SETTINGS:Ljava/lang/String; = "applyPreviewSettings"

.field public static final ACTION_BIND_PARALLEL_SERVICE:Ljava/lang/String; = "bindParallelService"

.field public static final ACTION_CAMERA_OPENED_2_CREATE_CAPTURE_SESSION:Ljava/lang/String; = "cameraOpened2createCaptureSession"

.field public static final ACTION_CAPTURE_SESSION_READY_2_START_PREVIEW:Ljava/lang/String; = "captureSessionReady2startPreview"

.field public static final ACTION_CREATE_ACTIVITY:Ljava/lang/String; = "createActivity"

.field public static final ACTION_CREATE_ACTIVITY_2_OPEN_CAMERA:Ljava/lang/String; = "createActivity2openCamera"

.field public static final ACTION_CREATE_CAPTURE_SESSION:Ljava/lang/String; = "createCaptureSession"

.field public static final ACTION_OPEN_CAMERA:Ljava/lang/String; = "openCamera"

.field public static final ACTION_RESUME_ACTIVITY:Ljava/lang/String; = "resumeActivity"

.field public static final ACTION_START_PREVIEW_2_FIRST_FRAME:Ljava/lang/String; = "startPreview2firstFrame"

.field public static final DUMP_ATRACE_ENABLE:Z

.field public static final DUMP_SYSTRACE_ENABLE:Z

.field public static final TAG:Ljava/lang/String; = "PerformanceManager"

.field public static volatile mPerformance:Lcom/android/camera/performance/PerformanceManager;


# instance fields
.field public final DUMP_DURATION:J

.field public mContext:Landroid/content/Context;

.field public final mCustomTakeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/camera/performance/PerformanceManager$Take;",
            ">;"
        }
    .end annotation
.end field

.field public final mEventLock:Ljava/lang/Object;

.field public mHandler:Landroid/os/Handler;

.field public volatile mIsDumping:Z

.field public volatile mIsPerfettoDumping:Z

.field public final mLock:Ljava/lang/Object;

.field public mProfilingStartPreview:Z

.field public mSDF:Ljava/text/SimpleDateFormat;

.field public final mTakeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/camera/performance/PerformanceManager$Event;",
            "Lcom/android/camera/performance/PerformanceManager$Take;",
            ">;"
        }
    .end annotation
.end field

.field public mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "cam.dump.systrace"

    .line 1
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/performance/PerformanceManager;->DUMP_ATRACE_ENABLE:Z

    const-string/jumbo v1, "vendor.camera.sensor.logsystem"

    .line 2
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    .line 3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "userdebug"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    sput-boolean v0, Lcom/android/camera/performance/PerformanceManager;->DUMP_SYSTRACE_ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsPerfettoDumping:Z

    const-wide/16 v0, 0x1388

    .line 4
    iput-wide v0, p0, Lcom/android/camera/performance/PerformanceManager;->DUMP_DURATION:J

    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd-HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mSDF:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    .line 7
    iput-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mEventLock:Ljava/lang/Object;

    return-void
.end method

.method private checkDumpSystrace(Lcom/android/camera/performance/PerformanceManager$Event;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/performance/PerformanceManager;->needDumpSystrace(Lcom/android/camera/performance/PerformanceManager$Event;J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/performance/PerformanceManager;->dumpTrace()V

    :cond_0
    return-void
.end method

.method private dumpPerfettoTrace()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsPerfettoDumping:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0O0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0O0;-><init>(Lcom/android/camera/performance/PerformanceManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v1, "already dump Perfetto Trace, ignore this action"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private dumpSystraceSingle()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/performance/PerformanceManager;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v2, "dumpSystraceSingle start"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const-string/jumbo v2, "setprop persist.vendor.camera.traceGroupsEnable 0x10080"

    .line 4
    invoke-static {v2, v1}, Lcom/android/camera/Util;->execCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "atrace -a com.android.camera -c -b 10240 -t 5 -z --async_start gfx freq sched camera -o "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera/Util;->execCommand(Ljava/lang/String;Z)Ljava/lang/String;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    .line 7
    iget-object v1, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO00o;

    invoke-direct {v2, p0, v0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO00o;-><init>(Lcom/android/camera/performance/PerformanceManager;Ljava/lang/String;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v1, "Please do not restart to dump systrace"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getFileName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mSDF:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/camera/performance/PerformanceManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->mPerformance:Lcom/android/camera/performance/PerformanceManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/android/camera/performance/PerformanceManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/android/camera/performance/PerformanceManager;->mPerformance:Lcom/android/camera/performance/PerformanceManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/android/camera/performance/PerformanceManager;

    invoke-direct {v1}, Lcom/android/camera/performance/PerformanceManager;-><init>()V

    sput-object v1, Lcom/android/camera/performance/PerformanceManager;->mPerformance:Lcom/android/camera/performance/PerformanceManager;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->mPerformance:Lcom/android/camera/performance/PerformanceManager;

    return-object v0
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 4

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsPerfettoDumping:Z

    .line 7
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v1, "auto dump trace 2.0 version start perfetto trace"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/android/camera/performance/MqsHelper;->traceDump()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0Oo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0Oo;-><init>(Lcom/android/camera/performance/PerformanceManager;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v1, "dumpSystraceSingle stop"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "atrace -a com.android.camera -c -b 10240 -t 5 -z --async_stop gfx freq sched camera -o "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/Util;->execCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v0, "There is no dump systrace before."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/performance/PerformanceManager;->dumpSystraceSingle()V

    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/performance/MqsHelper;->traceStart()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsPerfettoDumping:Z

    return-void
.end method

.method public dropAction(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dropEvent(Lcom/android/camera/performance/PerformanceManager$Event;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dumpSystraceStart(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/camera/performance/PerformanceManager;->DUMP_SYSTRACE_ENABLE:Z

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v1, "dumpSystraceStart"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "atrace -a com.android.camera -c -b 10240 -z --async_start gfx freq sched camera -o "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/Util;->execCommand(Ljava/lang/String;Z)Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v0, "Please do not start to dump systrace when duration dumping"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "please execute command: adb shell setprop cam.dump.systrace true. Kill and restart this app"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public dumpSystraceStop(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/camera/performance/PerformanceManager;->DUMP_SYSTRACE_ENABLE:Z

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v1, "dumpSystraceStop"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "atrace -a com.android.camera -c -b 10240 -z --async_stop gfx freq sched camera -o "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/Util;->execCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/performance/PerformanceManager;->mIsDumping:Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v0, "There is no dump systrace before."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v0, "Please execute command: adb shell setprop cam.dump.systrace true. Kill and restart this app"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public dumpTrace()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/camera/performance/PerformanceManager;->DUMP_SYSTRACE_ENABLE:Z

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v1, "checkDumpSystrace"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-boolean v0, Lcom/android/camera/performance/PerformanceManager;->DUMP_ATRACE_ENABLE:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v1, "auto dump trace 1.0 version start atrace dump 5 seconds"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0OO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0OO;-><init>(Lcom/android/camera/performance/PerformanceManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v1, "Please execute command: adb shell setprop cam.dump.systrace true. kill and restart this app"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/performance/PerformanceManager;->dumpPerfettoTrace()V

    :cond_1
    return-void
.end method

.method public endAction(Ljava/lang/String;)J
    .locals 8

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    .line 2
    invoke-static {p1, v4}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/performance/PerformanceManager$Take;

    if-eqz v3, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/performance/PerformanceManager$Take;->setEndTime(J)V

    .line 6
    invoke-virtual {v3}, Lcom/android/camera/performance/PerformanceManager$Take;->getTakeTime()J

    move-result-wide v0

    .line 7
    iget-object v3, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v3, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "Action: %s has never call startAction before"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v4, v7

    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-wide v0
.end method

.method public varargs endAction([Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    if-nez v4, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    const/4 v7, 0x1

    if-lt v5, v6, :cond_2

    .line 13
    invoke-static {v4, v7}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 14
    :cond_2
    iget-object v5, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/performance/PerformanceManager$Take;

    if-eqz v5, :cond_3

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/performance/PerformanceManager$Take;->setEndTime(J)V

    .line 16
    invoke-virtual {v5}, Lcom/android/camera/performance/PerformanceManager$Take;->getTakeTime()J

    .line 17
    iget-object v5, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 18
    :cond_3
    sget-object v5, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "Action %s has never call startAction before"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCaptureEvent(ZI)Lcom/android/camera/performance/PerformanceManager$Event;
    .locals 3

    const/16 v0, 0xab

    if-eq p2, v0, :cond_9

    const/16 v0, 0xad

    if-eq p2, v0, :cond_7

    const/16 v0, 0xaf

    if-eq p2, v0, :cond_6

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "normal"

    .line 3
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 4
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v1

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigUltraWide()Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    move-result-object v2

    .line 6
    invoke-virtual {v2, p2}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->isUltraWideOnInMode(I)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz v0, :cond_0

    .line 7
    sget-object p1, Lcom/android/camera/performance/PerformanceManager$Event;->REAR_UW_HDR_CAPTURE:Lcom/android/camera/performance/PerformanceManager$Event;

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lcom/android/camera/performance/PerformanceManager$Event;->REAR_UW_CAPTURE:Lcom/android/camera/performance/PerformanceManager$Event;

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40a00000    # 5.0f

    cmpl-float p2, v1, p2

    if-ltz p2, :cond_2

    .line 9
    sget-object p1, Lcom/android/camera/performance/PerformanceManager$Event;->REAR_5X_CAPTURE:Lcom/android/camera/performance/PerformanceManager$Event;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 10
    sget-object p1, Lcom/android/camera/performance/PerformanceManager$Event;->FRONT_HDR_CAPTURE:Lcom/android/camera/performance/PerformanceManager$Event;

    goto :goto_0

    .line 11
    :cond_3
    sget-object p1, Lcom/android/camera/performance/PerformanceManager$Event;->FRONT_NORMAL_CAPTURE:Lcom/android/camera/performance/PerformanceManager$Event;

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 12
    sget-object p1, Lcom/android/camera/performance/PerformanceManager$Event;->REAR_HDR_CAPTURE:Lcom/android/camera/performance/PerformanceManager$Event;

    goto :goto_0

    .line 13
    :cond_5
    sget-object p1, Lcom/android/camera/performance/PerformanceManager$Event;->REAR_NORMAL_CAPTURE:Lcom/android/camera/performance/PerformanceManager$Event;

    goto :goto_0

    .line 14
    :cond_6
    sget-object p1, Lcom/android/camera/performance/PerformanceManager$Event;->REAR_SR_CAPTURE:Lcom/android/camera/performance/PerformanceManager$Event;

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    .line 15
    sget-object p1, Lcom/android/camera/performance/PerformanceManager$Event;->FRONT_NIGHT_CAPTURE:Lcom/android/camera/performance/PerformanceManager$Event;

    goto :goto_0

    .line 16
    :cond_8
    sget-object p1, Lcom/android/camera/performance/PerformanceManager$Event;->REAR_NIGHT_CAPTURE:Lcom/android/camera/performance/PerformanceManager$Event;

    goto :goto_0

    :cond_9
    if-eqz p1, :cond_a

    .line 17
    sget-object p1, Lcom/android/camera/performance/PerformanceManager$Event;->FRONT_PORTRAIT_CAPTURE:Lcom/android/camera/performance/PerformanceManager$Event;

    goto :goto_0

    .line 18
    :cond_a
    sget-object p1, Lcom/android/camera/performance/PerformanceManager$Event;->REAR_PORTRAIT_CAPTURE:Lcom/android/camera/performance/PerformanceManager$Event;

    :goto_0
    return-object p1
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/MIUI/debug_log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/performance/PerformanceManager;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".trace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAction(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    .line 2
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CAM_Performance"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager;->mWorkThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/performance/PerformanceManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public isProfilingStartPreview()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/performance/PerformanceManager;->mProfilingStartPreview:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public needDumpSystrace(Lcom/android/camera/performance/PerformanceManager$Event;J)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string p2, "No context to get the configuration"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/performance/PerformanceManager$1;->$SwitchMap$com$android$camera$performance$PerformanceManager$Event:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const-wide/16 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 4
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v4, "Undefine event !"

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v2

    goto/16 :goto_1

    .line 5
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b002c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_0

    .line 6
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0017

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_0

    .line 7
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0028

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_0

    .line 8
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0027

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_0

    .line 9
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b003b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_0

    .line 10
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b003a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_0

    .line 11
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0041

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_0

    .line 12
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0040

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_0

    .line 13
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0023

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_0

    .line 14
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0026

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_0

    .line 15
    :pswitch_a
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0025

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_0

    .line 16
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0039

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 17
    :pswitch_c
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0034

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 18
    :pswitch_d
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b003d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 19
    :pswitch_e
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b003c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 20
    :pswitch_f
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0036

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 21
    :pswitch_10
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0038

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 22
    :pswitch_11
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0035

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 23
    :pswitch_12
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0037

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    int-to-long v4, v0

    .line 24
    :goto_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0Oo0oo()F

    move-result v0

    long-to-float v4, v4

    mul-float/2addr v4, v0

    .line 25
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v4, v2

    const/4 v2, 0x1

    if-lez v0, :cond_1

    cmp-long v0, p2, v4

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    const/4 v3, 0x2

    const/4 v6, 0x3

    if-eqz v0, :cond_2

    .line 26
    sget-object v7, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v3

    const-string v10, "Event: %s takes %d is more than %d"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v3

    const-string p1, "[Performance] Event: %s takes %d is more than %d"

    invoke-static {v7, p1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/performance/MqsHelper;->sendMsg(Ljava/lang/String;)V

    goto :goto_3

    .line 28
    :cond_2
    sget-object v7, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v3

    const-string p1, "Event: %s takes %d is less than %d"

    invoke-static {v8, p1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setProfilingStartPreview(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/performance/PerformanceManager;->mProfilingStartPreview:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startAction(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    iget-object v3, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/performance/PerformanceManager$Take;

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/performance/PerformanceManager$Take;->setStartTime(J)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/camera/performance/PerformanceManager$Take;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/camera/performance/PerformanceManager$Take;-><init>(Lcom/android/camera/performance/PerformanceManager;Ljava/lang/String;J)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs startAction([Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/camera/performance/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 11
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p1, v4

    if-nez v5, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_2

    const/4 v6, 0x1

    .line 13
    invoke-static {v5, v6}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 14
    :cond_2
    iget-object v6, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 15
    iget-object v6, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/performance/PerformanceManager$Take;

    invoke-virtual {v5, v1, v2}, Lcom/android/camera/performance/PerformanceManager$Take;->setStartTime(J)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object v6, p0, Lcom/android/camera/performance/PerformanceManager;->mCustomTakeMap:Ljava/util/HashMap;

    new-instance v7, Lcom/android/camera/performance/PerformanceManager$Take;

    invoke-direct {v7, p0, v5, v1, v2}, Lcom/android/camera/performance/PerformanceManager$Take;-><init>(Lcom/android/camera/performance/PerformanceManager;Ljava/lang/String;J)V

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startEvent(Lcom/android/camera/performance/PerformanceManager$Event;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-object v2, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "Event: %s start"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v2, p0, Lcom/android/camera/performance/PerformanceManager;->mEventLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/performance/PerformanceManager$Take;

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/performance/PerformanceManager$Take;->setStartTime(J)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/camera/performance/PerformanceManager$Take;

    invoke-direct {v5, p0, p1, v0, v1}, Lcom/android/camera/performance/PerformanceManager$Take;-><init>(Lcom/android/camera/performance/PerformanceManager;Lcom/android/camera/performance/PerformanceManager$Event;J)V

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz p1, :cond_1

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 9
    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopEvent()J
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/android/camera/performance/PerformanceManager;->mEventLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/performance/PerformanceManager$Event;

    .line 6
    iget-object v9, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/performance/PerformanceManager$Take;

    .line 7
    iget-boolean v10, v9, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    if-eqz v10, :cond_0

    if-eqz v8, :cond_1

    .line 8
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_1

    .line 9
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 10
    :cond_1
    invoke-virtual {v9, v0, v1}, Lcom/android/camera/performance/PerformanceManager$Take;->setEndTime(J)V

    .line 11
    invoke-virtual {v9}, Lcom/android/camera/performance/PerformanceManager$Take;->getTakeTime()J

    move-result-wide v6

    .line 12
    invoke-direct {p0, v8, v6, v7}, Lcom/android/camera/performance/PerformanceManager;->checkDumpSystrace(Lcom/android/camera/performance/PerformanceManager$Event;J)V

    goto :goto_0

    .line 13
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v6, v4

    if-nez v0, :cond_3

    .line 14
    sget-object v0, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    const-string v1, "Ignore this stop event, there is no event in start status."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-wide v6

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public varargs stopEvent([Lcom/android/camera/performance/PerformanceManager$Event;)J
    .locals 11

    .line 16
    array-length v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v5, p1, v4

    .line 17
    iget-object v6, p0, Lcom/android/camera/performance/PerformanceManager;->mEventLock:Ljava/lang/Object;

    monitor-enter v6

    .line 18
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/performance/PerformanceManager$Take;

    iget-boolean v7, v7, Lcom/android/camera/performance/PerformanceManager$Take;->mIsStarting:Z

    if-eqz v7, :cond_1

    if-eqz v5, :cond_0

    .line 19
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    .line 20
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 21
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 22
    iget-object v7, p0, Lcom/android/camera/performance/PerformanceManager;->mTakeMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/performance/PerformanceManager$Take;

    .line 23
    invoke-virtual {v7, v2, v3}, Lcom/android/camera/performance/PerformanceManager$Take;->setEndTime(J)V

    .line 24
    invoke-virtual {v7}, Lcom/android/camera/performance/PerformanceManager$Take;->getTakeTime()J

    move-result-wide v2

    .line 25
    invoke-direct {p0, v5, v2, v3}, Lcom/android/camera/performance/PerformanceManager;->checkDumpSystrace(Lcom/android/camera/performance/PerformanceManager$Event;J)V

    goto :goto_1

    .line 26
    :cond_1
    sget-object v7, Lcom/android/camera/performance/PerformanceManager;->TAG:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "Event: %s has no start time, ignore this stop event as take 0 ms"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v1

    invoke-static {v9, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/camera/log/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_1
    monitor-exit v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-wide v2
.end method
