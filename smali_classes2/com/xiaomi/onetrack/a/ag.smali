.class public Lcom/xiaomi/onetrack/a/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/a/af;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/a/af;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/ag;->a:Lcom/xiaomi/onetrack/a/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/onetrack/c/m;->a()Lcom/xiaomi/onetrack/c/m;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/onetrack/c/m;->a(IZ)V

    invoke-static {}, Lcom/xiaomi/onetrack/c/m;->a()Lcom/xiaomi/onetrack/c/m;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/onetrack/c/m;->a(IZ)V

    return-void
.end method
