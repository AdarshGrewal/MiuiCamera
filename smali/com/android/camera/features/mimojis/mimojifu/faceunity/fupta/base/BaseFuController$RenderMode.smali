.class public final enum Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;
.super Ljava/lang/Enum;
.source "BaseFuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

.field public static final enum AR:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

.field public static final enum Avatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

.field public static final enum Edit:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

.field public static final enum Nama:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

.field public static final enum Picture:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    const/4 v1, 0x0

    const-string v2, "Avatar"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Avatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    .line 2
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    const/4 v2, 0x1

    const-string v3, "Nama"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Nama:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    .line 3
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    const/4 v3, 0x2

    const-string v4, "Edit"

    invoke-direct {v0, v4, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Edit:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    .line 4
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    const/4 v4, 0x3

    const-string v5, "AR"

    invoke-direct {v0, v5, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->AR:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    .line 5
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    const/4 v5, 0x4

    const-string v6, "Picture"

    invoke-direct {v0, v6, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Picture:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    .line 6
    sget-object v7, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Avatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    aput-object v7, v6, v1

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Nama:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    aput-object v1, v6, v2

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Edit:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    aput-object v1, v6, v3

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->AR:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->$VALUES:[Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->$VALUES:[Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {v0}, [Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    return-object v0
.end method
