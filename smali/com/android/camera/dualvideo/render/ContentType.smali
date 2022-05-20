.class public final enum Lcom/android/camera/dualvideo/render/ContentType;
.super Ljava/lang/Enum;
.source "ContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/dualvideo/render/ContentType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/camera/dualvideo/render/ContentType;

.field public static final enum CONTENT_BLUR:Lcom/android/camera/dualvideo/render/ContentType;

.field public static final enum CONTENT_DARK_CORNER:Lcom/android/camera/dualvideo/render/ContentType;

.field public static final enum CONTENT_GRID_LINE:Lcom/android/camera/dualvideo/render/ContentType;

.field public static final enum CONTENT_LABEL:Lcom/android/camera/dualvideo/render/ContentType;

.field public static final enum CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

.field public static final enum CONTENT_SCALING_HANDLE:Lcom/android/camera/dualvideo/render/ContentType;

.field public static final enum CONTENT_SELECTED_FRAME:Lcom/android/camera/dualvideo/render/ContentType;

.field public static final enum CONTENT_SWITCH_HANDLE:Lcom/android/camera/dualvideo/render/ContentType;


# instance fields
.field public mWeight:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/camera/dualvideo/render/ContentType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "CONTENT_PREVIEW"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/camera/dualvideo/render/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    .line 2
    new-instance v0, Lcom/android/camera/dualvideo/render/ContentType;

    const/4 v3, 0x2

    const-string v4, "CONTENT_GRID_LINE"

    invoke-direct {v0, v4, v2, v3}, Lcom/android/camera/dualvideo/render/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_GRID_LINE:Lcom/android/camera/dualvideo/render/ContentType;

    .line 3
    new-instance v0, Lcom/android/camera/dualvideo/render/ContentType;

    const/4 v4, 0x3

    const-string v5, "CONTENT_SELECTED_FRAME"

    invoke-direct {v0, v5, v3, v4}, Lcom/android/camera/dualvideo/render/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_SELECTED_FRAME:Lcom/android/camera/dualvideo/render/ContentType;

    .line 4
    new-instance v0, Lcom/android/camera/dualvideo/render/ContentType;

    const/4 v5, 0x4

    const-string v6, "CONTENT_LABEL"

    invoke-direct {v0, v6, v4, v5}, Lcom/android/camera/dualvideo/render/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_LABEL:Lcom/android/camera/dualvideo/render/ContentType;

    .line 5
    new-instance v0, Lcom/android/camera/dualvideo/render/ContentType;

    const/4 v6, 0x5

    const-string v7, "CONTENT_SCALING_HANDLE"

    invoke-direct {v0, v7, v5, v6}, Lcom/android/camera/dualvideo/render/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_SCALING_HANDLE:Lcom/android/camera/dualvideo/render/ContentType;

    .line 6
    new-instance v0, Lcom/android/camera/dualvideo/render/ContentType;

    const/4 v7, 0x6

    const-string v8, "CONTENT_SWITCH_HANDLE"

    invoke-direct {v0, v8, v6, v7}, Lcom/android/camera/dualvideo/render/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_SWITCH_HANDLE:Lcom/android/camera/dualvideo/render/ContentType;

    .line 7
    new-instance v0, Lcom/android/camera/dualvideo/render/ContentType;

    const/4 v8, 0x7

    const-string v9, "CONTENT_BLUR"

    invoke-direct {v0, v9, v7, v8}, Lcom/android/camera/dualvideo/render/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_BLUR:Lcom/android/camera/dualvideo/render/ContentType;

    .line 8
    new-instance v0, Lcom/android/camera/dualvideo/render/ContentType;

    const/16 v9, 0x8

    const-string v10, "CONTENT_DARK_CORNER"

    invoke-direct {v0, v10, v8, v9}, Lcom/android/camera/dualvideo/render/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_DARK_CORNER:Lcom/android/camera/dualvideo/render/ContentType;

    new-array v9, v9, [Lcom/android/camera/dualvideo/render/ContentType;

    .line 9
    sget-object v10, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    aput-object v10, v9, v1

    sget-object v1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_GRID_LINE:Lcom/android/camera/dualvideo/render/ContentType;

    aput-object v1, v9, v2

    sget-object v1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_SELECTED_FRAME:Lcom/android/camera/dualvideo/render/ContentType;

    aput-object v1, v9, v3

    sget-object v1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_LABEL:Lcom/android/camera/dualvideo/render/ContentType;

    aput-object v1, v9, v4

    sget-object v1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_SCALING_HANDLE:Lcom/android/camera/dualvideo/render/ContentType;

    aput-object v1, v9, v5

    sget-object v1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_SWITCH_HANDLE:Lcom/android/camera/dualvideo/render/ContentType;

    aput-object v1, v9, v6

    sget-object v1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_BLUR:Lcom/android/camera/dualvideo/render/ContentType;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/android/camera/dualvideo/render/ContentType;->$VALUES:[Lcom/android/camera/dualvideo/render/ContentType;

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

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/camera/dualvideo/render/ContentType;->mWeight:I

    .line 3
    iput p3, p0, Lcom/android/camera/dualvideo/render/ContentType;->mWeight:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/dualvideo/render/ContentType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/dualvideo/render/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/render/ContentType;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/dualvideo/render/ContentType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->$VALUES:[Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {v0}, [Lcom/android/camera/dualvideo/render/ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/dualvideo/render/ContentType;

    return-object v0
.end method


# virtual methods
.method public getWeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/dualvideo/render/ContentType;->mWeight:I

    return v0
.end method
