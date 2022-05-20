.class public Lcom/android/camera/module/SuperMoonModule$4;
.super Ljava/lang/Object;
.source "SuperMoonModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/SuperMoonModule;->onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/SuperMoonModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/SuperMoonModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/SuperMoonModule$4;->this$0:Lcom/android/camera/module/SuperMoonModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$4;->this$0:Lcom/android/camera/module/SuperMoonModule;

    invoke-static {v0}, Lcom/android/camera/module/SuperMoonModule;->access$1300(Lcom/android/camera/module/SuperMoonModule;)V

    return-void
.end method
