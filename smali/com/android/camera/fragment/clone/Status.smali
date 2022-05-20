.class public final enum Lcom/android/camera/fragment/clone/Status;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/fragment/clone/Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/camera/fragment/clone/Status;

.field public static final enum CAPTURING:Lcom/android/camera/fragment/clone/Status;

.field public static final enum EDIT:Lcom/android/camera/fragment/clone/Status;

.field public static final enum SAVE:Lcom/android/camera/fragment/clone/Status;

.field public static final enum SHARE:Lcom/android/camera/fragment/clone/Status;

.field public static final enum STOP:Lcom/android/camera/fragment/clone/Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/camera/fragment/clone/Status;

    const/4 v1, 0x0

    const-string v2, "CAPTURING"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/fragment/clone/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/clone/Status;->CAPTURING:Lcom/android/camera/fragment/clone/Status;

    .line 2
    new-instance v0, Lcom/android/camera/fragment/clone/Status;

    const/4 v2, 0x1

    const-string v3, "STOP"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/fragment/clone/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/clone/Status;->STOP:Lcom/android/camera/fragment/clone/Status;

    .line 3
    new-instance v0, Lcom/android/camera/fragment/clone/Status;

    const/4 v3, 0x2

    const-string v4, "EDIT"

    invoke-direct {v0, v4, v3}, Lcom/android/camera/fragment/clone/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/clone/Status;->EDIT:Lcom/android/camera/fragment/clone/Status;

    .line 4
    new-instance v0, Lcom/android/camera/fragment/clone/Status;

    const/4 v4, 0x3

    const-string v5, "SAVE"

    invoke-direct {v0, v5, v4}, Lcom/android/camera/fragment/clone/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/clone/Status;->SAVE:Lcom/android/camera/fragment/clone/Status;

    .line 5
    new-instance v0, Lcom/android/camera/fragment/clone/Status;

    const/4 v5, 0x4

    const-string v6, "SHARE"

    invoke-direct {v0, v6, v5}, Lcom/android/camera/fragment/clone/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/clone/Status;->SHARE:Lcom/android/camera/fragment/clone/Status;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/android/camera/fragment/clone/Status;

    .line 6
    sget-object v7, Lcom/android/camera/fragment/clone/Status;->CAPTURING:Lcom/android/camera/fragment/clone/Status;

    aput-object v7, v6, v1

    sget-object v1, Lcom/android/camera/fragment/clone/Status;->STOP:Lcom/android/camera/fragment/clone/Status;

    aput-object v1, v6, v2

    sget-object v1, Lcom/android/camera/fragment/clone/Status;->EDIT:Lcom/android/camera/fragment/clone/Status;

    aput-object v1, v6, v3

    sget-object v1, Lcom/android/camera/fragment/clone/Status;->SAVE:Lcom/android/camera/fragment/clone/Status;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/android/camera/fragment/clone/Status;->$VALUES:[Lcom/android/camera/fragment/clone/Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/fragment/clone/Status;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/clone/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/clone/Status;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/fragment/clone/Status;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/fragment/clone/Status;->$VALUES:[Lcom/android/camera/fragment/clone/Status;

    invoke-virtual {v0}, [Lcom/android/camera/fragment/clone/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/fragment/clone/Status;

    return-object v0
.end method
