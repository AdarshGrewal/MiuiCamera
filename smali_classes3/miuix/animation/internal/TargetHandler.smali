.class public final Lmiuix/animation/internal/TargetHandler;
.super Landroid/os/Handler;
.source "TargetHandler.java"


# static fields
.field public static final ANIM_MSG_END:I = 0x2

.field public static final ANIM_MSG_REMOVE_WAIT:I = 0x3

.field public static final ANIM_MSG_REPLACED:I = 0x5

.field public static final ANIM_MSG_START_TAG:I = 0x0

.field public static final ANIM_MSG_UPDATE_LISTENER:I = 0x4

.field public static final MASS_UPDATE_THRESHOLD:I = 0x9c40


# instance fields
.field public final mTarget:Lmiuix/animation/IAnimTarget;

.field public final mTransList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final threadId:J


# direct methods
.method public constructor <init>(Lmiuix/animation/IAnimTarget;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTransList:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/animation/internal/TargetHandler;->threadId:J

    return-void
.end method

.method public static checkValue(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/listener/UpdateInfo;

    .line 3
    iget-object v3, v2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v3, v3, Lmiuix/animation/internal/AnimInfo;->value:D

    invoke-static {v3, v4}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 6
    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method public static notifyStartOrEnd(Lmiuix/animation/internal/TransitionInfo;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/internal/TransitionInfo;->getAnimCount()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/listener/UpdateInfo;

    .line 4
    iget-object v2, v1, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    sget-object v3, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-static {v2, v1}, Lmiuix/animation/styles/ForegroundColorStyle;->start(Lmiuix/animation/IAnimTarget;Lmiuix/animation/listener/UpdateInfo;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-static {v2, v1}, Lmiuix/animation/styles/ForegroundColorStyle;->end(Lmiuix/animation/IAnimTarget;Lmiuix/animation/listener/UpdateInfo;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private onEnd(Lmiuix/animation/internal/TransitionInfo;I)V
    .locals 3

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< onEnd, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", info.key = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-direct {p0, v1, p1}, Lmiuix/animation/internal/TargetHandler;->update(ZLmiuix/animation/internal/TransitionInfo;)V

    .line 4
    invoke-static {p1, v1}, Lmiuix/animation/internal/TargetHandler;->notifyStartOrEnd(Lmiuix/animation/internal/TransitionInfo;Z)V

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 5
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p2}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object p2

    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lmiuix/animation/listener/ListenerNotifier;->notifyCancelAll(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p2}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object p2

    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lmiuix/animation/listener/ListenerNotifier;->notifyEndAll(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    :goto_0
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p2}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object p2

    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lmiuix/animation/listener/ListenerNotifier;->removeListeners(Ljava/lang/Object;)V

    return-void
.end method

.method private onReplaced(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 4

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<< onReplaced, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", info.key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lmiuix/animation/internal/TransitionInfo;->getAnimCount()I

    move-result v0

    const/16 v1, 0xfa0

    if-gt v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object v0

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    iget-object v3, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/listener/ListenerNotifier;->notifyPropertyEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object v0

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/listener/ListenerNotifier;->notifyCancelAll(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object v0

    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lmiuix/animation/listener/ListenerNotifier;->removeListeners(Ljava/lang/Object;)V

    return-void
.end method

.method private onStart(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 4

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> onStart, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", info.key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object v0

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/listener/ListenerNotifier;->addListeners(Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)Z

    .line 4
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object v0

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/listener/ListenerNotifier;->notifyBegin(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xfa0

    if-gt v1, v2, :cond_1

    .line 7
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object v1

    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    iget-object v3, p1, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0}, Lmiuix/animation/listener/ListenerNotifier;->notifyPropertyBegin(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    :cond_1
    const/4 v0, 0x1

    .line 8
    invoke-static {p1, v0}, Lmiuix/animation/internal/TargetHandler;->notifyStartOrEnd(Lmiuix/animation/internal/TransitionInfo;Z)V

    return-void
.end method

.method public static setValueAndNotify(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/IAnimTarget;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1
    instance-of p4, p0, Lmiuix/animation/ViewTarget;

    if-eqz p4, :cond_1

    .line 2
    :cond_0
    invoke-static {p0, p3}, Lmiuix/animation/internal/TargetHandler;->updateValueAndVelocity(Lmiuix/animation/IAnimTarget;Ljava/util/List;)V

    .line 3
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    const v0, 0x9c40

    if-le p4, v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/listener/ListenerNotifier;->notifyMassUpdate(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lmiuix/animation/listener/ListenerNotifier;->notifyPropertyEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/listener/ListenerNotifier;->notifyUpdate(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    :goto_0
    return-void
.end method

.method private update(ZLmiuix/animation/internal/TransitionInfo;)V
    .locals 3

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-static {v0}, Lmiuix/animation/internal/TargetHandler;->checkValue(Ljava/util/List;)V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    iget-object v1, p2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v2, p2, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    iget-object p2, p2, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    invoke-static {v1, v2, p2, v0, p1}, Lmiuix/animation/internal/TargetHandler;->setValueAndNotify(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static updateValueAndVelocity(Lmiuix/animation/IAnimTarget;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/IAnimTarget;",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/listener/UpdateInfo;

    .line 2
    iget-object v1, v0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->value:D

    invoke-static {v1, v2}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p0}, Lmiuix/animation/listener/UpdateInfo;->setTargetValue(Lmiuix/animation/IAnimTarget;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    goto/16 :goto_0

    .line 2
    :cond_0
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/animation/internal/TransitionInfo;

    if-eqz p1, :cond_6

    .line 3
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object v0

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmiuix/animation/listener/ListenerNotifier;->removeListeners(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object v0

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, v1, p1}, Lmiuix/animation/listener/ListenerNotifier;->addListeners(Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object p1, p1, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    :cond_3
    if-eqz v0, :cond_4

    .line 8
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lmiuix/animation/internal/TargetHandler;->onEnd(Lmiuix/animation/internal/TransitionInfo;I)V

    .line 9
    :cond_4
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/animation/internal/TransitionInfo;

    if-eqz p1, :cond_6

    .line 10
    invoke-direct {p0, p1}, Lmiuix/animation/internal/TargetHandler;->onReplaced(Lmiuix/animation/internal/TransitionInfo;)V

    goto :goto_0

    .line 11
    :cond_5
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/animation/internal/TransitionInfo;

    if-eqz p1, :cond_6

    .line 12
    invoke-direct {p0, p1}, Lmiuix/animation/internal/TargetHandler;->onStart(Lmiuix/animation/internal/TransitionInfo;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public isInTargetThread()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public update(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTarget:Lmiuix/animation/IAnimTarget;

    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v1, p0, Lmiuix/animation/internal/TargetHandler;->mTransList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/AnimManager;->getTransitionInfos(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler;->mTransList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    .line 3
    invoke-direct {p0, p1, v1}, Lmiuix/animation/internal/TargetHandler;->update(ZLmiuix/animation/internal/TransitionInfo;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lmiuix/animation/internal/TargetHandler;->mTransList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
