.class public Lcom/xiaomi/onetrack/a/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/a/f;-><init>(Lcom/xiaomi/onetrack/a/g;)V

    sput-object v0, Lcom/xiaomi/onetrack/a/f$a;->a:Lcom/xiaomi/onetrack/a/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/xiaomi/onetrack/a/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/a/f$a;->a:Lcom/xiaomi/onetrack/a/f;

    return-object v0
.end method
