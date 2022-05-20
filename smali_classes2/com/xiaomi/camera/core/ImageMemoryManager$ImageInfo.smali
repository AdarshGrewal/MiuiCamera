.class public Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;
.super Ljava/lang/Object;
.source "ImageMemoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/ImageMemoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageInfo"
.end annotation


# instance fields
.field public owner:I

.field public size:I

.field public final synthetic this$0:Lcom/xiaomi/camera/core/ImageMemoryManager;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/ImageMemoryManager;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;->this$0:Lcom/xiaomi/camera/core/ImageMemoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;->owner:I

    .line 3
    iput p3, p0, Lcom/xiaomi/camera/core/ImageMemoryManager$ImageInfo;->size:I

    return-void
.end method
