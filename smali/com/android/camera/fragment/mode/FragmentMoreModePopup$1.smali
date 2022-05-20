.class public Lcom/android/camera/fragment/mode/FragmentMoreModePopup$1;
.super Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;
.source "FragmentMoreModePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->onPromptExpand(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

.field public final synthetic val$finishCb:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mode/FragmentMoreModePopup;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup$1;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    iput-object p2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup$1;->val$finishCb:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModePopup$1;->val$finishCb:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
