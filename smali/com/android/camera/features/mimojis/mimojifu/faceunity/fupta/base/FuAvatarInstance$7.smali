.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$7;
.super Ljava/lang/Object;
.source "FuAvatarInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->bindAllAndSetPinchFace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$7;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->values()[Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$7;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-static {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->access$200(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    move-result-object v4

    .line 3
    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$8;->$SwitchMap$com$android$camera$features$mimojis$mimojifu$faceunity$fupta$base$entity$LabelCollection$ColorType:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 4
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$7;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setItemColor(Ljava/lang/String;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$7;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->liplash:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getFuItemTypeBean(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setMakeColor(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    :cond_1
    return-void
.end method
