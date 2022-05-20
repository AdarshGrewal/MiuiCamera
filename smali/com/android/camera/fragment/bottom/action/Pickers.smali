.class public Lcom/android/camera/fragment/bottom/action/Pickers;
.super Ljava/lang/Object;
.source "Pickers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/bottom/action/Pickers$LocationType;
    }
.end annotation


# static fields
.field public static final CAMERA_FACING:I = 0xc1

.field public static final DUAL_UP_DOWN:I = 0xc4

.field public static final HINT:I = 0xc9

.field public static final ID_CARD_MODE:I = 0xc8

.field public static final INVALID:I = 0xc0

.field public static final RECORD_REVERSE:I = 0xc7

.field public static final RECORD_SNAP:I = 0xc6

.field public static final TAG:Ljava/lang/String; = "Pickers"

.field public static final TARGET_SWITCH_CAPTURE:I = 0xc2

.field public static final TARGET_SWITCH_VIDEO:I = 0xc3


# instance fields
.field public mCurrentType:I

.field public mModulePersistentType:I

.field public mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mPickerParent:Landroid/view/ViewGroup;

.field public mScaleSize:F

.field public mUpDownAnimFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    const/16 v0, 0xc0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentType:I

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mModulePersistentType:I

    .line 5
    iput-object p2, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    .line 6
    iput-object p3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f0706fc

    const p3, 0x3eb33333    # 0.35f

    .line 7
    invoke-static {p1, p2, p3}, Lcom/android/camera/CameraSettings;->getResourceFloat(Landroid/content/Context;IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mScaleSize:F

    return-void
.end method


# virtual methods
.method public cancelCurrentAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o()V

    return-void
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentType:I

    return v0
.end method

.method public getLayout()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getModulePersistentType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mModulePersistentType:I

    return v0
.end method

.method public hide()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0xc0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    return-void
.end method

.method public loadByType(Ljava/util/List;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;ZI)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZIZ)V

    return-void
.end method

.method public loadByType(Ljava/util/List;ZIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;ZIZ)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p3, :cond_0

    if-nez p4, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0xc0

    if-eq p3, v1, :cond_1

    if-eqz v0, :cond_2

    .line 6
    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 7
    :cond_1
    iget-object p4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    :cond_2
    const v1, 0x7f120038

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    packed-switch p3, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v1, v2

    goto/16 :goto_3

    .line 8
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f12010e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    const v6, 0x7f080403

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    goto :goto_0

    .line 10
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f120081

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    const v6, 0x7f08042d

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    goto :goto_0

    .line 12
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1200b1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    const v6, 0x7f080429

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    goto :goto_0

    .line 14
    :pswitch_4
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f120050

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 15
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mScaleSize:F

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 16
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    if-eqz v1, :cond_3

    .line 17
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    const v6, 0x7f110006

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_1

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    const v6, 0x7f110005

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 19
    :goto_1
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_0

    :pswitch_5
    if-eqz v0, :cond_4

    .line 20
    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xc2

    if-ne v6, v7, :cond_4

    move-object p1, v3

    move p2, v5

    .line 21
    :cond_4
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 22
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mScaleSize:F

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 23
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v6

    const v7, 0x7f11004a

    invoke-virtual {v6, v7, v5}, Lcom/android/camera/customization/ThemeResource;->getResId(IZ)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 24
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto/16 :goto_0

    :pswitch_6
    if-eqz v0, :cond_5

    .line 25
    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_5

    move-object p1, v3

    move p2, v5

    .line 26
    :cond_5
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 27
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mScaleSize:F

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 28
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v6

    const v7, 0x7f110050

    invoke-virtual {v6, v7, v5}, Lcom/android/camera/customization/ThemeResource;->getResId(IZ)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 29
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto/16 :goto_0

    .line 30
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f120033

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 32
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f120630

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f12062e

    :goto_2
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    const v6, 0x7f080421

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 34
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v6

    const v7, 0x7f06034f

    invoke-virtual {v6, v7}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/16 :goto_0

    :pswitch_8
    move v1, v5

    .line 35
    :goto_3
    iput p3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentType:I

    .line 36
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v6, p3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    if-eqz v0, :cond_7

    .line 37
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/16 v0, 0xc9

    if-ne p3, v0, :cond_7

    goto :goto_4

    :cond_7
    move v2, v5

    :goto_4
    const/high16 p3, 0x3f000000    # 0.5f

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    move p3, v0

    .line 38
    :goto_5
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    if-ne p4, v0, :cond_9

    .line 39
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 40
    :cond_9
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x96

    if-eqz p1, :cond_a

    .line 41
    new-instance p2, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p2, p4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setStartAlpha(F)Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p2

    .line 42
    invoke-virtual {p2, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p2

    .line 43
    invoke-static {p2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    if-eqz p2, :cond_b

    .line 44
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p1, p4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setStartAlpha(F)Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    .line 46
    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_6

    .line 48
    :cond_b
    invoke-static {p4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_6

    :cond_c
    if-eqz v2, :cond_d

    move v4, p3

    :cond_d
    if-eqz p1, :cond_e

    .line 49
    new-instance p2, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p2, p4}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v4}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->setStartAlpha(F)Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    move-result-object p2

    invoke-static {p2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    if-eqz p2, :cond_f

    .line 50
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p1, p4}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v4}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->setStartAlpha(F)Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_6

    .line 51
    :cond_f
    invoke-static {p4}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public playSwitchCaptureVideoAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    return-void
.end method

.method public playUpDownAnimation()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f110005

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f110006

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    :goto_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setClickabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

.method public setModulePersistentType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mModulePersistentType:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    return-void
.end method
