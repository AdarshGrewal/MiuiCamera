.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;
.super Ljava/lang/Object;
.source "FuItemTypeBean.java"


# instance fields
.field public bundle:Ljava/lang/String;

.field public item:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBundle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->bundle:Ljava/lang/String;

    return-object v0
.end method

.method public getItem()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->item:I

    return v0
.end method

.method public setBundle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->bundle:Ljava/lang/String;

    return-void
.end method

.method public setItem(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->item:I

    return-void
.end method
