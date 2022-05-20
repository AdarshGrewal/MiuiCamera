.class public Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolmeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/animation/FolmeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomTransitionListener"
.end annotation


# instance fields
.field public mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;->mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;->mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;->onStart()V

    :cond_0
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;->mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;->mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;->onEnd()V

    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;->mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p3}, Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;->onUpdate(F)V

    :cond_0
    return-void
.end method
