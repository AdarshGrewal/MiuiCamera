.class public Lcom/android/camera/aiwatermark/chain/IndiaPriorityChain;
.super Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;
.source "IndiaPriorityChain.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;-><init>()V

    return-void
.end method


# virtual methods
.method public createASDChain(Landroid/content/Context;)Lcom/android/camera/aiwatermark/handler/AbstractHandler;
    .locals 1

    .line 1
    new-instance p1, Lcom/android/camera/aiwatermark/handler/IndiaTimeHandler;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/camera/aiwatermark/handler/IndiaTimeHandler;-><init>(Z)V

    return-object p1
.end method

.method public createChain(Landroid/content/Context;)Lcom/android/camera/aiwatermark/handler/AbstractHandler;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/aiwatermark/handler/IndiaScenicSpotsHandler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/camera/aiwatermark/handler/IndiaScenicSpotsHandler;-><init>(Z)V

    .line 2
    new-instance v2, Lcom/android/camera/aiwatermark/handler/IndiaASDHandler;

    invoke-direct {v2, v1, p1}, Lcom/android/camera/aiwatermark/handler/IndiaASDHandler;-><init>(ZLandroid/content/Context;)V

    .line 3
    new-instance p1, Lcom/android/camera/aiwatermark/handler/IndiaTimeHandler;

    invoke-direct {p1, v1}, Lcom/android/camera/aiwatermark/handler/IndiaTimeHandler;-><init>(Z)V

    .line 4
    invoke-virtual {v0, v2}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->setNextHandler(Lcom/android/camera/aiwatermark/handler/AbstractHandler;)V

    .line 5
    invoke-virtual {v2, p1}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->setNextHandler(Lcom/android/camera/aiwatermark/handler/AbstractHandler;)V

    return-object v0
.end method
