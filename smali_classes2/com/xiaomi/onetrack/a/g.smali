.class public Lcom/xiaomi/onetrack/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/a/f;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/g;->b:Lcom/xiaomi/onetrack/a/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/g;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigDbManager"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/g;->b:Lcom/xiaomi/onetrack/a/f;

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/g;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;Ljava/util/ArrayList;)V

    return-void
.end method
