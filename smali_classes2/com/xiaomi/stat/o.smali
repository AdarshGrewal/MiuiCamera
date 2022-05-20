.class public Lcom/xiaomi/stat/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/o;->a:Lcom/xiaomi/stat/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b/c;->a()Lcom/xiaomi/stat/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/b/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/stat/o;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
