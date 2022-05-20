.class public final Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;
.super Landroid/os/Handler;
.source "WatermarkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/settings/WatermarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BackgroundHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/settings/WatermarkFragment;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$500(Lcom/android/camera/fragment/settings/WatermarkFragment;Landroid/os/Message;)V

    return-void
.end method
