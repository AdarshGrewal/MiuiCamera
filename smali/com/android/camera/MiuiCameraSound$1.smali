.class public Lcom/android/camera/MiuiCameraSound$1;
.super Ljava/lang/Object;
.source "MiuiCameraSound.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MiuiCameraSound;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/android/camera/MiuiCameraSound$PlayConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/MiuiCameraSound;


# direct methods
.method public constructor <init>(Lcom/android/camera/MiuiCameraSound;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/MiuiCameraSound$1;->this$0:Lcom/android/camera/MiuiCameraSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/camera/MiuiCameraSound$PlayConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "play sound too fast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/camera/MiuiCameraSound$PlayConfig;->soundId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiCameraSound"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/camera/MiuiCameraSound$PlayConfig;

    invoke-virtual {p0, p1}, Lcom/android/camera/MiuiCameraSound$1;->accept(Lcom/android/camera/MiuiCameraSound$PlayConfig;)V

    return-void
.end method
