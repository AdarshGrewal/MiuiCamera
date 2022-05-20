.class public Lcom/android/camera/fragment/music/LiveMusicActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "LiveMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/music/LiveMusicActivity$Mp3DownloadCallback;
    }
.end annotation


# static fields
.field public static final LOCAL:I = 0x1

.field public static final ONLINE:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mOldOriginVolumeStream:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/music/LiveMusicActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/music/LiveMusicActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    const v0, 0x7f120478

    .line 2
    invoke-virtual {v6, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 3
    invoke-virtual {v6, p0}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;)V

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000O0()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemCloud()Lcom/android/camera/data/cloud/DataCloudItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/cloud/DataCloudItemFeature;->supportTMMusic()Z

    move-result v0

    .line 7
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    const v0, 0x7f12047e

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v6}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v2

    .line 10
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    const-class v3, Lcom/android/camera/fragment/music/FragmentLiveMusicOnline;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    :cond_2
    const v0, 0x7f12047f

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v6}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v2

    .line 14
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    const-class v3, Lcom/android/camera/fragment/music/FragmentLiveMusicLocal;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 16
    new-instance v0, Lcom/android/camera/fragment/music/LiveMusicActivity$1;

    invoke-direct {v0, p0, v7}, Lcom/android/camera/fragment/music/LiveMusicActivity$1;-><init>(Lcom/android/camera/fragment/music/LiveMusicActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Lmiuix/appcompat/app/ActionBar;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Lcom/android/camera/display/Display;->checkMultiWindowSupport(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/music/LiveMusicActivity;->mOldOriginVolumeStream:I

    const/4 p1, 0x3

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/music/LiveMusicActivity;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/music/LiveMusicActivity;->mOldOriginVolumeStream:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->resetTimeOut()V

    return-void
.end method
