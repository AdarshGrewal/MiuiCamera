.class public Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$2;
.super Ljava/lang/Object;
.source "FragmentVideoSkyProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$2;->this$0:Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "FragmentVideoSkyProcess"

    const-string/jumbo v1, "showExitConfirm onClick positive"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoSkyAction;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyAction;->onExitClicked()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$2;->this$0:Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->resetToPreview(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$2;->this$0:Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;

    invoke-static {v0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->access$000(Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$2;->this$0:Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;

    invoke-virtual {v0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->prepare()V

    return-void
.end method
