.class public Lcom/android/camera/module/Panorama3Module$PanoramaFirst;
.super Lcom/android/camera/panorama/PanoramaState;
.source "Panorama3Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Panorama3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PanoramaFirst"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/Panorama3Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaFirst;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-direct {p0}, Lcom/android/camera/panorama/PanoramaState;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/module/Panorama3Module$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/module/Panorama3Module$PanoramaFirst;-><init>(Lcom/android/camera/module/Panorama3Module;)V

    return-void
.end method


# virtual methods
.method public onSaveImage(Lcom/android/camera/panorama/CaptureImage;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->close()V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaFirst;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {p1}, Lcom/android/camera/module/Panorama3Module;->setNullDirectionFunction()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaFirst;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$1800(Lcom/android/camera/module/Panorama3Module;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PanoramaFirst.onSaveImage request stop"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaFirst;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$2100(Lcom/android/camera/module/Panorama3Module;)Z

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaFirst;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$700(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaFirst;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$2200(Lcom/android/camera/module/Panorama3Module;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaFirst;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$2300(Lcom/android/camera/module/Panorama3Module;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->start(II)I

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start error resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaFirst;->this$0:Lcom/android/camera/module/Panorama3Module;

    new-instance v0, Lcom/android/camera/module/Panorama3Module$DecideDirection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/camera/module/Panorama3Module$DecideDirection;-><init>(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/module/Panorama3Module$1;)V

    invoke-static {p1, v0}, Lcom/android/camera/module/Panorama3Module;->access$602(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/PanoramaState;)Lcom/android/camera/panorama/PanoramaState;

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaFirst;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$600(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/PanoramaState;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaState;->listener:Lcom/android/camera/panorama/PanoramaState$IPanoramaStateEventListener;

    invoke-virtual {p1, v0}, Lcom/android/camera/panorama/PanoramaState;->setPanoramaStateEventListener(Lcom/android/camera/panorama/PanoramaState$IPanoramaStateEventListener;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/panorama/PanoramaState;->clearListener()V

    const/4 p1, 0x1

    return p1
.end method
