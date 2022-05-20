.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;
.super Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;
.source "FuItem.java"


# instance fields
.field public age:[Ljava/lang/String;

.field public bitmap:Landroid/graphics/Bitmap;

.field public body_visible_parts:[Ljava/lang/Integer;

.field public bundle:Ljava/lang/String;

.field public gender:I

.field public gender_match:I

.field public icon:I

.field public label:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->age:[Ljava/lang/String;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBody_visible_parts()[Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->body_visible_parts:[Ljava/lang/Integer;

    return-object v0
.end method

.method public getBundle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bundle:Ljava/lang/String;

    return-object v0
.end method

.method public getBundlePath()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bundle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bundle:Ljava/lang/String;

    const-string v2, ".bundle"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->getLastName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getGender()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->gender:I

    return v0
.end method

.method public getGender_match()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->gender_match:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->icon:I

    return v0
.end method

.method public getLabel()[Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->label:[Ljava/lang/Integer;

    return-object v0
.end method

.method public release()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setSelect(Z)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public setAge([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->age:[Ljava/lang/String;

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBody_visible_parts([Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->body_visible_parts:[Ljava/lang/Integer;

    return-void
.end method

.method public setBundle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bundle:Ljava/lang/String;

    return-void
.end method

.method public setGender(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->gender:I

    return-void
.end method

.method public setGender_match(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->gender_match:I

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->icon:I

    return-void
.end method

.method public setLabel([Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->label:[Ljava/lang/Integer;

    return-void
.end method
