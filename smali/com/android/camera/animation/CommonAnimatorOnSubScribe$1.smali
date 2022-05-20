.class public Lcom/android/camera/animation/CommonAnimatorOnSubScribe$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CommonAnimatorOnSubScribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/animation/CommonAnimatorOnSubScribe;->subscribe(Lio/reactivex/CompletableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/animation/CommonAnimatorOnSubScribe;

.field public final synthetic val$completableEmitter:Lio/reactivex/CompletableEmitter;


# direct methods
.method public constructor <init>(Lcom/android/camera/animation/CommonAnimatorOnSubScribe;Lio/reactivex/CompletableEmitter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/animation/CommonAnimatorOnSubScribe$1;->this$0:Lcom/android/camera/animation/CommonAnimatorOnSubScribe;

    iput-object p2, p0, Lcom/android/camera/animation/CommonAnimatorOnSubScribe$1;->val$completableEmitter:Lio/reactivex/CompletableEmitter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/animation/CommonAnimatorOnSubScribe$1;->this$0:Lcom/android/camera/animation/CommonAnimatorOnSubScribe;

    invoke-static {p1}, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;->access$000(Lcom/android/camera/animation/CommonAnimatorOnSubScribe;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/animation/CommonAnimatorOnSubScribe$1;->val$completableEmitter:Lio/reactivex/CompletableEmitter;

    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/animation/CommonAnimatorOnSubScribe$1;->this$0:Lcom/android/camera/animation/CommonAnimatorOnSubScribe;

    invoke-static {p1}, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;->access$000(Lcom/android/camera/animation/CommonAnimatorOnSubScribe;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/animation/CommonAnimatorOnSubScribe$1;->val$completableEmitter:Lio/reactivex/CompletableEmitter;

    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void
.end method
