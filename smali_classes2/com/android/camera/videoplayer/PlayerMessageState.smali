.class public final enum Lcom/android/camera/videoplayer/PlayerMessageState;
.super Ljava/lang/Enum;
.source "PlayerMessageState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/videoplayer/PlayerMessageState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum CLEARING_PLAYER_INSTANCE:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum CREATING_PLAYER_INSTANCE:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum DATA_SOURCE_SET:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum END:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum ERROR:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum IDLE:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum INITIALIZED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum PAUSED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum PAUSING:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum PLAYBACK_COMPLETED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum PLAYER_INSTANCE_CLEARED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum PLAYER_INSTANCE_CREATED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum PREPARED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum PREPARING:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum RELEASED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum RELEASING:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum RESET:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum RESETTING:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum SETTING_DATA_SOURCE:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum SETTING_NEW_PLAYER:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum STARTED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum STARTING:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum STOPPED:Lcom/android/camera/videoplayer/PlayerMessageState;

.field public static final enum STOPPING:Lcom/android/camera/videoplayer/PlayerMessageState;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/4 v1, 0x0

    const-string v2, "SETTING_NEW_PLAYER"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->SETTING_NEW_PLAYER:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 2
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/4 v2, 0x1

    const-string v3, "IDLE"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->IDLE:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 3
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/4 v3, 0x2

    const-string v4, "INITIALIZED"

    invoke-direct {v0, v4, v3}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->INITIALIZED:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 4
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/4 v4, 0x3

    const-string v5, "PREPARING"

    invoke-direct {v0, v5, v4}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PREPARING:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 5
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/4 v5, 0x4

    const-string v6, "PREPARED"

    invoke-direct {v0, v6, v5}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PREPARED:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 6
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/4 v6, 0x5

    const-string v7, "STARTING"

    invoke-direct {v0, v7, v6}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->STARTING:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 7
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/4 v7, 0x6

    const-string v8, "STARTED"

    invoke-direct {v0, v8, v7}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->STARTED:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 8
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/4 v8, 0x7

    const-string v9, "PAUSING"

    invoke-direct {v0, v9, v8}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PAUSING:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 9
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v9, 0x8

    const-string v10, "PAUSED"

    invoke-direct {v0, v10, v9}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PAUSED:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 10
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v10, 0x9

    const-string v11, "STOPPING"

    invoke-direct {v0, v11, v10}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->STOPPING:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 11
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v11, 0xa

    const-string v12, "STOPPED"

    invoke-direct {v0, v12, v11}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->STOPPED:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 12
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v12, 0xb

    const-string v13, "RELEASING"

    invoke-direct {v0, v13, v12}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->RELEASING:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 13
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v13, 0xc

    const-string v14, "RELEASED"

    invoke-direct {v0, v14, v13}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->RELEASED:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 14
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v14, 0xd

    const-string v15, "RESETTING"

    invoke-direct {v0, v15, v14}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->RESETTING:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 15
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v15, 0xe

    const-string v14, "RESET"

    invoke-direct {v0, v14, v15}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->RESET:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 16
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v14, 0xf

    const-string v15, "CLEARING_PLAYER_INSTANCE"

    invoke-direct {v0, v15, v14}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->CLEARING_PLAYER_INSTANCE:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 17
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v15, 0x10

    const-string v14, "PLAYER_INSTANCE_CLEARED"

    invoke-direct {v0, v14, v15}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PLAYER_INSTANCE_CLEARED:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 18
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v14, 0x11

    const-string v15, "CREATING_PLAYER_INSTANCE"

    invoke-direct {v0, v15, v14}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->CREATING_PLAYER_INSTANCE:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 19
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v15, 0x12

    const-string v14, "PLAYER_INSTANCE_CREATED"

    invoke-direct {v0, v14, v15}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PLAYER_INSTANCE_CREATED:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 20
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v14, 0x13

    const-string v15, "SETTING_DATA_SOURCE"

    invoke-direct {v0, v15, v14}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->SETTING_DATA_SOURCE:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 21
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v15, 0x14

    const-string v14, "DATA_SOURCE_SET"

    invoke-direct {v0, v14, v15}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->DATA_SOURCE_SET:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 22
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v14, 0x15

    const-string v15, "PLAYBACK_COMPLETED"

    invoke-direct {v0, v15, v14}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PLAYBACK_COMPLETED:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 23
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v15, "END"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->END:Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 24
    new-instance v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    const-string v14, "ERROR"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/android/camera/videoplayer/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->ERROR:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v14, 0x18

    new-array v14, v14, [Lcom/android/camera/videoplayer/PlayerMessageState;

    .line 25
    sget-object v15, Lcom/android/camera/videoplayer/PlayerMessageState;->SETTING_NEW_PLAYER:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v15, v14, v1

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->IDLE:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->INITIALIZED:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v1, v14, v3

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->PREPARING:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v1, v14, v4

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->PREPARED:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v1, v14, v5

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->STARTING:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v1, v14, v6

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->STARTED:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v1, v14, v7

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->PAUSING:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v1, v14, v8

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->PAUSED:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v1, v14, v9

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->STOPPING:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v1, v14, v10

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->STOPPED:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v1, v14, v11

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->RELEASING:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v1, v14, v12

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->RELEASED:Lcom/android/camera/videoplayer/PlayerMessageState;

    aput-object v1, v14, v13

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->RESETTING:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->RESET:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->CLEARING_PLAYER_INSTANCE:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->PLAYER_INSTANCE_CLEARED:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->CREATING_PLAYER_INSTANCE:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->PLAYER_INSTANCE_CREATED:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->SETTING_DATA_SOURCE:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->DATA_SOURCE_SET:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->PLAYBACK_COMPLETED:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/videoplayer/PlayerMessageState;->END:Lcom/android/camera/videoplayer/PlayerMessageState;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    const/16 v1, 0x17

    aput-object v0, v14, v1

    sput-object v14, Lcom/android/camera/videoplayer/PlayerMessageState;->$VALUES:[Lcom/android/camera/videoplayer/PlayerMessageState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/videoplayer/PlayerMessageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->$VALUES:[Lcom/android/camera/videoplayer/PlayerMessageState;

    invoke-virtual {v0}, [Lcom/android/camera/videoplayer/PlayerMessageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object v0
.end method
