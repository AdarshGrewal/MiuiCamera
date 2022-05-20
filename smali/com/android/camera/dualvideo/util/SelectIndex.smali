.class public final enum Lcom/android/camera/dualvideo/util/SelectIndex;
.super Ljava/lang/Enum;
.source "SelectIndex.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/dualvideo/util/SelectIndex;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/camera/dualvideo/util/SelectIndex;

.field public static final enum INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

.field public static final enum INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

.field public static final enum INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;


# instance fields
.field public mIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v1, 0x0

    const-string v2, "INDEX_0"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/camera/dualvideo/util/SelectIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    new-instance v0, Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v2, 0x1

    const-string v3, "INDEX_1"

    invoke-direct {v0, v3, v2, v2}, Lcom/android/camera/dualvideo/util/SelectIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    new-instance v0, Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v3, 0x2

    const-string v4, "INDEX_2"

    invoke-direct {v0, v4, v3, v3}, Lcom/android/camera/dualvideo/util/SelectIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/android/camera/dualvideo/util/SelectIndex;

    .line 2
    sget-object v5, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    aput-object v5, v4, v1

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/android/camera/dualvideo/util/SelectIndex;->$VALUES:[Lcom/android/camera/dualvideo/util/SelectIndex;

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
    iput p3, p0, Lcom/android/camera/dualvideo/util/SelectIndex;->mIndex:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/dualvideo/util/SelectIndex;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/util/SelectIndex;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/dualvideo/util/SelectIndex;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->$VALUES:[Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-virtual {v0}, [Lcom/android/camera/dualvideo/util/SelectIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/dualvideo/util/SelectIndex;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/dualvideo/util/SelectIndex;->mIndex:I

    return v0
.end method
