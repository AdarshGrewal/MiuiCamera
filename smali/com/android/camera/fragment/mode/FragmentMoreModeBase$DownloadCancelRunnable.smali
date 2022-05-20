.class public Lcom/android/camera/fragment/mode/FragmentMoreModeBase$DownloadCancelRunnable;
.super Ljava/lang/Object;
.source "FragmentMoreModeBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/mode/FragmentMoreModeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadCancelRunnable"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DownloadCancelRunnable"


# instance fields
.field public final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/fragment/mode/FragmentMoreModeBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$DownloadCancelRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;Lcom/android/camera/fragment/mode/FragmentMoreModeBase$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$DownloadCancelRunnable;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$DownloadCancelRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;

    const-string v1, "DownloadCancelRunnable"

    if-nez v0, :cond_0

    const-string/jumbo v0, "run: fragment is null, returning."

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v2, "onClick showDownloadCancelDialog cancel"

    .line 3
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadingFeature:Ljava/lang/String;

    return-void
.end method
