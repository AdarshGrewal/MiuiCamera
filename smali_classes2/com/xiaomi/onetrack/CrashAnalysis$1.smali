.class public final Lcom/xiaomi/onetrack/CrashAnalysis$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/xiaomi/onetrack/api/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->b:Lcom/xiaomi/onetrack/api/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "CrashAnalysis"

    .line 1
    :try_start_0
    new-instance v1, Lcom/xiaomi/onetrack/CrashAnalysis;

    iget-object v2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->b:Lcom/xiaomi/onetrack/api/f;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaomi/onetrack/CrashAnalysis;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/f;Lcom/xiaomi/onetrack/CrashAnalysis$1;)V

    .line 2
    invoke-static {v1}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Lcom/xiaomi/onetrack/CrashAnalysis;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v1}, Lcom/xiaomi/onetrack/CrashAnalysis;->b(Lcom/xiaomi/onetrack/CrashAnalysis;)V

    goto :goto_0

    :cond_0
    const-string v1, "no crash file found"

    .line 4
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCrash error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
