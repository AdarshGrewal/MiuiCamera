.class public abstract Lcom/android/camera/module/shottype/ChainHandler;
.super Ljava/lang/Object;
.source "ChainHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mNext:Lcom/android/camera/module/shottype/ChainHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/shottype/ChainHandler<",
            "TP;TT;>;"
        }
    .end annotation
.end field

.field public mParam:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract couldProcess()Z
.end method

.method public final handle()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/shottype/ChainHandler;->couldProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/shottype/ChainHandler;->process()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mNext:Lcom/android/camera/module/shottype/ChainHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ChainHandler;->handle()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "no next handler, end chain"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract process()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final setNextHandler(Lcom/android/camera/module/shottype/ChainHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mNext:Lcom/android/camera/module/shottype/ChainHandler;

    return-void
.end method
