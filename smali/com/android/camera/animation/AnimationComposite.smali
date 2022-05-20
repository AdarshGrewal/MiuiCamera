.class public Lcom/android/camera/animation/AnimationComposite;
.super Ljava/lang/Object;
.source "AnimationComposite.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AnimationComposite"


# instance fields
.field public mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

.field public mAfterFrameArrivedEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mAnimationDisposable:Lio/reactivex/disposables/Disposable;

.field public mCurrentDegree:I

.field public mOrientation:I

.field public mResourceSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/animation/AnimationDelegate$AnimationResource;",
            ">;"
        }
    .end annotation
.end field

.field public mRotationAnimator:Landroid/animation/ValueAnimator;

.field public mSupportScreenOrientation:Z

.field public mTargetDegree:I

.field public mTargetScreenOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    .line 5
    iput v0, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    .line 7
    new-instance v0, Lcom/android/camera/animation/AnimationComposite$1;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/AnimationComposite$1;-><init>(Lcom/android/camera/animation/AnimationComposite;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 8
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/animation/AnimationComposite;Lio/reactivex/ObservableEmitter;)Lio/reactivex/ObservableEmitter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedEmitter:Lio/reactivex/ObservableEmitter;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/camera/animation/AnimationComposite;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    return p0
.end method

