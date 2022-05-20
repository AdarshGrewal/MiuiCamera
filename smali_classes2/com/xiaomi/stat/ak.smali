.class public Lcom/xiaomi/stat/ak;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .line 4
    sget-object v0, Lcom/xiaomi/stat/ak;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/xiaomi/stat/ak;->a:Landroid/content/Context;

    .line 2
    sput-object p1, Lcom/xiaomi/stat/ak;->b:Ljava/lang/String;

    .line 3
    sput-object p2, Lcom/xiaomi/stat/ak;->c:Ljava/lang/String;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/stat/ak;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/stat/ak;->c:Ljava/lang/String;

    return-object v0
.end method
