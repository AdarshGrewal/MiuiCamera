.class public abstract Lmiuix/animation/controller/FolmeBase;
.super Ljava/lang/Object;
.source "FolmeBase.java"

# interfaces
.implements Lmiuix/animation/IStateContainer;


# instance fields
.field public mState:Lmiuix/animation/controller/IFolmeStateStyle;


# direct methods
.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lmiuix/animation/controller/StateComposer;->composeStyle([Lmiuix/animation/IAnimTarget;)Lmiuix/animation/controller/IFolmeStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    return-void
.end method


# virtual methods
.method public varargs addConfig(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lmiuix/animation/IStateContainer;->addConfig(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :cond_0
    return-void
.end method

.method public varargs cancel([Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs cancel([Lmiuix/animation/property/FloatProperty;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    :cond_0
    return-void
.end method

.method public clean()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    :cond_0
    return-void
.end method

.method public enableDefaultAnim(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lmiuix/animation/IStateContainer;->enableDefaultAnim(Z)V

    :cond_0
    return-void
.end method

.method public varargs end([Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
