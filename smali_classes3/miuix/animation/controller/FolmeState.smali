.class public Lmiuix/animation/controller/FolmeState;
.super Ljava/lang/Object;
.source "FolmeState.java"

# interfaces
.implements Lmiuix/animation/controller/IFolmeStateStyle;


# instance fields
.field public mConfigLink:Lmiuix/animation/base/AnimConfigLink;

.field public mEnableAnim:Z

.field public mStateMgr:Lmiuix/animation/controller/StateManager;

.field public mTarget:Lmiuix/animation/IAnimTarget;


# direct methods
.method public constructor <init>(Lmiuix/animation/IAnimTarget;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiuix/animation/controller/StateManager;

    invoke-direct {v0}, Lmiuix/animation/controller/StateManager;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    new-instance v0, Lmiuix/animation/base/AnimConfigLink;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfigLink;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mConfigLink:Lmiuix/animation/base/AnimConfigLink;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeState;->mEnableAnim:Z

    iput-object p1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    return-void
.end method

.method private fromTo(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/IStateStyle;
    .locals 3

    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeState;->mEnableAnim:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p2}, Lmiuix/animation/controller/StateManager;->setup(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_0
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v1, v0, p3}, Lmiuix/animation/controller/StateManager;->addTempConfig(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v1

    iget-object v2, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2, p3}, Lmiuix/animation/internal/AnimRunner;->run(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    iget-object p1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p1, v0}, Lmiuix/animation/controller/StateManager;->clearTempState(Lmiuix/animation/controller/AnimState;)V

    invoke-virtual {p3}, Lmiuix/animation/base/AnimConfigLink;->clear()V

    :cond_1
    return-object p0
.end method

.method private getConfigLink()Lmiuix/animation/base/AnimConfigLink;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mConfigLink:Lmiuix/animation/base/AnimConfigLink;

    return-object v0
.end method

.method private setTo(Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/IStateStyle;
    .locals 2

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_2

    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lmiuix/animation/controller/FolmeState$1;

    invoke-direct {v1, p0, p1, p2}, Lmiuix/animation/controller/FolmeState$1;-><init>(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->executeOnInitialized(Ljava/lang/Runnable;)V

    return-object p0

    :cond_2
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeState;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public add(Ljava/lang/String;F)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;F)V

    return-object p0
.end method

.method public add(Ljava/lang/String;FJ)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;FJ)V

    return-object p0
.end method

.method public add(Ljava/lang/String;I)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;I)V

    return-object p0
.end method

.method public add(Ljava/lang/String;IJ)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;IJ)V

    return-object p0
.end method

.method public add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;F)V

    return-object p0
.end method

.method public add(Lmiuix/animation/property/FloatProperty;FJ)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;FJ)V

    return-object p0
.end method

.method public add(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;I)V

    return-object p0
.end method

.method public add(Lmiuix/animation/property/FloatProperty;IJ)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;IJ)V

    return-object p0
.end method

.method public varargs addConfig(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public addInitProperty(Ljava/lang/String;F)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Ljava/lang/String;F)V

    return-object p0
.end method

.method public addInitProperty(Ljava/lang/String;I)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Ljava/lang/String;I)V

    return-object p0
.end method

.method public addInitProperty(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Lmiuix/animation/property/FloatProperty;F)V

    return-object p0
.end method

.method public addInitProperty(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Lmiuix/animation/property/FloatProperty;I)V

    return-object p0
.end method

