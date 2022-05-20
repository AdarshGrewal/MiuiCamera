.class public Lcom/android/camera/fragment/mode/FragmentMoreModeBase$DialogDissmissListener;
.super Ljava/lang/Object;
.source "FragmentMoreModeBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/mode/FragmentMoreModeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogDissmissListener"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DialogDissmissListener"


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

    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$DialogDissmissListener;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;Lcom/android/camera/fragment/mode/FragmentMoreModeBase$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$DialogDissmissListener;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$DialogDissmissListener;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;

    const-string v0, "DialogDissmissListener"

    if-nez p1, :cond_0

    const-string/jumbo p1, "run: fragment is null, returning."

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "onClick showDownloadCancelDialog cancel"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->access$402(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
