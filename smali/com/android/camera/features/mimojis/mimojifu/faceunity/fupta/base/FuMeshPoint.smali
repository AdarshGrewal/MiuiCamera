.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuMeshPoint;
.super Landroid/graphics/Point;
.source "FuMeshPoint.java"


# static fields
.field public static final DIRECTION_ALL:I = 0x2

.field public static final DIRECTION_HORIZONTAL:I = 0x0

.field public static final DIRECTION_VERTICAL:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final direction:I

.field public final downKey:Ljava/lang/String;

.field public final index:I

.field public final leftKey:Ljava/lang/String;

.field public final rightKey:Ljava/lang/String;

.field public final upKey:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuMeshPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuMeshPoint;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuMeshPoint;->index:I

    .line 3
    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuMeshPoint;->direction:I

    .line 4
    iput-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuMeshPoint;->leftKey:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuMeshPoint;->rightKey:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuMeshPoint;->upKey:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuMeshPoint;->downKey:Ljava/lang/String;

    return-void
.end method
