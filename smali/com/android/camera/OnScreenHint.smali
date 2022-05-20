.class public Lcom/android/camera/OnScreenHint;
.super Ljava/lang/Object;
.source "OnScreenHint.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "OnScreenHint"


# instance fields
.field public mHintView:Landroid/view/ViewGroup;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/OnScreenHint;->mHintView:Landroid/view/ViewGroup;

    return-void
.end method

.method public static synthetic OooO00o(Landroid/app/Activity;Lio/reactivex/SingleEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x7f0a02db

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 24
    invoke-interface {p1, p0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x8

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;Ljava/lang/CharSequence;Landroid/app/Activity;ILio/reactivex/SingleEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x7f0a02db

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result p1

    .line 4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/Util;->getCinematicMargin(I)I

    move-result v1

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v3

    const v4, 0x7f0707a4

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->getMarginEnd()I

    move-result p0

    add-int/2addr p0, v1

    .line 8
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p0, p1

    iput p0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    invoke-static {p1}, Lcom/android/camera/module/ModuleManager;->isLeftLandscapeMode(I)Z

    move-result v3

    const v6, 0x7f0a02dc

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initLandscapeTopTipLayout(Landroid/view/View;II)V

    .line 12
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v1, p0

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {p1}, Lcom/android/camera/module/ModuleManager;->isBothLandscapeMode(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initLandscapeTopTipLayout(Landroid/view/View;II)V

    .line 15
    invoke-static {p3}, Lcom/android/camera/fragment/BaseFragment;->isLeftBothLandScape(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 16
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v1, p0

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 17
    :cond_2
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p2, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initPortraitTopTipLayout(Landroid/view/View;)V

    .line 19
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 20
    :cond_4
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x1

    new-array p1, p0, [Landroid/view/View;

    aput-object v0, p1, v5

    .line 21
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array p2, p0, [Lmiuix/animation/base/AnimConfig;

    new-instance p3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/16 v1, 0x10

    new-array p0, p0, [F

    const/high16 v2, 0x43960000    # 300.0f

    aput v2, p0, v5

    invoke-virtual {p3, v1, p0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, p2, v5

    invoke-interface {p1, p2}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    .line 22
    invoke-interface {p4, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public static hintTips(Landroid/app/Activity;)Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OooOOOo;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OooOOOo;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p0

    .line 2
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p0

    .line 3
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p0

    sget-object v0, LOooO00o/OooO0O0/OooO00o/OooOOOO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OooOOOO;

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0a036c

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f0a036d

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/camera/OnScreenHint;->inflate(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a02d9

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 3
    new-instance v0, Lcom/android/camera/OnScreenHint;

    invoke-direct {v0, p0}, Lcom/android/camera/OnScreenHint;-><init>(Landroid/view/ViewGroup;)V

    const v1, 0x7f0a0273

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static showTips(Landroid/app/Activity;Ljava/lang/CharSequence;JI)Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/OnScreenHint;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showTips = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/android/camera/OnScreenHint;->inflate(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 3
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OooOOo0;

    invoke-direct {v1, v0, p1, p0, p4}, LOooO00o/OooO0O0/OooO00o/OooOOo0;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Landroid/app/Activity;I)V

    invoke-static {v1}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {p0, p2, p3, p1}, Lio/reactivex/Single;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;

    move-result-object p0

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p0

    .line 6
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p0

    sget-object p1, LOooO00o/OooO0O0/OooO00o/Oooo00O;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo00O;

    .line 7
    invoke-virtual {p0, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mHintView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    return-void
.end method

.method public getHintViewVisibility()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mHintView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mHintView:Landroid/view/ViewGroup;

    const-string v1, "This OnScreenHint was not created with OnScreenHint.makeText()"

    if-eqz v0, :cond_1

    const v2, 0x7f0a0273

    .line 2
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public show()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/OnScreenHint;->mHintView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    return-void
.end method
