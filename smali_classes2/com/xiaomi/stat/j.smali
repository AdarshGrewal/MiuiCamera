.class public Lcom/xiaomi/stat/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/j;->c:Lcom/xiaomi/stat/e;

    iput p2, p0, Lcom/xiaomi/stat/j;->a:I

    iput p3, p0, Lcom/xiaomi/stat/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/j;->c:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->q(Lcom/xiaomi/stat/e;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget v0, p0, Lcom/xiaomi/stat/j;->a:I

    invoke-static {v0}, Lcom/xiaomi/stat/b;->e(I)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/stat/j;->c:Lcom/xiaomi/stat/e;

    iget v1, p0, Lcom/xiaomi/stat/j;->b:I

    invoke-static {v1}, Lcom/xiaomi/stat/a/l;->a(I)Lcom/xiaomi/stat/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    return-void
.end method
