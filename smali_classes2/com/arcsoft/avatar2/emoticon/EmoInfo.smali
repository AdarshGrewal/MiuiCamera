.class public Lcom/arcsoft/avatar2/emoticon/EmoInfo;
.super Ljava/lang/Object;
.source "EmoInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "EmoInfo"


# instance fields
.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/io/FileDescriptor;

.field public f:I

.field public g:F

.field public h:F

.field public i:Z

.field public j:Z

.field public k:Ljava/nio/ByteBuffer;

.field public l:[B

.field public m:Ljava/lang/String;

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;",
            ">;"
        }
    .end annotation
.end field

.field public o:Landroid/util/Size;

.field public p:I

.field public q:F

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->b:Z

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->f:I

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->g:F

    .line 6
    iput v2, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->h:F

    .line 7
    iput-boolean v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->i:Z

    .line 8
    iput-boolean v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->j:Z

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->k:Ljava/nio/ByteBuffer;

    .line 10
    iput-object v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->l:[B

    .line 11
    iput-object v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->m:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->o:Landroid/util/Size;

    const/16 v0, 0x19

    .line 13
    iput v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->p:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    iput v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->q:F

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->n:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getEmoExtraInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEmoImageSize()Landroid/util/Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->o:Landroid/util/Size;

    return-object v0
.end method

.method public getEmoMaxCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->f:I

    return v0
.end method

.method public getEmoName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->e:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getScaleLevel()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->q:F

    return v0
.end method

.method public getSelect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->b:Z

    return v0
.end method

.method public getThumbBgGroundPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbForGroundPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbFrameIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->p:I

    return v0
.end method

.method public getThumbnail()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->k:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getThumbnailData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->l:[B

    return-object v0
.end method

.method public getTranslationX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->g:F

    return v0
.end method

.method public getTranslationY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->h:F

    return v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public isMultipleBG()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->j:Z

    return v0
.end method

.method public isNeedFaceColor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->i:Z

    return v0
.end method

.method public needFaceColor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->i:Z

    return-void
.end method

.method public setEmoExtraInfoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->n:Ljava/util/ArrayList;

    return-void
.end method

.method public setEmoImageSize(Landroid/util/Size;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->o:Landroid/util/Size;

    return-void
.end method

.method public setEmoMaxCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->f:I

    return-void
.end method

.method public setEmoName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->e:Ljava/io/FileDescriptor;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public setMultipleBG(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->j:Z

    return-void
.end method

.method public setScaleLevel(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->q:F

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->b:Z

    return-void
.end method

.method public setThumbBgGroundPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->s:Ljava/lang/String;

    return-void
.end method

.method public setThumbForGroundPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->r:Ljava/lang/String;

    return-void
.end method

.method public setThumbFrameIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->p:I

    return-void
.end method

.method public setThumbnail(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->k:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setThumbnailData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->l:[B

    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->g:F

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->h:F

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emoName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emoMaxCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->time:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", foreGroundPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->foreGroundPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "tongueStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    .line 4
    invoke-virtual {v4}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getTongueStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Orientations = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getOrientations()[F

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", LeftEyes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    .line 5
    invoke-virtual {v4}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getOrientationLeftEyes()[F

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", RightEyes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    .line 6
    invoke-virtual {v4}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getOrientationRightEyes()[F

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ExpWeights = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
