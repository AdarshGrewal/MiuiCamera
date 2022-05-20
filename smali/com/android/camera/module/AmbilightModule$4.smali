.class public Lcom/android/camera/module/AmbilightModule$4;
.super Ljava/lang/Object;
.source "AmbilightModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/AmbilightModule;->tryRemoveCountDownMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/AmbilightModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "run: hide delay number in main thread"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-static {v0}, Lcom/android/camera/module/AmbilightModule;->access$200(Lcom/android/camera/module/AmbilightModule;)Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideDelayNumber()V

    return-void
.end method
