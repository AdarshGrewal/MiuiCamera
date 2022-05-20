.class public final enum Lcom/android/camera/dualvideo/render/LayoutType;
.super Ljava/lang/Enum;
.source "LayoutType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/dualvideo/render/LayoutType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum FULL:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum MINI:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_1:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_10:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_2:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_3:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_4:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_5:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_6:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_7:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_8:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_9:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum UP:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum UP_FULL:Lcom/android/camera/dualvideo/render/LayoutType;


# instance fields
.field public final mIndex:I

.field public final mWeight:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const/4 v1, 0x0

    const-string v2, "UNDEFINED"

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 2
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v2, 0x1e

    const/16 v3, 0xa

    const/4 v4, 0x1

    const-string v5, "MINI"

    invoke-direct {v0, v5, v4, v3, v2}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 3
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const/4 v5, 0x2

    const/16 v6, 0x32

    const-string v7, "DOWN_FULL"

    invoke-direct {v0, v7, v5, v4, v6}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 4
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const/4 v7, 0x3

    const-string v8, "UP_FULL"

    invoke-direct {v0, v8, v7, v5, v6}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->UP_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 5
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const/4 v8, 0x4

    const/16 v9, 0xb

    const-string v10, "UP"

    invoke-direct {v0, v10, v8, v9, v6}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 6
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const/4 v10, 0x5

    const/16 v11, 0xc

    const-string v12, "DOWN"

    invoke-direct {v0, v12, v10, v11, v6}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 7
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const/4 v6, 0x6

    const/16 v12, 0xd

    const-string v13, "FULL"

    const/16 v14, 0x50

    invoke-direct {v0, v13, v6, v12, v14}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 8
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const/4 v13, 0x7

    const/16 v14, 0x64

    const-string v15, "PATCH_0"

    const/16 v6, 0x14

    invoke-direct {v0, v15, v13, v6, v14}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 9
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v6, 0x8

    const-string v15, "PATCH_1"

    const/16 v13, 0x15

    invoke-direct {v0, v15, v6, v13, v14}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_1:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 10
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v13, 0x9

    const-string v15, "PATCH_2"

    const/16 v6, 0x16

    invoke-direct {v0, v15, v13, v6, v14}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_2:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 11
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v6, "PATCH_3"

    const/16 v15, 0x17

    invoke-direct {v0, v6, v3, v15, v14}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_3:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 12
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v6, "PATCH_4"

    const/16 v15, 0x18

    invoke-direct {v0, v6, v9, v15, v14}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_4:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 13
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v6, "PATCH_5"

    const/16 v15, 0x19

    invoke-direct {v0, v6, v11, v15, v14}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_5:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 14
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v6, "PATCH_6"

    const/16 v15, 0x1a

    invoke-direct {v0, v6, v12, v15, v14}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_6:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 15
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v6, 0xe

    const-string v15, "PATCH_7"

    const/16 v12, 0x1b

    invoke-direct {v0, v15, v6, v12, v14}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_7:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 16
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v12, 0xf

    const-string v15, "PATCH_8"

    const/16 v6, 0x1c

    invoke-direct {v0, v15, v12, v6, v14}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_8:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 17
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v6, 0x10

    const-string v15, "PATCH_9"

    const/16 v12, 0x1d

    invoke-direct {v0, v15, v6, v12, v14}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_9:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 18
    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v12, 0x11

    const-string v15, "PATCH_10"

    invoke-direct {v0, v15, v12, v2, v14}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_10:Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/android/camera/dualvideo/render/LayoutType;

    .line 19
    sget-object v14, Lcom/android/camera/dualvideo/render/LayoutType;->UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v14, v2, v1

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v1, v2, v4

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v1, v2, v5

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->UP_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v1, v2, v7

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v1, v2, v8

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v1, v2, v10

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    const/4 v4, 0x6

    aput-object v1, v2, v4

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    const/4 v4, 0x7

    aput-object v1, v2, v4

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_1:Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v4, 0x8

    aput-object v1, v2, v4

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_2:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v1, v2, v13

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_3:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v1, v2, v3

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_4:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v1, v2, v9

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_5:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v1, v2, v11

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_6:Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v3, 0xd

    aput-object v1, v2, v3

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_7:Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v3, 0xe

    aput-object v1, v2, v3

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_8:Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v3, 0xf

    aput-object v1, v2, v3

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_9:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v1, v2, v6

    aput-object v0, v2, v12

    sput-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->$VALUES:[Lcom/android/camera/dualvideo/render/LayoutType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/android/camera/dualvideo/render/LayoutType;->mIndex:I

    .line 3
    iput p4, p0, Lcom/android/camera/dualvideo/render/LayoutType;->mWeight:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->$VALUES:[Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0}, [Lcom/android/camera/dualvideo/render/LayoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/dualvideo/render/LayoutType;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/dualvideo/render/LayoutType;->mIndex:I

    return v0
.end method

.method public getWeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/dualvideo/render/LayoutType;->mWeight:I

    return v0
.end method

.method public isGridWindowType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/dualvideo/render/LayoutType;->mIndex:I

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
