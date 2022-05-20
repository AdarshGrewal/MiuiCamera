.class public Lcom/xiaomi/stat/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field public c:Ljava/lang/String;

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/stat/a/b;->c:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/xiaomi/stat/a/b;->d:I

    .line 4
    iput-boolean p3, p0, Lcom/xiaomi/stat/a/b;->e:Z

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/stat/a/b;->f:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sub"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-boolean v1, p0, Lcom/xiaomi/stat/a/b;->f:Z

    const-string v2, "\""

    const-string v3, " = \""

    if-eqz v1, :cond_0

    const-string v1, " is null"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/stat/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :goto_0
    iget v1, p0, Lcom/xiaomi/stat/a/b;->d:I

    const-string v4, " and "

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "eg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mistat_basic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is_am"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/stat/a/b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/a/b;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/xiaomi/stat/a/b;->e:Z

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/xiaomi/stat/a/b;->d:I

    const/4 p3, 0x1

    if-nez p1, :cond_1

    return p3

    .line 3
    :cond_1
    iget-boolean p1, p0, Lcom/xiaomi/stat/a/b;->f:Z

    if-eqz p1, :cond_2

    const-string p1, "mistat_basic"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return p3

    :cond_2
    :goto_0
    return v0
.end method
