.class public Lcom/android/camera/animation/folme/FolmeRotateOnSubscribe;
.super Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;
.source "FolmeRotateOnSubscribe.java"


# instance fields
.field public mOriginDegree:I

.field public mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public clean(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    .line 1
    iget-object v0, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->mAniView:Landroid/view/View;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IStateContainer;->clean()V

    return-void
.end method

.method public setRotateDegree(II)Lcom/android/camera/animation/folme/FolmeRotateOnSubscribe;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/animation/folme/FolmeRotateOnSubscribe;->mOriginDegree:I

    .line 2
    iput p2, p0, Lcom/android/camera/animation/folme/FolmeRotateOnSubscribe;->mTargetDegree:I

    return-object p0
.end method

.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->subscribe(Lio/reactivex/CompletableEmitter;)V

    .line 2
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v0, "rotate from"

    invoke-direct {p1, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    iget v1, p0, Lcom/android/camera/animation/folme/FolmeRotateOnSubscribe;->mOriginDegree:I

    int-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 3
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v1, "rotate to"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    iget v2, p0, Lcom/android/camera/animation/folme/FolmeRotateOnSubscribe;->mTargetDegree:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    .line 4
    iget-object v3, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->mAniView:Landroid/view/View;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->getAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-interface {v2, p1, v0, v1}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method
