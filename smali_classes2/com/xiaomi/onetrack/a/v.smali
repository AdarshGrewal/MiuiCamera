.class public Lcom/xiaomi/onetrack/a/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/v;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/v;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/f;->e(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/d;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/g;->a(Lcom/xiaomi/onetrack/a/d;)V

    return-void
.end method
