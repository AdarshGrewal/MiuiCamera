.class public Lcom/xiaomi/stat/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/content/Context;

.field public e:Ljava/util/concurrent/Executor;

.field public f:J

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/xiaomi/stat/al;

.field public i:I

.field public j:I

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/xiaomi/stat/e;->i:I

    .line 10
    iput v0, p0, Lcom/xiaomi/stat/e;->j:I

    .line 11
    iput v0, p0, Lcom/xiaomi/stat/e;->k:I

    .line 12
    iput-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    .line 13
    iput-object p4, p0, Lcom/xiaomi/stat/e;->b:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/stat/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/stat/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/xiaomi/stat/e;->i:I

    .line 4
    iput v0, p0, Lcom/xiaomi/stat/e;->j:I

    .line 5
    iput v0, p0, Lcom/xiaomi/stat/e;->k:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    .line 7
    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/stat/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/stat/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/stat/e;->j:I

    return p1
.end method

.method public static synthetic a(Lcom/xiaomi/stat/e;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/xiaomi/stat/e;->l:J

    return-wide p1
.end method

.method private a(IIJJ)V
    .locals 11

    move-object v8, p0

    .line 64
    iget-object v9, v8, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/xiaomi/stat/p;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/stat/p;-><init>(Lcom/xiaomi/stat/e;IIJJ)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/e;->d:Landroid/content/Context;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/xiaomi/stat/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-boolean p1, p0, Lcom/xiaomi/stat/e;->a:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/xiaomi/stat/e;->b:Ljava/lang/String;

    :goto_0
    iput-object p2, p0, Lcom/xiaomi/stat/e;->c:Ljava/lang/String;

    .line 12
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    .line 13
    iget-boolean p1, p0, Lcom/xiaomi/stat/e;->a:Z

    if-eqz p1, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/xiaomi/stat/e;->e()V

    .line 15
    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/d/r;->a()V

    .line 16
    iget-object p1, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/xiaomi/stat/f;

    invoke-direct {p2, p0, p5, p4}, Lcom/xiaomi/stat/f;-><init>(Lcom/xiaomi/stat/e;Ljava/lang/String;Z)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/xiaomi/stat/MiStatParams;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p1}, Lcom/xiaomi/stat/MiStatParams;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/MiStatParams;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/aa;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/stat/aa;-><init>(Lcom/xiaomi/stat/e;ZLcom/xiaomi/stat/MiStatParams;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "set user profile failed: empty property !"

    .line 47
    invoke-static {p1}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/xiaomi/stat/a/l;)V
    .locals 1

    .line 65
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/l;)V

    .line 66
    invoke-static {}, Lcom/xiaomi/stat/c/i;->a()Lcom/xiaomi/stat/c/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/stat/c/i;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/stat/e;IIJJ)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/stat/e;->a(IIJJ)V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/a/l;)V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/stat/e;Ljava/lang/String;JJ)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method private a(Ljava/lang/String;JJ)V
    .locals 9

    .line 17
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/xiaomi/stat/u;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/stat/u;-><init>(Lcom/xiaomi/stat/e;Ljava/lang/String;JJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;Z)V
    .locals 8

    .line 34
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 36
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 38
    invoke-direct {p0, p3}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/MiStatParams;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/xiaomi/stat/y;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/stat/y;-><init>(Lcom/xiaomi/stat/e;ZLjava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(JJ)Z
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 51
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 54
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    if-ne p2, p3, :cond_2

    const/4 p2, 0x6

    .line 56
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq p3, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static synthetic a(Lcom/xiaomi/stat/e;)Z
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/xiaomi/stat/e;->a:Z

    return p0
.end method

.method public static synthetic a(Lcom/xiaomi/stat/e;JJ)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/stat/e;->a(JJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/xiaomi/stat/e;Z)Z
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/e;->g(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/xiaomi/stat/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/stat/e;->k:I

    return p1
.end method

.method public static synthetic b(Lcom/xiaomi/stat/e;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/xiaomi/stat/e;->f:J

    return-wide p1
.end method

.method public static synthetic b(Lcom/xiaomi/stat/e;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/xiaomi/stat/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/xiaomi/stat/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/stat/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method private c(Lcom/xiaomi/stat/MiStatParams;)Z
    .locals 2

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/xiaomi/stat/MiStatParams;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/xiaomi/stat/MiStatParams;->getParamsNumber()I

    move-result p1

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d()J
    .locals 2

    .line 2
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic d(Lcom/xiaomi/stat/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/stat/e;->f()V

    return-void
.end method

.method public static synthetic e(Lcom/xiaomi/stat/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/stat/e;->i:I

    return p0
.end method

.method private e()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/xiaomi/stat/e;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/xiaomi/stat/r;

    invoke-direct {v1, p0}, Lcom/xiaomi/stat/r;-><init>(Lcom/xiaomi/stat/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static synthetic f(Lcom/xiaomi/stat/e;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method private f()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/b;->p()I

    move-result v0

    .line 4
    invoke-static {}, Lcom/xiaomi/stat/d/c;->a()I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 5
    invoke-static {v1}, Lcom/xiaomi/stat/b;->e(I)V

    return-void

    :cond_1
    if-ge v0, v1, :cond_2

    .line 6
    iget-object v2, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/xiaomi/stat/j;

    invoke-direct {v3, p0, v1, v0}, Lcom/xiaomi/stat/j;-><init>(Lcom/xiaomi/stat/e;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static synthetic g(Lcom/xiaomi/stat/e;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/xiaomi/stat/e;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaomi/stat/e;->i:I

    return v0
.end method

.method private g()Z
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/xiaomi/stat/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/stat/b;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/xiaomi/stat/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/stat/b;->e(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private g(Z)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/xiaomi/stat/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/stat/b;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/xiaomi/stat/e;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/stat/b;->e(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 4
    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/stat/e;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/stat/d/m;->b(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public static synthetic h(Lcom/xiaomi/stat/e;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/xiaomi/stat/e;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaomi/stat/e;->j:I

    return v0
.end method

.method private h()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/k;

    invoke-direct {v1, p0}, Lcom/xiaomi/stat/k;-><init>(Lcom/xiaomi/stat/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic i(Lcom/xiaomi/stat/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/stat/e;->h()V

    return-void
.end method

.method private i()Z
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/xiaomi/stat/e;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/xiaomi/stat/e;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/stat/e;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    const-string v6, "android"

    .line 5
    invoke-virtual {v3, v6, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v4, :cond_1

    .line 6
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    if-lez v5, :cond_1

    if-eqz v3, :cond_1

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_1

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    if-lez v5, :cond_1

    .line 7
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v2

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public static synthetic j(Lcom/xiaomi/stat/e;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/xiaomi/stat/e;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaomi/stat/e;->k:I

    return v0
.end method

.method public static synthetic k(Lcom/xiaomi/stat/e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/stat/e;->f:J

    return-wide v0
.end method

.method public static synthetic l(Lcom/xiaomi/stat/e;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/stat/e;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic m(Lcom/xiaomi/stat/e;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/xiaomi/stat/e;->i:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/xiaomi/stat/e;->i:I

    return v0
.end method

.method public static synthetic n(Lcom/xiaomi/stat/e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/stat/e;->l:J

    return-wide v0
.end method

.method public static synthetic o(Lcom/xiaomi/stat/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/stat/e;->j:I

    return p0
.end method

.method public static synthetic p(Lcom/xiaomi/stat/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/stat/e;->k:I

    return p0
.end method

.method public static synthetic q(Lcom/xiaomi/stat/e;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/stat/e;->g()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 50
    invoke-static {}, Lcom/xiaomi/stat/b;->i()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/stat/b;->a(I)V

    return-void
.end method

.method public a(Lcom/xiaomi/stat/HttpEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/m;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/stat/m;-><init>(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/HttpEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/MiStatParams;Z)V

    return-void
.end method

.method public a(Lcom/xiaomi/stat/NetAvailableEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/n;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/stat/n;-><init>(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/NetAvailableEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/xiaomi/stat/e;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/stat/e;->g:Ljava/util/Map;

    .line 22
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 23
    iget-object v2, p0, Lcom/xiaomi/stat/e;->g:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 13

    .line 24
    iget-object v0, p0, Lcom/xiaomi/stat/e;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    return-void

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/stat/e;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 28
    invoke-direct {p0, p2}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/MiStatParams;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 29
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v10, v1, v3

    .line 30
    invoke-direct {p0}, Lcom/xiaomi/stat/e;->d()J

    move-result-wide v8

    .line 31
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/x;

    move-object v5, v1

    move-object v6, p0

    move-object v7, p1

    move-object v12, p2

    invoke-direct/range {v5 .. v12}, Lcom/xiaomi/stat/x;-><init>(Lcom/xiaomi/stat/e;Ljava/lang/String;JJLcom/xiaomi/stat/MiStatParams;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;Z)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/z;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/stat/z;-><init>(Lcom/xiaomi/stat/e;Ljava/lang/Throwable;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 18
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/v;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/stat/v;-><init>(Lcom/xiaomi/stat/e;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    .line 57
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/stat/l;-><init>(Lcom/xiaomi/stat/e;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ZZ)Z
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/xiaomi/stat/e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p1}, Lcom/xiaomi/stat/b;->f(Z)V

    .line 63
    invoke-static {p2}, Lcom/xiaomi/stat/b;->g(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 1

    .line 13
    invoke-static {}, Lcom/xiaomi/stat/b;->j()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/stat/b;->b(I)V

    return-void
.end method

.method public b(Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/MiStatParams;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/stat/e;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;Z)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 4
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/w;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/stat/w;-><init>(Lcom/xiaomi/stat/e;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .line 17
    new-instance v0, Lcom/xiaomi/stat/o;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/o;-><init>(Lcom/xiaomi/stat/e;)V

    .line 18
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 19
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x5

    .line 20
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/stat/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_0
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->f(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_1
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/stat/b;->d(Z)V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/stat/e;->h:Lcom/xiaomi/stat/al;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Lcom/xiaomi/stat/al;->a(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    new-instance p1, Lcom/xiaomi/stat/al;

    invoke-direct {p1, p0}, Lcom/xiaomi/stat/al;-><init>(Lcom/xiaomi/stat/e;)V

    iput-object p1, p0, Lcom/xiaomi/stat/e;->h:Lcom/xiaomi/stat/al;

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/stat/al;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v0}, Lcom/xiaomi/stat/e;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->f(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/i;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/stat/i;-><init>(Lcom/xiaomi/stat/e;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/xiaomi/stat/e;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/h;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/stat/h;-><init>(Lcom/xiaomi/stat/e;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid plain text value for event: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/e;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/stat/q;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/stat/q;-><init>(Lcom/xiaomi/stat/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/stat/e;->a(ZZ)Z

    move-result p1

    return p1
.end method

.method public f(Z)V
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/xiaomi/stat/d/k;->a(Z)V

    return-void
.end method
