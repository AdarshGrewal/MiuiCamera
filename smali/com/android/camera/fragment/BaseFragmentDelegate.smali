.class public Lcom/android/camera/fragment/BaseFragmentDelegate;
.super Ljava/lang/Object;
.source "BaseFragmentDelegate.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/BaseFragmentDelegate$FragmentInto;,
        Lcom/android/camera/fragment/BaseFragmentDelegate$ContainerType;
    }
.end annotation


# static fields
.field public static final BEAUTY_PANEL:I = 0x5

.field public static final BOTTOM_BAR:I = 0x4

.field public static final DUAL_CAMERA:I = 0xa

.field public static final FRAGMENT_AMBILIGHT:I = 0xfffff0

.field public static final FRAGMENT_ASD_WATERMARK:I = 0xffffc

.field public static final FRAGMENT_BASE_WATERMARK:I = 0xffff6

.field public static final FRAGMENT_BEAUTY:I = 0xfb

.field public static final FRAGMENT_BLANK_BEAUTY:I = 0xffa

.field public static final FRAGMENT_BLANK_DEFAULT:I = 0xe

.field public static final FRAGMENT_BOTTOM_ACTION:I = 0xf1

.field public static final FRAGMENT_BOTTOM_INTENT_DONE:I = 0xff3

.field public static final FRAGMENT_BOTTOM_MENU:I = 0xf5

.field public static final FRAGMENT_BOTTOM_POPUP_TIPS:I = 0xfff9

.field public static final FRAGMENT_CITY_WATERMARK:I = 0xffffd

.field public static final FRAGMENT_CLONE_GALLERY:I = 0xffff4

.field public static final FRAGMENT_CLONE_PROCESS:I = 0xffff3

.field public static final FRAGMENT_CLONE_USE_GUIDE:I = 0xffff5

.field public static final FRAGMENT_CUSTOM_TINT:I = 0xfff8

.field public static final FRAGMENT_DISPATCH:I = 0xd

.field public static final FRAGMENT_DOC_VIEW:I = 0xff9

.field public static final FRAGMENT_DOLLY_ZOOM_PROCESS:I = 0xfffffb

.field public static final FRAGMENT_DOLLY_ZOOM_USE_GUIDE:I = 0xfffffc

.field public static final FRAGMENT_DUAL_CAMERA_ADJUST:I = 0xff4

.field public static final FRAGMENT_DUAL_CAMERA_BOKEH_ADJUST:I = 0xffb

.field public static final FRAGMENT_DUAL_STEREO:I = 0xff5

.field public static final FRAGMENT_FAST_MOTION:I = 0xfffff1

.field public static final FRAGMENT_FAST_MOTION_EXTRA:I = 0xfffff2

.field public static final FRAGMENT_FAST_MOTION_PRO:I = 0xfffff6

.field public static final FRAGMENT_FESTIVAL_WATERMARK:I = 0xffffb

.field public static final FRAGMENT_FILM_DREAM_PROCESS:I = 0xfffff5

.field public static final FRAGMENT_FILM_GALLERY:I = 0xfffff3

.field public static final FRAGMENT_FILM_PREVIEW:I = 0xfffff4

.field public static final FRAGMENT_FILM_TIME_FREEZE:I = 0xfffff9

.field public static final FRAGMENT_FILTER:I = 0xfa

.field public static final FRAGMENT_GENERAL_WATERMARK:I = 0xffff7

.field public static final FRAGMENT_GIF:I = 0xfff4

.field public static final FRAGMENT_ID_CARD:I = 0xffff0

.field public static final FRAGMENT_INVALID:I = 0xf0

.field public static final FRAGMENT_LIGHTING:I = 0xff7

.field public static final FRAGMENT_LIGHTING_VIEW:I = 0xff8

.field public static final FRAGMENT_LIVE_REVIEW:I = 0xffff1

.field public static final FRAGMENT_MAIN_CONTENT:I = 0xf3

.field public static final FRAGMENT_MANUALLY_EXTRA:I = 0xfe

.field public static final FRAGMENT_MANUAL_PICTURE_STYLE:I = 0xfffffe

.field public static final FRAGMENT_MASTER_FILTER:I = 0xfffff7

.field public static final FRAGMENT_MENU_AI_WATER_MARK:I = 0xe1

.field public static final FRAGMENT_MENU_BEAUTY_SKIN_COLOR:I = 0xe6

.field public static final FRAGMENT_MENU_FAST_MOTION:I = 0xe4

.field public static final FRAGMENT_MENU_FAST_MOTION_PRO:I = 0xe5

.field public static final FRAGMENT_MENU_LIVE_SPEED:I = 0xe8

.field public static final FRAGMENT_MENU_MASTER_FILTER:I = 0xe2

.field public static final FRAGMENT_MENU_MIMOJI:I = 0xea

