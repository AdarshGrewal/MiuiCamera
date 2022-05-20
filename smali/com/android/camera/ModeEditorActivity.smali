.class public Lcom/android/camera/ModeEditorActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ModeEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ModeEditorActivity$MyOrientationListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ModeEditor"


# instance fields
.field public mDisplayRotation:I

.field public mEditFragment:Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;

.field public mLocked:Z

.field public mMyOrientationListener:Lcom/android/camera/ModeEditorActivity$MyOrientationListener;

.field public mOrientation:I

.field public mOrientationCompensation:I

.field public mRootView:Landroid/view/View;

.field public mSupportOrientation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ModeEditorActivity;->mLocked:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ModeEditorActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ModeEditorActivity;->mSupportOrientation:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/ModeEditorActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ModeEditorActivity;->mOrientation:I

    return p0
.end method

.method public static synthetic access$102(Lcom/android/camera/ModeEditorActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ModeEditorActivity;->mOrientation:I

    return p1
.end method

.method public static synthetic access$200(Lcom/android/camera/ModeEditorActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ModeEditorActivity;->mDisplayRotation:I

    return p0
.end method

.method public static synthetic access$202(Lcom/android/camera/ModeEditorActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ModeEditorActivity;->mDisplayRotation:I

    return p1
.end method

.method public static synthetic access$300(Lcom/android/camera/ModeEditorActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ModeEditorActivity;->mOrientationCompensation:I

    return p0
.end method

.method public static synthetic access$302(Lcom/android/camera/ModeEditorActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ModeEditorActivity;->mOrientationCompensation:I

    return p1
.end method

.method public static synthetic access$400(Lcom/android/camera/ModeEditorActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ModeEditorActivity;->mRootView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ModeEditorActivity;->mEditFragment:Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;->onBackEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ModeEditor"

    const-string/jumbo v1, "onBackPressed"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoooO()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/display/Display;->init(Landroid/content/Context;Z)V

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/android/camera/display/Display;->checkMultiWindowSupport(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/ModeEditorActivity;->mLocked:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_2
    const p1, 0x7f0d001e

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0a0296

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ModeEditorActivity;->mRootView:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;

    invoke-direct {v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ModeEditorActivity;->mEditFragment:Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ModeEditorActivity;->mEditFragment:Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/ModeEditorActivity;->mSupportOrientation:Z

    .line 13
    new-instance p1, Lcom/android/camera/ModeEditorActivity$MyOrientationListener;

    invoke-direct {p1, p0, p0}, Lcom/android/camera/ModeEditorActivity$MyOrientationListener;-><init>(Lcom/android/camera/ModeEditorActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/ModeEditorActivity;->mMyOrientationListener:Lcom/android/camera/ModeEditorActivity$MyOrientationListener;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ModeEditorActivity;->mMyOrientationListener:Lcom/android/camera/ModeEditorActivity$MyOrientationListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ModeEditorActivity;->mMyOrientationListener:Lcom/android/camera/ModeEditorActivity$MyOrientationListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/ModeEditorActivity;->mLocked:Z

    invoke-static {v0, p0}, Lcom/android/camera/Util;->onIfLockStop(ZLandroid/app/Activity;)V

    return-void
.end method
