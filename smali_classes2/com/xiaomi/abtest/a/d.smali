.class public Lcom/xiaomi/abtest/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/abtest/a/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/abtest/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/abtest/a/d;->a:Lcom/xiaomi/abtest/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/abtest/a/d;->a:Lcom/xiaomi/abtest/a/a;

    invoke-static {v0}, Lcom/xiaomi/abtest/a/a;->e(Lcom/xiaomi/abtest/a/a;)V

    return-void
.end method
