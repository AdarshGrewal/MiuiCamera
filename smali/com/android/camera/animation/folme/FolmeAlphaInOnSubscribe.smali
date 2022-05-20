.class public Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;
.super Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;
.source "FolmeAlphaInOnSubscribe.java"


# instance fields
.field public srcAlpha:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;-><init>(Landroid/view/View;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 2
    iput p1, p0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->srcAlpha:F

    return-void
.end method

.method public static directSetResult(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 1
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    new-array v0, v0, [Landroid/view/View;

    aput-object p0, v0, v2

    .line 2
    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public clean(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IStateContainer;->clean()V

    return-void
.end method

.method public setStartAlpha(F)Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->srcAlpha:F

    return-object p0
.end method

.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->subscribe(Lio/reactivex/CompletableEmitter;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->mAniView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->clean(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->mAniView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget p1, p0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->srcAlpha:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    const/4 v1, 0x1

    if-lez p1, :cond_0

    .line 5
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v2, "start alpha"

    invoke-direct {p1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    iget v3, p0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->srcAlpha:F

    float-to-double v3, v3

    invoke-virtual {p1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 6
    new-instance v2, Lmiuix/animation/controller/AnimState;

    const-string v3, "end alpha"

    invoke-direct {v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    new-array v3, v1, [Landroid/view/View;

    .line 7
    iget-object v4, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->mAniView:Landroid/view/View;

    aput-object v4, v3, v0

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v3

    invoke-interface {v3, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->getAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    invoke-direct {v4, v5}, Lmiuix/animation/base/AnimConfig;-><init>(Lmiuix/animation/base/AnimConfig;)V

    const/16 v5, 0x10

    new-array v1, v1, [F

    const/high16 v6, 0x43960000    # 300.0f

    aput v6, v1, v0

    .line 8
    invoke-virtual {v4, v5, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v3, v0

    .line 9
    invoke-interface {p1, v2, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_0
    new-array p1, v1, [Landroid/view/View;

    .line 10
    iget-object v2, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->mAniView:Landroid/view/View;

    aput-object v2, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->getAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    :goto_0
    return-void
.end method
