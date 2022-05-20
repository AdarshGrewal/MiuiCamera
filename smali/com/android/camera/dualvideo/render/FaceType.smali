.class public final enum Lcom/android/camera/dualvideo/render/FaceType;
.super Ljava/lang/Enum;
.source "FaceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/dualvideo/render/FaceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/camera/dualvideo/render/FaceType;

.field public static final enum FACE_BACK:Lcom/android/camera/dualvideo/render/FaceType;

.field public static final enum FACE_FRONT:Lcom/android/camera/dualvideo/render/FaceType;

.field public static final enum FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;


# instance fields
.field public mIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/camera/dualvideo/render/FaceType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "FACE_FRONT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/camera/dualvideo/render/FaceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_FRONT:Lcom/android/camera/dualvideo/render/FaceType;

    new-instance v0, Lcom/android/camera/dualvideo/render/FaceType;

    const/4 v3, 0x2

    const-string v4, "FACE_BACK"

    invoke-direct {v0, v4, v2, v3}, Lcom/android/camera/dualvideo/render/FaceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_BACK:Lcom/android/camera/dualvideo/render/FaceType;

    new-instance v0, Lcom/android/camera/dualvideo/render/FaceType;

    const/4 v4, 0x3

    const-string v5, "FACE_REMOTE"

    invoke-direct {v0, v5, v3, v4}, Lcom/android/camera/dualvideo/render/FaceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    new-array v4, v4, [Lcom/android/camera/dualvideo/render/FaceType;

    .line 2
    sget-object v5, Lcom/android/camera/dualvideo/render/FaceType;->FACE_FRONT:Lcom/android/camera/dualvideo/render/FaceType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/android/camera/dualvideo/render/FaceType;->FACE_BACK:Lcom/android/camera/dualvideo/render/FaceType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/android/camera/dualvideo/render/FaceType;->$VALUES:[Lcom/android/camera/dualvideo/render/FaceType;

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
    iput p3, p0, Lcom/android/camera/dualvideo/render/FaceType;->mIndex:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/dualvideo/render/FaceType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/dualvideo/render/FaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/render/FaceType;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/dualvideo/render/FaceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->$VALUES:[Lcom/android/camera/dualvideo/render/FaceType;

    invoke-virtual {v0}, [Lcom/android/camera/dualvideo/render/FaceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/dualvideo/render/FaceType;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/dualvideo/render/FaceType;->mIndex:I

    return v0
.end method
