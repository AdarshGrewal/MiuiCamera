.class public final Lcom/xiaomi/onetrack/h/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/h/s$a;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/h/t;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/onetrack/h/t;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/onetrack/h/s;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/onetrack/h/s;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
