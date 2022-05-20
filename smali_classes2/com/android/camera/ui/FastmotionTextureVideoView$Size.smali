.class public Lcom/android/camera/ui/FastmotionTextureVideoView$Size;
.super Ljava/lang/Object;
.source "FastmotionTextureVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FastmotionTextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->mWidth:I

    .line 3
    iput p2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->mHeight:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$Size;->mWidth:I

    return v0
.end method
