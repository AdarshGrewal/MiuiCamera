.class public Lcom/xiaomi/onetrack/api/w;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/f;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/w;->a:Lcom/xiaomi/onetrack/api/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/w;->a:Lcom/xiaomi/onetrack/api/f;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/f;->g(Lcom/xiaomi/onetrack/api/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
