.class public Lcom/xiaomi/camera/device/callable/CallableReturn;
.super Ljava/lang/Object;
.source "CallableReturn.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final exception:Ljava/lang/Exception;

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/CallableReturn;->exception:Ljava/lang/Exception;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/CallableReturn;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/CallableReturn;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/CallableReturn;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/CallableReturn;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/CallableReturn;->value:Ljava/lang/Object;

    return-object v0
.end method
