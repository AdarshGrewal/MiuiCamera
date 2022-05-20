.class public Lcom/android/camera/Camera$10;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->checkPermissionAndCTA(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/ActivityBase;->mRequestDismissKeyguarding:Z

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;Z)V

    return-void
.end method
