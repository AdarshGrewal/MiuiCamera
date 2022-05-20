.class public final enum Lcom/faceunity/pta_helper/gif/EncodingType;
.super Ljava/lang/Enum;
.source "EncodingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/faceunity/pta_helper/gif/EncodingType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ENCODING_TYPE_FAST:Lcom/faceunity/pta_helper/gif/EncodingType;

.field public static final enum ENCODING_TYPE_NORMAL_LOW_MEMORY:Lcom/faceunity/pta_helper/gif/EncodingType;

.field public static final enum ENCODING_TYPE_SIMPLE_FAST:Lcom/faceunity/pta_helper/gif/EncodingType;

.field public static final enum ENCODING_TYPE_STABLE_HIGH_MEMORY:Lcom/faceunity/pta_helper/gif/EncodingType;

.field public static final synthetic b:[Lcom/faceunity/pta_helper/gif/EncodingType;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/faceunity/pta_helper/gif/EncodingType;

    const/4 v1, 0x0

    const-string v2, "ENCODING_TYPE_SIMPLE_FAST"

    invoke-direct {v0, v2, v1, v1}, Lcom/faceunity/pta_helper/gif/EncodingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/faceunity/pta_helper/gif/EncodingType;->ENCODING_TYPE_SIMPLE_FAST:Lcom/faceunity/pta_helper/gif/EncodingType;

    .line 2
    new-instance v0, Lcom/faceunity/pta_helper/gif/EncodingType;

    const/4 v2, 0x1

    const-string v3, "ENCODING_TYPE_FAST"

    invoke-direct {v0, v3, v2, v2}, Lcom/faceunity/pta_helper/gif/EncodingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/faceunity/pta_helper/gif/EncodingType;->ENCODING_TYPE_FAST:Lcom/faceunity/pta_helper/gif/EncodingType;

    .line 3
    new-instance v0, Lcom/faceunity/pta_helper/gif/EncodingType;

    const/4 v3, 0x2

    const-string v4, "ENCODING_TYPE_NORMAL_LOW_MEMORY"

    invoke-direct {v0, v4, v3, v3}, Lcom/faceunity/pta_helper/gif/EncodingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/faceunity/pta_helper/gif/EncodingType;->ENCODING_TYPE_NORMAL_LOW_MEMORY:Lcom/faceunity/pta_helper/gif/EncodingType;

    .line 4
    new-instance v0, Lcom/faceunity/pta_helper/gif/EncodingType;

    const/4 v4, 0x3

    const-string v5, "ENCODING_TYPE_STABLE_HIGH_MEMORY"

    invoke-direct {v0, v5, v4, v4}, Lcom/faceunity/pta_helper/gif/EncodingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/faceunity/pta_helper/gif/EncodingType;->ENCODING_TYPE_STABLE_HIGH_MEMORY:Lcom/faceunity/pta_helper/gif/EncodingType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/faceunity/pta_helper/gif/EncodingType;

    .line 5
    sget-object v6, Lcom/faceunity/pta_helper/gif/EncodingType;->ENCODING_TYPE_SIMPLE_FAST:Lcom/faceunity/pta_helper/gif/EncodingType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/faceunity/pta_helper/gif/EncodingType;->ENCODING_TYPE_FAST:Lcom/faceunity/pta_helper/gif/EncodingType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/faceunity/pta_helper/gif/EncodingType;->ENCODING_TYPE_NORMAL_LOW_MEMORY:Lcom/faceunity/pta_helper/gif/EncodingType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/faceunity/pta_helper/gif/EncodingType;->b:[Lcom/faceunity/pta_helper/gif/EncodingType;

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
    iput p3, p0, Lcom/faceunity/pta_helper/gif/EncodingType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/faceunity/pta_helper/gif/EncodingType;
    .locals 1

    .line 1
    const-class v0, Lcom/faceunity/pta_helper/gif/EncodingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/faceunity/pta_helper/gif/EncodingType;

    return-object p0
.end method

.method public static values()[Lcom/faceunity/pta_helper/gif/EncodingType;
    .locals 1

    .line 1
    sget-object v0, Lcom/faceunity/pta_helper/gif/EncodingType;->b:[Lcom/faceunity/pta_helper/gif/EncodingType;

    invoke-virtual {v0}, [Lcom/faceunity/pta_helper/gif/EncodingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/faceunity/pta_helper/gif/EncodingType;

    return-object v0
.end method
