.class public LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;
.super Ljava/lang/Object;
.source "VibratorContext.java"

# interfaces
.implements LOooO00o/OooO0O0/OooO0Oo/OooO0O0;


# static fields
.field public static final OooO0OO:Ljava/lang/String; = "VibratorContext"

.field public static volatile OooO0Oo:LOooO00o/OooO0O0/OooO0Oo/OooO0Oo; = null

.field public static OooO0o0:I = 0x4b


# instance fields
.field public OooO00o:Z

.field public OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0O0;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o:Z

    .line 3
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    invoke-direct {v0, p1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v0}, Lmiuix/util/HapticFeedbackCompat;->supportLinearMotor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0O0;

    const-string p1, "VibratorContext"

    const-string v0, "ViberatorContext: init LinearMotorStrategy"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;
    .locals 2

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0Oo:LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    if-nez v0, :cond_1

    .line 2
    const-class v0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0Oo:LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;-><init>(Landroid/content/Context;)V

    sput-object v1, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0Oo:LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0Oo:LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    return-object p0
.end method

.method private OooOOO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0O0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public OooO()V
    .locals 1

    .line 1
    invoke-direct {p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooOOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0O0;

    invoke-interface {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0;->OooO()V

    :cond_0
    return-void
.end method

.method public OooO00o()V
    .locals 1

    .line 8
    invoke-direct {p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooOOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0O0;

    invoke-interface {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0;->OooO00o()V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    return-void
.end method

.method public OooO00o(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o:Z

    return-void
.end method

.method public OooO0O0()V
    .locals 2

    const-string v0, "VibratorContext"

    const-string/jumbo v1, "performModeSwitch: "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooOOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0O0;

    invoke-interface {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0;->OooO0O0()V

    :cond_0
    return-void
.end method

.method public OooO0OO()V
    .locals 1

    .line 1
    invoke-direct {p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooOOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0O0;

    invoke-interface {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0;->OooO0OO()V

    :cond_0
    return-void
.end method

.method public OooO0Oo()V
    .locals 1

    .line 1
    invoke-direct {p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooOOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0O0;

    invoke-interface {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0;->OooO0Oo()V

    :cond_0
    return-void
.end method

.method public OooO0o()V
    .locals 2

    .line 1
    iget-boolean v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "performSnapClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorContext"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooOOO0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0O0;

    invoke-interface {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0;->OooO0o()V

    :cond_1
    return-void
.end method

.method public OooO0o0()V
    .locals 1

    .line 1
    invoke-direct {p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooOOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0O0;

    invoke-interface {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0;->OooO0o0()V

    :cond_0
    return-void
.end method

.method public OooO0oO()V
    .locals 1

    .line 1
    invoke-direct {p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooOOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0O0;

    invoke-interface {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0;->OooO0oO()V

    :cond_0
    return-void
.end method

.method public OooO0oo()V
    .locals 1

    .line 1
    invoke-direct {p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooOOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0O0;

    invoke-interface {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0;->OooO0oo()V

    :cond_0
    return-void
.end method

.method public OooOO0()V
    .locals 1

    .line 1
    invoke-direct {p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooOOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0O0;

    invoke-interface {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0;->OooOO0()V

    :cond_0
    return-void
.end method

.method public OooOO0O()V
    .locals 1

    .line 1
    invoke-direct {p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooOOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0O0:LOooO00o/OooO0O0/OooO0Oo/OooO0O0;

    invoke-interface {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0;->OooOO0O()V

    :cond_0
    return-void
.end method

.method public OooOO0o()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "postDelayPerformSnapClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorContext"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    sget v1, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o0:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO0Oo/OooO00o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO0Oo/OooO00o;-><init>(LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
