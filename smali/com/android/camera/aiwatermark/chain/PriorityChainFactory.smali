.class public Lcom/android/camera/aiwatermark/chain/PriorityChainFactory;
.super Ljava/lang/Object;
.source "PriorityChainFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPriorityChain(I)Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Lcom/android/camera/aiwatermark/chain/IndiaPriorityChain;

    invoke-direct {p1}, Lcom/android/camera/aiwatermark/chain/IndiaPriorityChain;-><init>()V

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Lcom/android/camera/aiwatermark/chain/ChinaPriorityChain;

    invoke-direct {p1}, Lcom/android/camera/aiwatermark/chain/ChinaPriorityChain;-><init>()V

    :goto_0
    return-object p1
.end method
