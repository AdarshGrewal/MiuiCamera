.class public Lcom/android/camera/Coverage;
.super Ljava/lang/Object;
.source "Coverage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Coverage$CoverageCommand;
    }
.end annotation


# static fields
.field public static final COLLECT_FILE_EC_ACTION:Ljava/lang/String; = "android.intent.action.GET_COVERAGE_EC"

.field public static final DEFAULT_COVERAGE_FILE_PATH:Ljava/lang/String; = "/data/local/tmp"

.field public static final ENABLED:Z

.field public static final TAG:Ljava/lang/String; = "Coverage"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "org.jacoco.agent.rt.RT"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string/jumbo v0, "org.jacoco.agent.rt.internal.Offline"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const-string v0, "Coverage"

    const-string v1, "ClassNotFoundException: "

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 4
    :goto_0
    sput-boolean v0, Lcom/android/camera/Coverage;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initCoverageService(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/camera/Coverage;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.GET_COVERAGE_EC"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/android/camera/Coverage$CoverageCommand;

    invoke-direct {v1}, Lcom/android/camera/Coverage$CoverageCommand;-><init>()V

    .line 4
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
