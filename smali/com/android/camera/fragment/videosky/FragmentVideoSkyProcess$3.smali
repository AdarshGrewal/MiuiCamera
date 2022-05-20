.class public Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$3;
.super Ljava/lang/Object;
.source "FragmentVideoSkyProcess.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->showExitConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$3;->this$0:Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$3;->this$0:Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->access$002(Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
