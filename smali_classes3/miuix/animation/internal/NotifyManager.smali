.class public Lmiuix/animation/internal/NotifyManager;
.super Ljava/lang/Object;
.source "NotifyManager.java"


# instance fields
.field public mConfig:Lmiuix/animation/base/AnimConfig;

.field public mNotifier:Lmiuix/animation/listener/ListenerNotifier;

.field public mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

.field public mTarget:Lmiuix/animation/IAnimTarget;


# direct methods
.method public constructor <init>(Lmiuix/animation/IAnimTarget;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 3
    iput-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 4
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier;

    invoke-direct {v0, p1}, Lmiuix/animation/listener/ListenerNotifier;-><init>(Lmiuix/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 5
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier;

    invoke-direct {v0, p1}, Lmiuix/animation/listener/ListenerNotifier;-><init>(Lmiuix/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiuix/animation/internal/NotifyManager;->mNotifier:Lmiuix/animation/listener/ListenerNotifier;

    return-void
.end method


# virtual methods
.method public getNotifier()Lmiuix/animation/listener/ListenerNotifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/NotifyManager;->mNotifier:Lmiuix/animation/listener/ListenerNotifier;

    return-object v0
.end method

.method public setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiuix/animation/base/AnimConfig;->copy(Lmiuix/animation/base/AnimConfig;)V

    .line 3
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p2, p1}, Lmiuix/animation/base/AnimConfigLink;->addTo(Lmiuix/animation/base/AnimConfig;)V

    .line 4
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    iget-object p2, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v0, p2}, Lmiuix/animation/listener/ListenerNotifier;->addListeners(Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1}, Lmiuix/animation/base/AnimConfig;->clear()V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    invoke-virtual {p1, v0, v0}, Lmiuix/animation/listener/ListenerNotifier;->notifyBegin(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mTarget:Lmiuix/animation/IAnimTarget;

    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object p1, p1, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    invoke-virtual {p2, v0, v0, p1}, Lmiuix/animation/listener/ListenerNotifier;->notifyPropertyBegin(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 9
    iget-object p2, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    invoke-virtual {p2, v0, v0, p1}, Lmiuix/animation/listener/ListenerNotifier;->notifyUpdate(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 10
    iget-object p2, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    invoke-virtual {p2, v0, v0, p1}, Lmiuix/animation/listener/ListenerNotifier;->notifyPropertyEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 11
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    invoke-virtual {p1, v0, v0}, Lmiuix/animation/listener/ListenerNotifier;->notifyEndAll(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    invoke-virtual {p1, v0}, Lmiuix/animation/listener/ListenerNotifier;->removeListeners(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1}, Lmiuix/animation/base/AnimConfig;->clear()V

    return-void
.end method
