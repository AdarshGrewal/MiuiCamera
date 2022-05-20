.class public Lcom/android/camera/module/AmbilightModule$1;
.super Ljava/lang/Object;
.source "AmbilightModule.java"

# interfaces
.implements Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/AmbilightModule;
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
    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule$1;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopped(Lcom/android/camera/module/encoder/MediaEncoder;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopped: encoder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " muxerStopped:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$1;->this$0:Lcom/android/camera/module/AmbilightModule;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/camera/module/AmbilightModule;->executeSaveTask(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$1;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {p1}, Lcom/android/camera/module/AmbilightModule;->executeRelease()V

    :goto_0
    return-void
.end method

.method public save(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$1;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/module/AmbilightModule;->addSaveTask(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method
