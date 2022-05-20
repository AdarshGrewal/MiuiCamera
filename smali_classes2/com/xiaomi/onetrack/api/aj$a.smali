.class public Lcom/xiaomi/onetrack/api/aj$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/api/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/xiaomi/onetrack/api/aj;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/api/aj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/api/aj;-><init>(Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;)V

    sput-object v0, Lcom/xiaomi/onetrack/api/aj$a;->a:Lcom/xiaomi/onetrack/api/aj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/xiaomi/onetrack/api/aj;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/api/aj$a;->a:Lcom/xiaomi/onetrack/api/aj;

    return-object v0
.end method