.method public addListener(Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->addListener(Lmiuix/animation/listener/TransitionListener;)V

    return-object p0
.end method

.method public addState(Lmiuix/animation/controller/AnimState;)V
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->addState(Lmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method public varargs autoSetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 0

    return-object p0
.end method

.method public cancel()V
    .locals 3

    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/internal/AnimRunner;->cancel(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method

.method public varargs cancel([Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    array-length v1, p1

    if-eqz v1, :cond_1

    instance-of v0, v0, Lmiuix/animation/ValueTarget;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1, p1}, Lmiuix/animation/internal/AnimRunner;->cancel(Lmiuix/animation/IAnimTarget;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs cancel([Lmiuix/animation/property/FloatProperty;)V
    .locals 2

    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1, p1}, Lmiuix/animation/internal/AnimRunner;->cancel(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method

.method public clean()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->cancel()V

    return-void
.end method

.method public enableDefaultAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeState;->mEnableAnim:Z

    return-void
.end method

.method public varargs end([Ljava/lang/Object;)V
    .locals 3

    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    instance-of v1, v1, Lmiuix/animation/property/FloatProperty;

    if-eqz v1, :cond_0

    array-length v1, p1

    new-array v1, v1, [Lmiuix/animation/property/FloatProperty;

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object p1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p1, v0, v1}, Lmiuix/animation/internal/AnimRunner;->end(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V

    goto :goto_0

    :cond_0
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object p1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p1, v0, v1}, Lmiuix/animation/internal/AnimRunner;->end(Lmiuix/animation/IAnimTarget;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 6

    invoke-direct {p0}, Lmiuix/animation/controller/FolmeState;->getConfigLink()Lmiuix/animation/base/AnimConfigLink;

    move-result-object v0

    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p3, v3

    new-array v5, v2, [Z

    invoke-virtual {v0, v4, v5}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;[Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lmiuix/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentState()Lmiuix/animation/controller/AnimState;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    return-object v0
.end method

.method public getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    return-object p1
.end method

.method public getTarget()Lmiuix/animation/IAnimTarget;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    return-object v0
.end method

.method public varargs predictDuration([Ljava/lang/Object;)J
    .locals 4

    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-direct {p0}, Lmiuix/animation/controller/FolmeState;->getConfigLink()Lmiuix/animation/base/AnimConfigLink;

    move-result-object v1

    iget-object v2, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v2, v0, v1, p1}, Lmiuix/animation/controller/StateManager;->getToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Lmiuix/animation/internal/PredictTask;->predictDuration(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)J

    move-result-wide v2

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->clearTempState(Lmiuix/animation/controller/AnimState;)V

    invoke-virtual {v1}, Lmiuix/animation/base/AnimConfigLink;->clear()V

    return-wide v2
.end method

.method public removeListener(Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->removeListener(Lmiuix/animation/listener/TransitionListener;)V

    return-object p0
.end method

.method public set(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->setup(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public varargs setConfig(Lmiuix/animation/base/AnimConfig;[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public varargs setEase(I[F)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->setEase(I[F)V

    return-object p0
.end method

.method public varargs setEase(Lmiuix/animation/property/FloatProperty;I[F)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/animation/controller/StateManager;->setEase(Lmiuix/animation/property/FloatProperty;I[F)V

    return-object p0
.end method

.method public varargs setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;[Lmiuix/animation/property/FloatProperty;)V

    return-object p0
.end method

.method public setFlags(J)Lmiuix/animation/IStateStyle;
    .locals 1

    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/IAnimTarget;->setFlags(J)V

    return-object p0
.end method

.method public setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0, p1, v0}, Lmiuix/animation/controller/FolmeState;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 0

    invoke-static {p2}, Lmiuix/animation/base/AnimConfigLink;->linkConfig([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/base/AnimConfigLink;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeState;->setTo(Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 3

    invoke-direct {p0}, Lmiuix/animation/controller/FolmeState;->getConfigLink()Lmiuix/animation/base/AnimConfigLink;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lmiuix/animation/controller/StateManager;->getSetToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lmiuix/animation/controller/FolmeState;->setTo(Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method public varargs setTransitionFlags(J[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;
    .locals 2

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lmiuix/animation/controller/StateManager;->setTransitionFlags(Ljava/lang/Object;J[Lmiuix/animation/property/FloatProperty;)V

    return-object p0
.end method

.method public setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->setup(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public varargs then(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 3

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lmiuix/animation/controller/StateManager;->setStateFlags(Ljava/lang/Object;J)V

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/controller/FolmeState;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs then([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 3

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    const-wide/16 v1, 0x1

    iput-wide v1, p1, Lmiuix/animation/controller/AnimState;->flags:J

    const/4 v1, 0x1

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Lmiuix/animation/controller/FolmeState;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 3

    instance-of v0, p1, Lmiuix/animation/controller/AnimState;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->hasState(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    array-length v2, p2

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    invoke-static {p2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v2}, Lmiuix/animation/controller/FolmeState;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeState;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 3

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    invoke-direct {p0}, Lmiuix/animation/controller/FolmeState;->getConfigLink()Lmiuix/animation/base/AnimConfigLink;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lmiuix/animation/controller/StateManager;->getToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lmiuix/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 1

    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lmiuix/animation/controller/FolmeState;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method
