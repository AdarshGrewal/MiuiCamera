.class public Lcom/xiaomi/stat/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/w;->b:Lcom/xiaomi/stat/e;

    iput-boolean p2, p0, Lcom/xiaomi/stat/w;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/stat/w;->a:Z

    invoke-static {v0}, Lcom/xiaomi/stat/b;->b(Z)V

    return-void
.end method
