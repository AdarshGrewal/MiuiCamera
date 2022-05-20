.class public Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;
.super Ljava/lang/Object;
.source "MimojiEmoticonInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mEmoInfo:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

.field public mGifFileName:Ljava/lang/String;

.field public mIndex:I

.field public mIsSelected:Z

.field public mJpegFileName:Ljava/lang/String;

.field public mName:I

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 9
    iput p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mName:I

    .line 10
    iput p3, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/arcsoft/avatar2/emoticon/EmoInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mEmoInfo:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    return-void
.end method

.method public constructor <init>(Lcom/arcsoft/avatar2/emoticon/EmoInfo;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mEmoInfo:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    .line 5
    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 6
    iput p3, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mName:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getEmoInfo()Lcom/arcsoft/avatar2/emoticon/EmoInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mEmoInfo:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    return-object v0
.end method

.method public getGifFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mGifFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mIndex:I

    return v0
.end method

.method public getJpegFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mJpegFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mName:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mIsSelected:Z

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setEmoInfo(Lcom/arcsoft/avatar2/emoticon/EmoInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mEmoInfo:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    return-void
.end method

.method public setGifFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mGifFileName:Ljava/lang/String;

    return-void
.end method

.method public setJpegFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mJpegFileName:Ljava/lang/String;

    return-void
.end method

.method public setName(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mName:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mIsSelected:Z

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->mUri:Landroid/net/Uri;

    return-void
.end method