.method public static synthetic access$102(Lcom/android/camera/animation/AnimationComposite;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    return p1
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "AnimationComposite"

    const-string v0, "not active, skip notifyAfterFrameAvailable"

    .line 3
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setRetriedIfCameraError(Z)V

    const/4 v0, 0x1

    move v2, v0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 6
    iget-object v3, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    .line 7
    invoke-interface {v3}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {v3}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->isEnableClick()Z

    move-result v4

    if-nez v4, :cond_2

    .line 9
    invoke-interface {v3, v0}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->setClickEnable(Z)V

    .line 10
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->notifyAfterFrameAvailable(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->notifyAfterFrameAvailable(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/animation/AnimationComposite;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3
    iput-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/Emitter;->onComplete()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 7
    iput-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public dispose(Lio/reactivex/Completable;Lio/reactivex/functions/Action;Lcom/android/camera/module/loader/StartControl;)Lio/reactivex/disposables/Disposable;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget p1, p3, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    .line 4
    iget v1, p3, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    .line 5
    iget-object v2, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 6
    iget p3, p3, Lcom/android/camera/module/loader/StartControl;->mViewConfigType:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p3, v5, :cond_6

    const/4 v5, 0x2

    if-eq p3, v5, :cond_4

    const/4 v5, 0x3

    if-eq p3, v5, :cond_1

    goto :goto_6

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge v4, p3, :cond_8

    .line 8
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    .line 9
    invoke-interface {p3}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p3}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->needViewClear()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {p3, p1, v3, v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->provideAnimateElement(ILjava/util/List;I)V

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_4
    :goto_2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge v4, p3, :cond_8

    .line 12
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    .line 13
    invoke-interface {p3}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    invoke-interface {p3, p1, v0, v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->provideAnimateElement(ILjava/util/List;I)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 15
    :cond_6
    :goto_4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge v4, p3, :cond_8

    .line 16
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    .line 17
    invoke-interface {p3}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_5

    .line 18
    :cond_7
    invoke-interface {p3, p1, v3, v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->provideAnimateElement(ILjava/util/List;I)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 19
    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_9

    .line 20
    iget-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_9
    if-eqz p2, :cond_a

    .line 21
    invoke-static {v0}, Lio/reactivex/Completable;->merge(Ljava/lang/Iterable;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    goto :goto_7

    .line 22
    :cond_a
    invoke-static {v0}, Lio/reactivex/Completable;->merge(Ljava/lang/Iterable;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    .line 23
    :goto_7
    iget-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method public disposeRotation(IZI)V
    .locals 9

    const/16 v0, 0x168

    if-ltz p1, :cond_0

    .line 1
    rem-int/2addr p1, v0

    goto :goto_0

    :cond_0
    rem-int/2addr p1, v0

    add-int/2addr p1, v0

    .line 2
    :goto_0
    iget v1, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    if-ne v1, p1, :cond_1

    return-void

    .line 3
    :cond_1
    iput-boolean p2, p0, Lcom/android/camera/animation/AnimationComposite;->mSupportScreenOrientation:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v4

    .line 4
    :goto_1
    iget v2, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    sub-int v2, p1, v2

    if-ltz v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit16 v2, v2, 0x168

    :goto_2
    const/16 v5, 0xb4

    if-le v2, v5, :cond_4

    add-int/lit16 v2, v2, -0x168

    :cond_4
    if-gtz v2, :cond_5

    move v2, v3

    goto :goto_3

    :cond_5
    move v2, v4

    .line 5
    :goto_3
    iput p1, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    .line 6
    iget v5, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_6

    .line 7
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    move v5, v3

    goto :goto_4

    :cond_7
    move v5, v4

    .line 8
    :goto_4
    iget v6, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    const-string v7, "AnimationComposite"

    if-nez v6, :cond_8

    if-eqz v5, :cond_8

    if-nez p2, :cond_8

    const-string p1, "disposeRotation, return"

    .line 9
    invoke-static {v7, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disposeRotation, target degree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int p1, p1, 0x168

    rem-int/2addr p1, v0

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", current degree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iput p1, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    .line 12
    iput p3, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetScreenOrientation:I

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move p3, v4

    .line 14
    :goto_5
    iget-object v5, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge p3, v5, :cond_b

    .line 15
    iget-object v5, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v5, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    .line 16
    invoke-interface {v5}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_6

    :cond_9
    if-eqz p2, :cond_a

    .line 17
    iget v6, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetScreenOrientation:I

    iget v8, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    invoke-interface {v5, v6, p1, v8}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->provideOrientationChanged(ILjava/util/List;I)V

    goto :goto_6

    .line 18
    :cond_a
    iget v6, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    invoke-interface {v5, p1, v6}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->provideRotateItem(Ljava/util/List;I)V

    :goto_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_b
    if-nez v1, :cond_d

    .line 19
    iget p2, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    iput p2, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 21
    iget p3, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    int-to-float p3, p3

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    goto :goto_7

    :cond_c
    return-void

    .line 22
    :cond_d
    iget-object p2, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_e

    .line 23
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    :cond_e
    iget p2, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    iget p3, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    if-ne p2, p3, :cond_f

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "disposeRotation, no need to run animator, current degree: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", target degree: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    if-eqz v2, :cond_12

    if-ne p2, v0, :cond_10

    move p2, v4

    .line 26
    :cond_10
    iget p3, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    if-nez p3, :cond_11

    goto :goto_8

    :cond_11
    move v0, p3

    goto :goto_8

    :cond_12
    if-nez p2, :cond_13

    move p2, v0

    .line 27
    :cond_13
    iget p3, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    if-ne p3, v0, :cond_11

    move v0, v4

    :goto_8
    const/4 p3, 0x2

    new-array p3, p3, [I

    aput p2, p3, v4

    aput v0, p3, v3

    .line 28
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    .line 29
    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    iget-object p2, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 31
    iget-object p2, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/camera/animation/AnimationComposite$2;

    invoke-direct {p3, p0, p1}, Lcom/android/camera/animation/AnimationComposite$2;-><init>(Lcom/android/camera/animation/AnimationComposite;Ljava/util/List;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public disposeThemeChanged(ILcom/android/camera/module/loader/StartControl;)V
    .locals 4

    .line 1
    iget p2, p2, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    .line 4
    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 6
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v1, p2, v2, p1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->notifyThemeChanged(ILjava/util/List;I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getScreenOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetScreenOrientation:I

    return v0
.end method

.method public getTargetDegree()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    return v0
.end method

.method public notifyAfterFirstFrameArrived(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedEmitter:Lio/reactivex/ObservableEmitter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    .line 3
    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->notifyDataChanged(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    .line 3
    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->isEnableClick()Z

    move-result v2

    if-eq v2, p1, :cond_1

    .line 5
    invoke-interface {v1, p1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->setClickEnable(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public supportScreenOrientation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/animation/AnimationComposite;->mSupportScreenOrientation:Z

    return v0
.end method
