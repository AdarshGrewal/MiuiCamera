.class public Lcom/xiaomi/onetrack/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/xiaomi/onetrack/b/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/b/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/d;->b:Lcom/xiaomi/onetrack/b/c;

    iput-object p2, p0, Lcom/xiaomi/onetrack/b/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/d;->a:Ljava/lang/String;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenReceiver will post prio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EventManager"

    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/xiaomi/onetrack/b/p;->a()Lcom/xiaomi/onetrack/b/p;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/onetrack/b/p;->a(IZ)V

    return-void
.end method
