.class public Lcom/xiaomi/onetrack/e/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "EventTrack"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/e/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/e/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method
