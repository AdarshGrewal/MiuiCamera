.class public Lcom/android/camera/module/impl/component/BackStackImpl;
.super Ljava/lang/Object;
.source "BackStackImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BackStack;


# static fields
.field public static final TAG:Ljava/lang/String; = "BackStack"


# instance fields
.field public mStacks:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/BackStackImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/BackStackImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/BackStackImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private final handleBackStack(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 4
    instance-of v5, v4, Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;

    if-nez v5, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;

    .line 6
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;->canProvide()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {v4, p1}, Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;->onBackEvent(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "consume global backEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackStack"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private refreshBackStack(Ljava/util/Stack;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/Stack;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 4
    instance-of v3, v2, Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;

    if-nez v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;

    .line 6
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;->canProvide()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {v2, p2}, Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;->onBackEvent(I)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public addInBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;",
            ">(TP;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handleBackStackFromKeyBack()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/BackStackImpl;->handleBackStack(I)Z

    move-result v0

    return v0
.end method

.method public handleBackStackFromLongPressShutter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/impl/component/BackStackImpl;->refreshBackStack(Ljava/util/Stack;I)V

    return-void
.end method

.method public handleBackStackFromShutter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/impl/component/BackStackImpl;->refreshBackStack(Ljava/util/Stack;I)V

    return-void
.end method

.method public handleBackStackFromTapDown(II)Z
    .locals 0

    const/4 p1, 0x2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/BackStackImpl;->handleBackStack(I)Z

    move-result p1

    return p1
.end method

.method public handleBackStackFromTimerBurstShutter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/impl/component/BackStackImpl;->refreshBackStack(Ljava/util/Stack;I)V

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public removeBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;",
            ">(TP;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
