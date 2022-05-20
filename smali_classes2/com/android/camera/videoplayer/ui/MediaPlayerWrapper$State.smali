.class public final enum Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;
.super Ljava/lang/Enum;
.source "MediaPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum END:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum ERROR:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum IDLE:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum INITIALIZED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum PAUSED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum PLAYBACK_COMPLETED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum PREPARED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum PREPARING:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum STARTED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

.field public static final enum STOPPED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->IDLE:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    .line 2
    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const/4 v2, 0x1

    const-string v3, "INITIALIZED"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->INITIALIZED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    .line 3
    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const/4 v3, 0x2

    const-string v4, "PREPARING"

    invoke-direct {v0, v4, v3}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PREPARING:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    .line 4
    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const/4 v4, 0x3

    const-string v5, "PREPARED"

    invoke-direct {v0, v5, v4}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PREPARED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    .line 5
    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const/4 v5, 0x4

    const-string v6, "STARTED"

    invoke-direct {v0, v6, v5}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->STARTED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    .line 6
    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const/4 v6, 0x5

    const-string v7, "PAUSED"

    invoke-direct {v0, v7, v6}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PAUSED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    .line 7
    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const/4 v7, 0x6

    const-string v8, "STOPPED"

    invoke-direct {v0, v8, v7}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->STOPPED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    .line 8
    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const/4 v8, 0x7

    const-string v9, "PLAYBACK_COMPLETED"

    invoke-direct {v0, v9, v8}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PLAYBACK_COMPLETED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    .line 9
    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const/16 v9, 0x8

    const-string v10, "END"

    invoke-direct {v0, v10, v9}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->END:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    .line 10
    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const/16 v10, 0x9

    const-string v11, "ERROR"

    invoke-direct {v0, v11, v10}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->ERROR:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    .line 11
    sget-object v12, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->IDLE:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v12, v11, v1

    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->INITIALIZED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v1, v11, v2

    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PREPARING:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v1, v11, v3

    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PREPARED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v1, v11, v4

    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->STARTED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v1, v11, v5

    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PAUSED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v1, v11, v6

    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->STOPPED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v1, v11, v7

    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PLAYBACK_COMPLETED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v1, v11, v8

    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->END:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->$VALUES:[Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->$VALUES:[Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0}, [Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    return-object v0
.end method
