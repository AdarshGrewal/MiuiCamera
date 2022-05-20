.class public final Lcom/xiaomi/onetrack/b/c;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const-string p2, "EventManager"

    const-string v0, "screen on/off"

    .line 4
    invoke-static {p2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p2, Lcom/xiaomi/onetrack/b/d;

    invoke-direct {p2, p0, p1}, Lcom/xiaomi/onetrack/b/d;-><init>(Lcom/xiaomi/onetrack/b/c;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
