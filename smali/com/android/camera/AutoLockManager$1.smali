.class public Lcom/android/camera/AutoLockManager$1;
.super Landroid/os/Handler;
.source "AutoLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AutoLockManager;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/AutoLockManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/AutoLockManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/AutoLockManager$1;->this$0:Lcom/android/camera/AutoLockManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/AutoLockManager$1;->this$0:Lcom/android/camera/AutoLockManager;

    invoke-static {p1}, Lcom/android/camera/AutoLockManager;->access$000(Lcom/android/camera/AutoLockManager;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/AutoLockManager$1;->this$0:Lcom/android/camera/AutoLockManager;

    invoke-static {p1}, Lcom/android/camera/AutoLockManager;->access$100(Lcom/android/camera/AutoLockManager;)V

    :cond_1
    :goto_0
    return-void
.end method
