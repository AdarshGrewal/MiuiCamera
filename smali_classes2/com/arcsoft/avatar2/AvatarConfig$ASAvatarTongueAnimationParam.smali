.class public Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarTongueAnimationParam;
.super Ljava/lang/Object;
.source "AvatarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/avatar2/AvatarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ASAvatarTongueAnimationParam"
.end annotation


# instance fields
.field public fBackSlowLevel:F

.field public fLevel:F

.field public fMouthExpressionBak:F

.field public nTongueAnimationStatus:I

.field public nTongueStatus:I


# direct methods
.method public constructor <init>(IFFIF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarTongueAnimationParam;->nTongueStatus:I

    .line 3
    iput p2, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarTongueAnimationParam;->fLevel:F

    .line 4
    iput p3, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarTongueAnimationParam;->fBackSlowLevel:F

    .line 5
    iput p4, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarTongueAnimationParam;->nTongueAnimationStatus:I

    .line 6
    iput p5, p0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarTongueAnimationParam;->fMouthExpressionBak:F

    return-void
.end method
