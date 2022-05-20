.class public Lcom/android/camera/animation/folme/FolmeTranslateYOnSubscribe;
.super Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;
.source "FolmeTranslateYOnSubscribe.java"


# instance fields
.field public mDistanceY:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;-><init>(Landroid/view/View;)V

    .line 2
    iput p2, p0, Lcom/android/camera/animation/folme/FolmeTranslateYOnSubscribe;->mDistanceY:I

    return-void
.end method

.method public static directSetResult(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    int-to-float p1, p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

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

.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->subscribe(Lio/reactivex/CompletableEmitter;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->mAniView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string v1, "TransY to"

    invoke-direct {p1, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    iget v2, p0, Lcom/android/camera/animation/folme/FolmeTranslateYOnSubscribe;->mDistanceY:I

    int-to-double v2, v2

    .line 4
    invoke-virtual {p1, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    .line 5
    iget-object v3, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->mAniView:Landroid/view/View;

    aput-object v3, v2, v0

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->getAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-interface {v2, p1, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method