.field public static final FRAGMENT_MENU_PIC_STYLE:I = 0xe3

.field public static final FRAGMENT_MENU_PORTRAIT_LIGHTING:I = 0xe9

.field public static final FRAGMENT_MENU_SHINE:I = 0xe0

.field public static final FRAGMENT_MENU_VIDEO_SKY:I = 0xe7

.field public static final FRAGMENT_MIMOJI_EDIT:I = 0xfff1

.field public static final FRAGMENT_MIMOJI_EMOTICON:I = 0xfff2

.field public static final FRAGMENT_MIMOJI_LIST:I = 0xfff0

.field public static final FRAGMENT_MIMOJI_SCREEN:I = 0xfff3

.field public static final FRAGMENT_MODES_EDIT:I = 0xfff7

.field public static final FRAGMENT_MODES_MORE_NORMAL:I = 0xfff5

.field public static final FRAGMENT_MODES_MORE_POPUP:I = 0xfff6

.field public static final FRAGMENT_MODE_SELECT:I = 0xf2

.field public static final FRAGMENT_MODULE_CONTENT:I = 0xffff2

.field public static final FRAGMENT_PANORAMA:I = 0xff0

.field public static final FRAGMENT_POPUP_LIVE_SPEED:I = 0xffd

.field public static final FRAGMENT_POPUP_MANUALLY:I = 0xf7

.field public static final FRAGMENT_PRESENTATION_DISPLAY:I = 0xffffff1

.field public static final FRAGMENT_SCREEN_LIGHT:I = 0xff6

.field public static final FRAGMENT_SILHOUETTE_WATERMARK:I = 0xffff9

.field public static final FRAGMENT_SLOW_SHUTTER_USE_GUIDE:I = 0xfffffd

.field public static final FRAGMENT_SPOTS_WATERMARK:I = 0xffff8

.field public static final FRAGMENT_SUBTITLE:I = 0xfffe

.field public static final FRAGMENT_TEXT_WATERMARK:I = 0xffffa

.field public static final FRAGMENT_TIME_FREEZE_USE_GUIDE:I = 0xfffffa

.field public static final FRAGMENT_TOP_ALERT:I = 0xfd

.field public static final FRAGMENT_TOP_CONFIG:I = 0xf4

.field public static final FRAGMENT_VIDEO_SKY_LIST:I = 0xffffff

.field public static final FRAGMENT_VIDEO_SKY_PROCESS:I = 0xffffff0

.field public static final FRAGMENT_VV:I = 0xfffa

.field public static final FRAGMENT_VV_FEATURE:I = 0xfffff8

.field public static final FRAGMENT_VV_GALLERY:I = 0xfffb

.field public static final FRAGMENT_VV_PREVIEW:I = 0xfffc

.field public static final FRAGMENT_VV_PROCESS:I = 0xfffd

.field public static final FRAGMENT_WATERMARK:I = 0xffffe

.field public static final FRAGMENT_WIDESELFIE:I = 0xffe

.field public static final FRAGMENT_ZOOM_VIEW:I = 0xf6

.field public static final MAIN_CONTENT:I = 0x2

.field public static final MODE_SELECTOR:I = 0x3

.field public static final MODULE_CONTENT:I = 0x8

.field public static final MODULE_CONTENT_LOWER_LAYER:I = 0x7

.field public static final POPUP_TIPS:I = 0x9

.field public static final POST_VIEW:I = 0x6

.field public static final TAG:Ljava/lang/String; = "BaseFragmentDelegate"

.field public static final TOP_BAR:I = 0x1


# instance fields
.field public animationComposite:Lcom/android/camera/animation/AnimationComposite;

.field public currentFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mActivity:Lcom/android/camera/Camera;

.field public mBaseLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

.field public mLastFragmentAlias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;"
        }
    .end annotation
.end field

.field public mStoreFragments:Landroid/util/SparseIntArray;

.field public mSupportFragmentManager:Landroidx/fragment/app/FragmentManager;

.field public originalFragments:Landroid/util/SparseIntArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mSupportFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mBaseLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    .line 4
    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    .line 5
    new-instance p1, Lcom/android/camera/animation/AnimationComposite;

    invoke-direct {p1}, Lcom/android/camera/animation/AnimationComposite;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    .line 6
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeAlive()V

    return-void
.end method

