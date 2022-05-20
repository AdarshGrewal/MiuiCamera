.class public Lcom/android/camera/ActivityBase$2;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ActivityBase;->showBlurCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ActivityBase;

.field public final synthetic val$start:J


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ActivityBase$2;->this$0:Lcom/android/camera/ActivityBase;

    iput-wide p2, p0, Lcom/android/camera/ActivityBase$2;->val$start:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ActivityBase$2;->this$0:Lcom/android/camera/ActivityBase;

    invoke-static {v0, p1}, Lcom/android/camera/ActivityBase;->access$100(Lcom/android/camera/ActivityBase;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ActivityBase$2;->this$0:Lcom/android/camera/ActivityBase;

    iget-object p1, p1, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "showBlurCover: show... cost time = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/ActivityBase$2;->val$start:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityBase"

    .line 7
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase$2;->accept(Landroid/graphics/Bitmap;)V

    return-void
.end method
