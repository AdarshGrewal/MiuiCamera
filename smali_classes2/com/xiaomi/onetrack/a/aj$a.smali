.class public Lcom/xiaomi/onetrack/a/aj$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/a/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/xiaomi/onetrack/a/aj;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/onetrack/a/aj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/a/aj;-><init>(Lcom/xiaomi/onetrack/a/ak;)V

    sput-object v0, Lcom/xiaomi/onetrack/a/aj$a;->a:Lcom/xiaomi/onetrack/a/aj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/xiaomi/onetrack/a/aj;
    .locals 1

    sget-object v0, Lcom/xiaomi/onetrack/a/aj$a;->a:Lcom/xiaomi/onetrack/a/aj;

    return-object v0
.end method