.method private applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;",
            "Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_10

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/BaseFragmentOperation;

    .line 6
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v3

    .line 7
    iget v10, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    .line 8
    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingSubFragmentInfo:I

    .line 9
    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 10
    :pswitch_1
    iget-object v4, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v4, v3}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 11
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v4, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 13
    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 14
    :cond_2
    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    .line 15
    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 18
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 19
    :pswitch_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v4, :cond_3

    .line 20
    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 21
    :cond_3
    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-virtual {p0, v4, v3, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto :goto_0

    :pswitch_3
    if-eq v3, v10, :cond_4

    .line 22
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v4, :cond_4

    .line 23
    invoke-virtual {v4, v6}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 24
    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 25
    :cond_4
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    .line 26
    invoke-virtual {v4, v3}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 27
    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 28
    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 29
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-virtual {p0, v3, v10, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 30
    :pswitch_4
    iget-object v4, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_8

    .line 31
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v7

    .line 32
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_8

    .line 33
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v10, :cond_5

    goto :goto_3

    .line 34
    :cond_5
    iget-object v9, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v9, v8}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 35
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v9, :cond_7

    if-eq v8, v3, :cond_6

    .line 36
    invoke-virtual {v9, v6}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    goto :goto_2

    .line 37
    :cond_6
    invoke-virtual {v9, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 38
    :goto_2
    invoke-virtual {v1, v9}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 39
    :cond_8
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    if-nez v4, :cond_9

    .line 40
    sget-object v4, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "popup null, create new"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 41
    iget-object v7, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    move-object v4, p0

    move v6, v10

    move v8, v3

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v4

    .line 42
    :cond_9
    invoke-virtual {v4, v3}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 43
    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 44
    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 45
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-virtual {p0, v3, v10, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 46
    :pswitch_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v5, :cond_a

    .line 47
    invoke-virtual {v5, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 48
    invoke-virtual {v5, v10}, Lcom/android/camera/fragment/BaseFragment;->setNewFragmentInfo(I)V

    .line 49
    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 50
    :cond_a
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v5, :cond_b

    .line 51
    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_b
    const/16 v5, 0xf0

    if-eq v4, v5, :cond_c

    move v6, v4

    goto :goto_4

    :cond_c
    move v6, v10

    :goto_4
    const/4 v5, 0x0

    .line 52
    iget-object v7, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    move-object v4, p0

    move v8, v3

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    .line 53
    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v3, v5}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 54
    iget-object v4, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 55
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-virtual {p0, v3, v10, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 56
    :pswitch_6
    iget-object v4, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v4, v3}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 57
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v4, :cond_d

    .line 58
    invoke-virtual {v4, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 59
    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 60
    :cond_d
    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-virtual {p0, v4, v3, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 61
    :pswitch_7
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3, v10}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 62
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/BaseFragment;

    if-eqz v3, :cond_e

    .line 63
    invoke-virtual {v3, v7}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 64
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 65
    :cond_e
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-virtual {p0, v3, v10, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 66
    :pswitch_8
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v8

    .line 67
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3, v8}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    const/4 v5, 0x0

    .line 68
    iget-object v7, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    move-object v4, p0

    move v6, v10

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    .line 69
    iget v4, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v3, v5}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 70
    iget-object v4, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 71
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-virtual {p0, v3, v10, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 72
    :cond_f
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    .line 73
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "need operation info"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private constructBottomMenuFragment(I)Lcom/android/camera/fragment/BaseFragment;
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :pswitch_0
    new-instance v0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;-><init>(I)V

    .line 2
    new-instance p1, Lcom/android/camera/fragment/bottom/MimojiMenu;

    invoke-direct {p1}, Lcom/android/camera/fragment/bottom/MimojiMenu;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->init(Lcom/android/camera/fragment/bottom/AbBottomMenu;)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    new-instance v0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;-><init>(I)V

    .line 4
    new-instance p1, Lcom/android/camera/fragment/bottom/PortraitLightingMenu;

    invoke-direct {p1}, Lcom/android/camera/fragment/bottom/PortraitLightingMenu;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->init(Lcom/android/camera/fragment/bottom/AbBottomMenu;)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    new-instance v0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;-><init>(I)V

    .line 6
    new-instance p1, Lcom/android/camera/fragment/bottom/LiveSpeedMenu;

    invoke-direct {p1}, Lcom/android/camera/fragment/bottom/LiveSpeedMenu;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->init(Lcom/android/camera/fragment/bottom/AbBottomMenu;)V

    goto/16 :goto_0

    .line 7
    :pswitch_3
    new-instance v0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(I)V

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningVideoSky()Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->getDisplayTitleString()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto/16 :goto_0

    .line 10
    :pswitch_4
    new-instance v0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(I)V

    const p1, 0x7f120397

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_5
    new-instance v0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(I)V

    .line 13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionPro()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;->getDisplayTitleString()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto/16 :goto_0

    .line 15
    :pswitch_6
    new-instance v0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;-><init>(I)V

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotion()Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->getItems()Ljava/util/List;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->getCurrentType()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x2a2

    .line 19
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->init(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0

    .line 20
    :pswitch_7
    new-instance v0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(I)V

    .line 21
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningPictureStyle()Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;->getDisplayTitleString()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto :goto_0

    .line 23
    :pswitch_8
    new-instance v0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(I)V

    .line 24
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMasterFilter()Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;->getDisplayTitleString()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto :goto_0

    .line 26
    :pswitch_9
    new-instance v0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;-><init>(I)V

    .line 27
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getItems()Ljava/util/List;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getCurrentType()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0xfd

    .line 30
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->init(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0

    .line 31
    :pswitch_a
    new-instance v0, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;-><init>(I)V

    .line 32
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getItems()Ljava/util/List;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0xc2

    .line 35
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->init(Ljava/util/List;Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0xe0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructBottomMenuFragment(I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    const/16 v1, 0xd

    if-eq p2, v1, :cond_8

    const/16 v1, 0xe

    if-eq p2, v1, :cond_7

    const/16 v1, 0xf6

    if-eq p2, v1, :cond_6

    const/16 v1, 0xf7

    if-eq p2, v1, :cond_5

    const/16 v1, 0xffd

    if-eq p2, v1, :cond_4

    const/16 v1, 0xffe

    if-eq p2, v1, :cond_3

    packed-switch p2, :pswitch_data_0

    sparse-switch p2, :sswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    packed-switch p2, :pswitch_data_5

    if-eqz p3, :cond_9

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    goto/16 :goto_0

    .line 3
    :pswitch_0
    new-instance v0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;

    invoke-direct {v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;-><init>()V

    .line 4
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->supportScreenOrientation()Z

    move-result p2

    if-nez p2, :cond_9

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    new-instance v0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;

    invoke-direct {v0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;-><init>()V

    goto/16 :goto_0

    .line 7
    :pswitch_2
    new-instance v0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;

    invoke-direct {v0}, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;-><init>()V

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    new-instance v0, Lcom/android/camera/fragment/clone/FragmentCloneGallery;

    invoke-direct {v0}, Lcom/android/camera/fragment/clone/FragmentCloneGallery;-><init>()V

    goto/16 :goto_0

    .line 10
    :pswitch_4
    new-instance v0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;-><init>()V

    .line 11
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_5
    new-instance v0, Lcom/android/camera/fragment/FragmentModuleContent;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentModuleContent;-><init>()V

    goto/16 :goto_0

    .line 13
    :pswitch_6
    new-instance v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    invoke-direct {v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;-><init>()V

    .line 14
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->supportScreenOrientation()Z

    move-result p2

    if-nez p2, :cond_0

    .line 15
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getScreenOrientation()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setScreenOrientation(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_7
    new-instance v0, Lcom/android/camera/fragment/idcard/FragmentIDCard;

    invoke-direct {v0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;-><init>()V

    goto/16 :goto_0

    .line 18
    :pswitch_8
    new-instance v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-direct {v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;-><init>()V

    .line 19
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 20
    :pswitch_9
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;-><init>()V

    goto/16 :goto_0

    .line 21
    :pswitch_a
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;-><init>()V

    goto/16 :goto_0

    .line 22
    :pswitch_b
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVV;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/FragmentVV;-><init>()V

    goto/16 :goto_0

    .line 23
    :pswitch_c
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;-><init>()V

    goto/16 :goto_0

    .line 24
    :pswitch_d
    new-instance v0, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;

    invoke-direct {v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;-><init>()V

    goto/16 :goto_0

    .line 25
    :pswitch_e
    new-instance v0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-direct {v0}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;-><init>()V

    .line 26
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 27
    :pswitch_f
    new-instance v0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;

    invoke-direct {v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;-><init>()V

    .line 28
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 29
    :pswitch_10
    new-instance v0, Lcom/android/camera/features/gif/FragmentGifEdit;

    invoke-direct {v0}, Lcom/android/camera/features/gif/FragmentGifEdit;-><init>()V

    goto/16 :goto_0

    .line 30
    :pswitch_11
    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;-><init>()V

    goto/16 :goto_0

    .line 31
    :pswitch_12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result p2

    const/4 p3, 0x2

    if-le p2, p3, :cond_1

    .line 32
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;-><init>()V

    goto/16 :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;-><init>()V

    goto/16 :goto_0

    .line 34
    :sswitch_0
    new-instance v0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;-><init>()V

    .line 35
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 36
    :sswitch_1
    new-instance v0, Lcom/android/camera/fragment/FragmentVideoSky;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentVideoSky;-><init>()V

    .line 37
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_2
    new-instance v0, Lcom/android/camera/fragment/manually/FragmentManualPictureStyle;

    invoke-direct {v0}, Lcom/android/camera/fragment/manually/FragmentManualPictureStyle;-><init>()V

    .line 39
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->supportScreenOrientation()Z

    move-result p2

    if-nez p2, :cond_9

    .line 40
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 41
    :sswitch_3
    new-instance v0, Lcom/android/camera/fragment/clone/FragmentSlowShutterUseGuide;

    invoke-direct {v0}, Lcom/android/camera/fragment/clone/FragmentSlowShutterUseGuide;-><init>()V

    .line 42
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 43
    :sswitch_4
    new-instance v0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomUseGuide;

    invoke-direct {v0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomUseGuide;-><init>()V

    .line 44
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 45
    :sswitch_5
    new-instance v0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;-><init>()V

    .line 46
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 47
    :sswitch_6
    new-instance v0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeUseGuide;

    invoke-direct {v0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeUseGuide;-><init>()V

    .line 48
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 49
    :sswitch_7
    new-instance v0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;-><init>()V

    .line 50
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 51
    :sswitch_8
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVFeature;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/FragmentVVFeature;-><init>()V

    goto/16 :goto_0

    .line 52
    :sswitch_9
    new-instance v0, Lcom/android/camera/fragment/FragmentMasterFilter;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentMasterFilter;-><init>()V

    .line 53
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->supportScreenOrientation()Z

    move-result p2

    if-nez p2, :cond_9

    .line 54
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 55
    :sswitch_a
    new-instance v0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;

    invoke-direct {v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;-><init>()V

    .line 56
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->supportScreenOrientation()Z

    move-result p2

    if-nez p2, :cond_9

    .line 57
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 58
    :sswitch_b
    new-instance v0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;-><init>()V

    .line 59
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 60
    :sswitch_c
    new-instance v0, Lcom/android/camera/fragment/film/FragmentFilmGallery;

    invoke-direct {v0}, Lcom/android/camera/fragment/film/FragmentFilmGallery;-><init>()V

    goto/16 :goto_0

    .line 61
    :sswitch_d
    new-instance v0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;

    invoke-direct {v0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;-><init>()V

    .line 62
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->supportScreenOrientation()Z

    move-result p2

    if-nez p2, :cond_9

    .line 63
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 64
    :sswitch_e
    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;-><init>()V

    .line 65
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 66
    :sswitch_f
    new-instance v0, Lcom/android/camera/fragment/FragmentFNumberAdjust;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;-><init>()V

    goto/16 :goto_0

    .line 67
    :sswitch_10
    new-instance v0, Lcom/android/camera/fragment/beauty/FragmentBlankBeauty;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/FragmentBlankBeauty;-><init>()V

    goto/16 :goto_0

    .line 68
    :sswitch_11
    new-instance v0, Lcom/android/camera/fragment/FragmentDocView;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentDocView;-><init>()V

    goto/16 :goto_0

    .line 69
    :sswitch_12
    new-instance v0, Lcom/android/camera/fragment/lighting/FragmentLightView;

    invoke-direct {v0}, Lcom/android/camera/fragment/lighting/FragmentLightView;-><init>()V

    goto/16 :goto_0

    .line 70
    :sswitch_13
    new-instance v0, Lcom/android/camera/fragment/lighting/FragmentLighting;

    invoke-direct {v0}, Lcom/android/camera/fragment/lighting/FragmentLighting;-><init>()V

    .line 71
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->supportScreenOrientation()Z

    move-result p2

    if-nez p2, :cond_9

    .line 72
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_0

    .line 73
    :sswitch_14
    new-instance v0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-direct {v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;-><init>()V

    goto/16 :goto_0

    .line 74
    :sswitch_15
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualStereo;

    invoke-direct {v0}, Lcom/android/camera/fragment/dual/FragmentDualStereo;-><init>()V

    goto/16 :goto_0

    .line 75
    :sswitch_16
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-direct {v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;-><init>()V

    goto/16 :goto_0

    .line 76
    :sswitch_17
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomIntentDone;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;-><init>()V

    goto/16 :goto_0

    .line 77
    :sswitch_18
    new-instance v0, Lcom/android/camera/fragment/FragmentPanorama;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentPanorama;-><init>()V

    goto/16 :goto_0

    .line 78
    :sswitch_19
    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBeauty;-><init>()V

    .line 79
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->supportScreenOrientation()Z

    move-result p2

    if-nez p2, :cond_2

    .line 80
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto :goto_0

    .line 81
    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getScreenOrientation()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setScreenOrientation(I)V

    goto :goto_0

    .line 82
    :pswitch_13
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-direct {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;-><init>()V

    goto :goto_0

    .line 83
    :pswitch_14
    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentMainContent;-><init>()V

    goto :goto_0

    .line 84
    :pswitch_15
    new-instance v0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;-><init>()V

    goto :goto_0

    .line 85
    :pswitch_16
    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-direct {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;-><init>()V

    goto :goto_0

    :pswitch_17
    const/4 p1, 0x0

    return-object p1

    .line 86
    :cond_3
    new-instance v0, Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentWideSelfie;-><init>()V

    .line 87
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto :goto_0

    .line 88
    :cond_4
    new-instance v0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;

    invoke-direct {v0}, Lcom/android/camera/fragment/live/FragmentLiveSpeed;-><init>()V

    .line 89
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->supportScreenOrientation()Z

    move-result p2

    if-nez p2, :cond_9

    .line 90
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto :goto_0

    .line 91
    :cond_5
    new-instance v0, Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-direct {v0}, Lcom/android/camera/fragment/manually/FragmentManually;-><init>()V

    goto :goto_0

    .line 92
    :cond_6
    new-instance v0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeselector/FragmentZoomView;-><init>()V

    goto :goto_0

    .line 93
    :cond_7
    new-instance v0, Lcom/android/camera/fragment/beauty/FragmentBlankDefault;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/FragmentBlankDefault;-><init>()V

    goto :goto_0

    .line 94
    :cond_8
    new-instance v0, Lcom/android/camera/fragment/DispatchFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/DispatchFragment;-><init>()V

    .line 95
    :cond_9
    :goto_0
    invoke-direct {p0, v0, p1, p4, p5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->inceptFragment(Lcom/android/camera/fragment/BaseFragment;ZILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0xf0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xfb -> :sswitch_19
        0xff0 -> :sswitch_18
        0xff3 -> :sswitch_17
        0xff4 -> :sswitch_16
        0xff5 -> :sswitch_15
        0xff6 -> :sswitch_14
        0xff7 -> :sswitch_13
        0xff8 -> :sswitch_12
        0xff9 -> :sswitch_11
        0xffa -> :sswitch_10
        0xffb -> :sswitch_f
        0xfff0 -> :sswitch_e
        0xffffe -> :sswitch_d
        0xfffff3 -> :sswitch_c
        0xfffff5 -> :sswitch_b
        0xfffff6 -> :sswitch_a
        0xfffff7 -> :sswitch_9
        0xfffff8 -> :sswitch_8
        0xfffff9 -> :sswitch_7
        0xfffffa -> :sswitch_6
        0xfffffb -> :sswitch_5
        0xfffffc -> :sswitch_4
        0xfffffd -> :sswitch_3
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0xffffff0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0xfff2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xfff9
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xfffd
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xffff0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xfffff0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getViewContainer(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid view container type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p0, 0x7f0a009b

    goto :goto_0

    :pswitch_1
    const p0, 0x7f0a009c

    goto :goto_0

    :pswitch_2
    const p0, 0x7f0a02af

    goto :goto_0

    :pswitch_3
    const p0, 0x7f0a02b0

    goto :goto_0

    :pswitch_4
    const p0, 0x7f0a01a6

    goto :goto_0

    :pswitch_5
    const p0, 0x7f0a0094

    goto :goto_0

    :pswitch_6
    const p0, 0x7f0a0093

    goto :goto_0

    :pswitch_7
    const p0, 0x7f0a02a9

    goto :goto_0

    :pswitch_8
    const p0, 0x7f0a0252

    goto :goto_0

    :pswitch_9
    const p0, 0x7f0a0254

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private inceptFragment(Lcom/android/camera/fragment/BaseFragment;ZILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/BaseFragment;->setAppController(Lcom/android/camera/AppController;)V

    .line 2
    invoke-virtual {p1, p3}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 3
    invoke-virtual {p1, p4}, Lcom/android/camera/fragment/BaseFragment;->setLifecycleListener(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    xor-int/lit8 p2, p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragment;->setEnableClickInitValue(Z)V

    return-void
.end method

.method private initCurrentFragments(Landroid/util/SparseIntArray;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 2
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private popStoredFragment(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Landroid/util/SparseIntArray;

    const/16 v1, 0xf0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return v0
.end method

.method private storeFragmentInfo(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Landroid/util/SparseIntArray;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method


# virtual methods
.method public batchFragmentRequest(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->resetFeatureFragment(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/BaseFragmentOperation;

    .line 4
    iget v4, v3, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    :cond_2
    iget v4, v3, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    .line 5
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v4

    iget v5, v3, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    if-ne v4, v5, :cond_3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 9
    :cond_6
    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/List;

    return-void
.end method

.method public varargs delegateEvent(I[I)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/16 v2, 0xf2

    const/4 v3, 0x3

    if-eq p1, v1, :cond_26

    const/4 v1, 0x2

    const/4 v4, 0x5

    if-eq p1, v1, :cond_24

    if-eq p1, v3, :cond_22

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x6

    const/16 v1, 0xf1

    const v3, 0x7f0a02a9

    const v5, 0x7f0a009b

    const v6, 0x7f0a0093

    if-eq p1, p2, :cond_1b

    const/4 p2, 0x7

    const v7, 0xfffa

    const v8, 0x7f0a01a6

    if-eq p1, p2, :cond_19

    const/16 p2, 0xa

    if-eq p1, p2, :cond_17

    const/16 p2, 0xb

    if-eq p1, p2, :cond_15

    const/16 p2, 0x17

    if-eq p1, p2, :cond_13

    const/16 p2, 0x1e

    if-eq p1, p2, :cond_11

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 2
    :pswitch_0
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xffffff

    if-eq p1, p2, :cond_0

    .line 3
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xffffff

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 5
    :pswitch_1
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffffe

    if-eq p1, p2, :cond_1

    .line 6
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffffe

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 8
    :pswitch_2
    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffffc

    if-eq p1, p2, :cond_2

    .line 9
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffffc

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 10
    :cond_2
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffffb

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 11
    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffffa

    if-eq p1, p2, :cond_3

    .line 12
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffffa

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 13
    :cond_3
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffff9

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 14
    :pswitch_4
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffff7

    if-eq p1, p2, :cond_4

    .line 15
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffff7

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 16
    :cond_4
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17
    :pswitch_5
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffff6

    if-eq p1, p2, :cond_5

    .line 18
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffff6

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 19
    :cond_5
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 20
    :pswitch_6
    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffffd

    if-eq p1, p2, :cond_6

    .line 21
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffffd

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 22
    :cond_6
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 23
    :pswitch_7
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffff1

    if-eq p1, p2, :cond_7

    .line 24
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffff1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 25
    :cond_7
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 26
    :pswitch_8
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xff7

    if-eq p1, p2, :cond_8

    .line 27
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 p2, 0xff7

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 28
    :cond_8
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 29
    :pswitch_9
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xffffe

    if-eq p1, p2, :cond_9

    .line 30
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xffffe

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 31
    :cond_9
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_a
    const p1, 0x7f0a019d

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p2

    const v1, 0xfff4

    if-eq p2, v1, :cond_a

    .line 33
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 34
    :cond_a
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_b
    const p1, 0x7f0a019c

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p2

    const v1, 0xfff2

    if-eq p2, v1, :cond_b

    .line 36
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 37
    :cond_b
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 38
    :pswitch_c
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    if-eq p1, v7, :cond_c

    .line 39
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 41
    :cond_c
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000O()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000Oo()Z

    move-result p1

    if-nez p1, :cond_d

    sget-boolean p1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz p1, :cond_e

    .line 42
    :cond_d
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_e
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 p2, 0xff6

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 44
    :pswitch_d
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfff0

    if-eq p1, p2, :cond_f

    .line 45
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 46
    :cond_f
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 47
    :pswitch_e
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xffd

    if-eq p1, p2, :cond_10

    .line 48
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 49
    :cond_10
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    const/16 p1, 0x8

    .line 50
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p2

    const v1, 0xfff5

    if-eq p2, v1, :cond_12

    .line 51
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfff5

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 52
    :cond_12
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 53
    :cond_13
    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xffff5

    if-eq p1, p2, :cond_14

    .line 54
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xffff5

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 55
    :cond_14
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xffff3

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 56
    :cond_15
    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xffff1

    if-eq p1, p2, :cond_16

    .line 57
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 58
    :cond_16
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 59
    :cond_17
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xffa

    if-eq p1, p2, :cond_18

    .line 60
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 61
    :cond_18
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 62
    :cond_19
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    if-ne p1, v7, :cond_1a

    const/16 p1, 0xf

    const/4 p2, 0x0

    new-array p2, p2, [I

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateEvent(I[I)V

    return-void

    :cond_1a
    if-eq p1, v1, :cond_27

    .line 64
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 67
    :cond_1b
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xff3

    const v2, 0x7f0a0254

    if-eq p1, p2, :cond_1d

    .line 68
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xf0

    if-eq p1, p2, :cond_1c

    .line 72
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->storeFragmentInfo(II)V

    .line 73
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    const p1, 0x7f0a009c

    .line 74
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 76
    :cond_1d
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->popStoredFragment(I)I

    move-result p1

    const/16 p2, 0xf0

    if-eq p1, p2, :cond_1e

    .line 80
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p2

    invoke-static {p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    const p1, 0x7f0a009c

    .line 81
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfff9

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000O()Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000Oo()Z

    move-result p1

    if-nez p1, :cond_1f

    sget-boolean p1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz p1, :cond_27

    .line 83
    :cond_1f
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 84
    :cond_20
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xf6

    if-eq p1, p2, :cond_21

    .line 85
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 86
    :cond_21
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pop()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 87
    :cond_22
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    .line 88
    array-length v1, p2

    if-lez v1, :cond_23

    .line 89
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xf5

    const/4 v2, 0x0

    aget p2, p2, v2

    invoke-virtual {p1, v1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(II)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_23
    const/16 p2, 0xf5

    if-ne p1, p2, :cond_27

    .line 90
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pop()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_24
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xfb

    if-eq p1, p2, :cond_25

    .line 92
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_25
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_26
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    if-eq p1, v2, :cond_27

    .line 95
    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_27
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_28

    return-void

    :cond_28
    const/4 p1, 0x0

    .line 97
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x21
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delegateMode(Lio/reactivex/Completable;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    const-string p2, "delegateMode fail because mActivity is null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-eqz p3, :cond_1

    .line 3
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooO00o;

    invoke-direct {v0, p3}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooO00o;-><init>(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 4
    :goto_0
    new-instance v2, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v2}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 7
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p1, v1, v1, p2}, Lcom/android/camera/animation/AnimationComposite;->dispose(Lio/reactivex/Completable;Lio/reactivex/functions/Action;Lcom/android/camera/module/loader/StartControl;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-object v2
.end method

.method public getActiveFragment(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/16 p1, 0xf0

    return p1
.end method

.method public getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    return-object v0
.end method

.method public getOriginalFragment(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const/16 v1, 0xf0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public getStoredFragment(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mStoreFragments:Landroid/util/SparseIntArray;

    const/16 v1, 0xf0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    :goto_0
    return v1
.end method

.method public init(Landroidx/fragment/app/FragmentManager;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 16

    move-object/from16 v6, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->registerProtocol()V

    move-object/from16 v7, p1

    .line 2
    iput-object v7, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mSupportFragmentManager:Landroidx/fragment/app/FragmentManager;

    move-object/from16 v8, p3

    .line 3
    iput-object v8, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->mBaseLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    const/4 v1, 0x1

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/16 v4, 0xf0

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v9

    const/16 v2, 0xf4

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v10

    const/16 v2, 0xf1

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v11

    const/16 v2, 0xf3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v12

    const/16 v2, 0xf2

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v13

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    .line 10
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v1, v9}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 11
    invoke-virtual {v9}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 12
    invoke-virtual {v11}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    const v9, 0x7f0a0093

    invoke-virtual {v7, v9, v11, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 13
    invoke-virtual {v10}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    const v14, 0x7f0a0254

    invoke-virtual {v7, v14, v10, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 14
    invoke-virtual {v12}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    const v15, 0x7f0a0252

    invoke-virtual {v7, v15, v12, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 15
    invoke-virtual {v13}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f0a02a9

    invoke-virtual {v7, v5, v13, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 16
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000O()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000Oo()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/16 v2, 0xff5

    const/4 v3, 0x0

    const/16 v4, 0xf0

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0xff4

    const/4 v3, 0x0

    const/16 v4, 0xf0

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    :goto_1
    const v1, 0x7f0a009b

    const/16 v2, 0xf0

    if-eqz v0, :cond_3

    .line 20
    iget-object v3, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    iget-object v3, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 22
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_2

    .line 23
    :cond_3
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    :goto_2
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v14, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v15, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    const v3, 0x7f0a02a9

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v1, 0x7f0a009c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0094

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v1, 0x7f0a01a6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v10}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v1, v10}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 33
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v12}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v1, v12}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 34
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v11}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v1, v11}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 35
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v13}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v1

    invoke-virtual {v0, v1, v13}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 36
    iget-object v0, v6, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-direct {v6, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->initCurrentFragments(Landroid/util/SparseIntArray;)V

    .line 37
    invoke-virtual {v7}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 38
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeAlive()V

    return-void
.end method

.method public lazyLoadFragment(II)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mSupportFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xf0

    .line 3
    iget-object v6, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mBaseLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 7
    invoke-virtual {p2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result p2

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public resetFeatureFragment(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/BaseFragmentOperation;

    .line 3
    iget v4, v3, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    .line 4
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v5

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/fragment/BaseFragmentOperation;

    .line 6
    invoke-virtual {v8, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->saveWith(Lcom/android/camera/fragment/BaseFragmentOperation;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    :cond_2
    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    const/16 v3, 0xf0

    if-ne v5, v3, :cond_5

    .line 8
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v3

    const/16 v4, 0xffa

    invoke-virtual {v3, v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_5
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_6
    iput-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/List;

    return-object v2
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->resetFeatureFragment(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/animation/AnimationComposite;->destroy()V

    .line 6
    iput-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    return-void
.end method

.method public updateCurrentFragments(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    .line 2
    :goto_0
    :pswitch_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_a

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :goto_1
    :pswitch_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_a

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_2

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :goto_2
    :pswitch_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_4

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_3

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 11
    :cond_4
    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 12
    :pswitch_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 14
    :goto_4
    :pswitch_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_5

    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 16
    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 17
    :goto_5
    :pswitch_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_a

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_7

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 20
    :goto_6
    :pswitch_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_a

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_8

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :pswitch_8
    if-nez v0, :cond_9

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    .line 25
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    :goto_7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
