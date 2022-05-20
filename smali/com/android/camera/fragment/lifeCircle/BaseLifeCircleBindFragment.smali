.class public Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseLifeCircleBindFragment.java"


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "com.android.camera.bind"


# instance fields
.field public final mLifecycle:Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;

    invoke-direct {v0}, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;-><init>(Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;->mLifecycle:Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;

    return-void
.end method


# virtual methods
.method public getFragmentLifecycle()Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;->mLifecycle:Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;->mLifecycle:Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;

    const-string v1, "com.android.camera.bind"

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->onDestroy(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;->mLifecycle:Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;

    const-string v1, "com.android.camera.bind"

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->onStart(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseLifeCircleBindFragment;->mLifecycle:Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;

    const-string v1, "com.android.camera.bind"

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->onStop(Ljava/lang/String;)V

    return-void
.end method
