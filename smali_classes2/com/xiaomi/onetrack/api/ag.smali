.class public Lcom/xiaomi/onetrack/api/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/xiaomi/onetrack/api/af;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/af;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ag;->b:Lcom/xiaomi/onetrack/api/af;

    iput p2, p0, Lcom/xiaomi/onetrack/api/ag;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/xiaomi/onetrack/api/ag;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/xiaomi/onetrack/b/p;->a()Lcom/xiaomi/onetrack/b/p;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/onetrack/b/p;->a(IZ)V

    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/b/p;->a()Lcom/xiaomi/onetrack/b/p;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/xiaomi/onetrack/b/p;->a(IZ)V

    :cond_1
    return-void
.end method
