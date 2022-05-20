.class public Lcom/xiaomi/stat/c/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final e:Ljava/lang/String; = "UploadPolicy"


# instance fields
.field public d:Z

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-boolean p2, p0, Lcom/xiaomi/stat/c/f;->d:Z

    .line 6
    iput-object p1, p0, Lcom/xiaomi/stat/c/f;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/xiaomi/stat/c/f;->d:Z

    .line 3
    invoke-static {}, Lcom/xiaomi/stat/ak;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/stat/c/f;->f:Ljava/lang/String;

    return-void
.end method

.method private a(I)Z
    .locals 0

    and-int/lit8 p1, p1, -0x20

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private b()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/m;->b(Landroid/content/Context;)Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getExperiencePlanPolicy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isInternationalVersion= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isAnonymous= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaomi/stat/c/f;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UploadPolicy"

    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/xiaomi/stat/c/f;->d:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method private c()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/c/f;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/stat/b;->e(Ljava/lang/String;)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCustomPrivacyPolicy: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UploadPolicy"

    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    return v1
.end method

.method private d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/c/f;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/stat/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/stat/c/f;->c()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/stat/c/f;->b()I

    move-result v0

    return v0
.end method

.method private e()I
    .locals 5

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/l;->a(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/xiaomi/stat/b;->l()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xiaomi/stat/c/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/stat/b;->l()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/b;->i()I

    move-result v1

    .line 3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getHttpServicePolicy: currentNet= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Config.getServerNetworkType= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Lcom/xiaomi/stat/b;->l()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Config.getUserNetworkType()= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Lcom/xiaomi/stat/b;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (configNet & currentNet) == currentNet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr v1, v0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UploadPolicy"

    .line 6
    invoke-static {v4, v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    return v3
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/stat/c/f;->d()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/stat/c/f;->e()I

    move-result v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
