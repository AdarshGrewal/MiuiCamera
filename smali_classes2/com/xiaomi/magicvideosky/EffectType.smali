.class public final enum Lcom/xiaomi/magicvideosky/EffectType;
.super Ljava/lang/Enum;
.source "EffectType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/magicvideosky/EffectType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum AF_Mp3MixFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum AF_SpeedFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum AudioMixerFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum BasicImageFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum BasicTransitionFilter2:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum CropFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum ExtractCoverFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum PhotoFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum PngTransformFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum ReverseFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum RotateFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum ScaleFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum SetptsExtFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum ShakeFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum TransitionEraseFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum TransitionFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum TransitionOverlappFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum TransitionRotateFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum TransitionZoomFilter:Lcom/xiaomi/magicvideosky/EffectType;

.field public static final enum TrimFilter:Lcom/xiaomi/magicvideosky/EffectType;


# instance fields
.field public nCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/4 v1, 0x0

    const-string v2, "BasicTransitionFilter2"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->BasicTransitionFilter2:Lcom/xiaomi/magicvideosky/EffectType;

    .line 2
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/4 v2, 0x1

    const-string v3, "ExtractCoverFilter"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->ExtractCoverFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 3
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/4 v3, 0x2

    const-string v4, "PhotoFilter"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->PhotoFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 4
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/4 v4, 0x3

    const-string v5, "PngTransformFilter"

    invoke-direct {v0, v5, v4, v4}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->PngTransformFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 5
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/4 v5, 0x4

    const-string v6, "ReverseFilter"

    invoke-direct {v0, v6, v5, v5}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->ReverseFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 6
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/4 v6, 0x5

    const-string v7, "RotateFilter"

    invoke-direct {v0, v7, v6, v6}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->RotateFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 7
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/4 v7, 0x6

    const-string v8, "ScaleFilter"

    invoke-direct {v0, v8, v7, v7}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->ScaleFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 8
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/4 v8, 0x7

    const-string v9, "SetptsExtFilter"

    invoke-direct {v0, v9, v8, v8}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->SetptsExtFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 9
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v9, 0x8

    const-string v10, "TrimFilter"

    invoke-direct {v0, v10, v9, v9}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->TrimFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 10
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v10, 0x9

    const-string v11, "TransitionFilter"

    invoke-direct {v0, v11, v10, v10}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->TransitionFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 11
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v11, 0xa

    const-string v12, "TransitionOverlappFilter"

    invoke-direct {v0, v12, v11, v11}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->TransitionOverlappFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 12
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v12, 0xb

    const-string v13, "TransitionEraseFilter"

    invoke-direct {v0, v13, v12, v12}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->TransitionEraseFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 13
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v13, 0xc

    const-string v14, "TransitionRotateFilter"

    invoke-direct {v0, v14, v13, v13}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->TransitionRotateFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 14
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v14, 0xd

    const-string v15, "TransitionZoomFilter"

    invoke-direct {v0, v15, v14, v14}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->TransitionZoomFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 15
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v15, 0xe

    const-string v14, "AF_Mp3MixFilter"

    invoke-direct {v0, v14, v15, v15}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->AF_Mp3MixFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 16
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v14, 0xf

    const-string v15, "AF_SpeedFilter"

    invoke-direct {v0, v15, v14, v14}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->AF_SpeedFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 17
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v15, 0x10

    const-string v14, "AudioMixerFilter"

    invoke-direct {v0, v14, v15, v15}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->AudioMixerFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 18
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v14, 0x11

    const-string v15, "BasicImageFilter"

    invoke-direct {v0, v15, v14, v14}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->BasicImageFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 19
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v15, 0x12

    const-string v14, "CropFilter"

    invoke-direct {v0, v14, v15, v15}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->CropFilter:Lcom/xiaomi/magicvideosky/EffectType;

    .line 20
    new-instance v0, Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v14, 0x13

    const-string v15, "ShakeFilter"

    invoke-direct {v0, v15, v14, v14}, Lcom/xiaomi/magicvideosky/EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/magicvideosky/EffectType;->ShakeFilter:Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v15, 0x14

    new-array v15, v15, [Lcom/xiaomi/magicvideosky/EffectType;

    .line 21
    sget-object v16, Lcom/xiaomi/magicvideosky/EffectType;->BasicTransitionFilter2:Lcom/xiaomi/magicvideosky/EffectType;

    aput-object v16, v15, v1

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->ExtractCoverFilter:Lcom/xiaomi/magicvideosky/EffectType;

    aput-object v1, v15, v2

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->PhotoFilter:Lcom/xiaomi/magicvideosky/EffectType;

    aput-object v1, v15, v3

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->PngTransformFilter:Lcom/xiaomi/magicvideosky/EffectType;

    aput-object v1, v15, v4

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->ReverseFilter:Lcom/xiaomi/magicvideosky/EffectType;

    aput-object v1, v15, v5

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->RotateFilter:Lcom/xiaomi/magicvideosky/EffectType;

    aput-object v1, v15, v6

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->ScaleFilter:Lcom/xiaomi/magicvideosky/EffectType;

    aput-object v1, v15, v7

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->SetptsExtFilter:Lcom/xiaomi/magicvideosky/EffectType;

    aput-object v1, v15, v8

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->TrimFilter:Lcom/xiaomi/magicvideosky/EffectType;

    aput-object v1, v15, v9

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->TransitionFilter:Lcom/xiaomi/magicvideosky/EffectType;

    aput-object v1, v15, v10

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->TransitionOverlappFilter:Lcom/xiaomi/magicvideosky/EffectType;

    aput-object v1, v15, v11

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->TransitionEraseFilter:Lcom/xiaomi/magicvideosky/EffectType;

    aput-object v1, v15, v12

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->TransitionRotateFilter:Lcom/xiaomi/magicvideosky/EffectType;

    aput-object v1, v15, v13

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->TransitionZoomFilter:Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v2, 0xd

    aput-object v1, v15, v2

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->AF_Mp3MixFilter:Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v2, 0xe

    aput-object v1, v15, v2

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->AF_SpeedFilter:Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v2, 0xf

    aput-object v1, v15, v2

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->AudioMixerFilter:Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v2, 0x10

    aput-object v1, v15, v2

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->BasicImageFilter:Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v2, 0x11

    aput-object v1, v15, v2

    sget-object v1, Lcom/xiaomi/magicvideosky/EffectType;->CropFilter:Lcom/xiaomi/magicvideosky/EffectType;

    const/16 v2, 0x12

    aput-object v1, v15, v2

    aput-object v0, v15, v14

    sput-object v15, Lcom/xiaomi/magicvideosky/EffectType;->$VALUES:[Lcom/xiaomi/magicvideosky/EffectType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/xiaomi/magicvideosky/EffectType;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/magicvideosky/EffectType;
    .locals 6

    .line 1
    sget-object v0, Lcom/xiaomi/magicvideosky/EffectType;->BasicTransitionFilter2:Lcom/xiaomi/magicvideosky/EffectType;

    .line 2
    invoke-static {}, Lcom/xiaomi/magicvideosky/EffectType;->values()[Lcom/xiaomi/magicvideosky/EffectType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/magicvideosky/EffectType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/magicvideosky/EffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/magicvideosky/EffectType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/magicvideosky/EffectType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/magicvideosky/EffectType;->$VALUES:[Lcom/xiaomi/magicvideosky/EffectType;

    invoke-virtual {v0}, [Lcom/xiaomi/magicvideosky/EffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/magicvideosky/EffectType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/magicvideosky/EffectType;->nCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
