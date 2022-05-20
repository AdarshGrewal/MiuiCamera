.class public Lcom/android/camera/animation/folme/FolmeScaleOnSubScribe;
.super Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;
.source "FolmeScaleOnSubScribe.java"


# instance fields
.field public mOriginScale:F

.field public mTargetScale:F


# direct methods
.method public constructor <init>(Landroid/view/View;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;-><init>(Landroid/view/View;)V

    .line 2
    iput p2, p0, Lcom/android/camera/animation/folme/FolmeScaleOnSubScribe;->mOriginScale:F

    .line 3
    iput p3, p0, Lcom/android/camera/animation/folme/FolmeScaleOnSubScribe;->mTargetScale:F

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

    const-string v0, "Scale from"

    invoke-direct {p1, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    iget v1, p0, Lcom/android/camera/animation/folme/FolmeScaleOnSubScribe;->mOriginScale:F

    float-to-double v1, v1

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    iget v1, p0, Lcom/android/camera/animation/folme/FolmeScaleOnSubScribe;->mOriginScale:F

    float-to-double v1, v1

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 5
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "Scale to"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    iget v2, p0, Lcom/android/camera/animation/folme/FolmeScaleOnSubScribe;->mTargetScale:F

    float-to-double v2, v2

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    iget v2, p0, Lcom/android/camera/animation/folme/FolmeScaleOnSubScribe;->mTargetScale:F

    float-to-double v2, v2

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    .line 8
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
