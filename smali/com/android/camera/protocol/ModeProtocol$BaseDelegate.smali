.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BaseDelegate"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xa0


# virtual methods
.method public varargs abstract delegateEvent(I[I)V
.end method

.method public abstract delegateMode(Lio/reactivex/Completable;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/CompositeDisposable;
.end method

.method public abstract getActiveFragment(I)I
.end method

.method public abstract getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;
.end method

.method public abstract getOriginalFragment(I)I
.end method

.method public abstract getStoredFragment(I)I
.end method

.method public abstract init(Landroidx/fragment/app/FragmentManager;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
.end method

.method public abstract updateCurrentFragments(III)V
.end method
