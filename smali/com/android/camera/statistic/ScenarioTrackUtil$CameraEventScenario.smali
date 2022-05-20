.class public Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;
.super Ljava/lang/Object;
.source "ScenarioTrackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/statistic/ScenarioTrackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraEventScenario"
.end annotation


# static fields
.field public static final CAMERA_PACKAGE:Ljava/lang/String; = "com.android.camera"

.field public static final CATEGORY_PERFORMANCE:Ljava/lang/String; = "Performance"


# instance fields
.field public e2eScenario:Landroid/os/statistics/E2EScenario;

.field public volatile isTrackStarted:Z

.field public mEventName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->isTrackStarted:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->initE2EScenario(Ljava/lang/String;)Landroid/os/statistics/E2EScenario;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->e2eScenario:Landroid/os/statistics/E2EScenario;

    .line 4
    iput-object p1, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->mEventName:Ljava/lang/String;

    return-void
.end method

.method private initE2EScenario(Ljava/lang/String;)Landroid/os/statistics/E2EScenario;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/statistics/E2EScenario;

    const-string v1, "com.android.camera"

    const-string v2, "Performance"

    invoke-direct {v0, v1, v2, p1}, Landroid/os/statistics/E2EScenario;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcom/android/camera/statistic/ScenarioTrackUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " initializer failed: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->mEventName:Ljava/lang/String;

    return-object v0
.end method
