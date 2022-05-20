.class public Lcom/android/camera/fragment/top/FragmentTopAlert$8;
.super Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;
.source "FragmentTopAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/top/FragmentTopAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$8;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    return-void
.end method


# virtual methods
.method public runToSafe()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$8;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$1200(Lcom/android/camera/fragment/top/FragmentTopAlert;Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$8;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$1300(Lcom/android/camera/fragment/top/FragmentTopAlert;Z)V

    return-void
.end method
