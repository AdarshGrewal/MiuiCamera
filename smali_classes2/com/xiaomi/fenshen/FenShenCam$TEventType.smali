.class public final enum Lcom/xiaomi/fenshen/FenShenCam$TEventType;
.super Ljava/lang/Enum;
.source "FenShenCam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/fenshen/FenShenCam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/fenshen/FenShenCam$TEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/fenshen/FenShenCam$TEventType;

.field public static final enum CLICK_DOWN:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

.field public static final enum CLICK_UP:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

.field public static final enum DRAG:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

.field public static final enum GENERIC_UP:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

.field public static final enum SCALE:Lcom/xiaomi/fenshen/FenShenCam$TEventType;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    const/4 v1, 0x0

    const-string v2, "CLICK_UP"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/fenshen/FenShenCam$TEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->CLICK_UP:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    .line 2
    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    const/4 v2, 0x1

    const-string v3, "CLICK_DOWN"

    invoke-direct {v0, v3, v2}, Lcom/xiaomi/fenshen/FenShenCam$TEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->CLICK_DOWN:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    .line 3
    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    const/4 v3, 0x2

    const-string v4, "GENERIC_UP"

    invoke-direct {v0, v4, v3}, Lcom/xiaomi/fenshen/FenShenCam$TEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->GENERIC_UP:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    .line 4
    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    const/4 v4, 0x3

    const-string v5, "DRAG"

    invoke-direct {v0, v5, v4}, Lcom/xiaomi/fenshen/FenShenCam$TEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->DRAG:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    .line 5
    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    const/4 v5, 0x4

    const-string v6, "SCALE"

    invoke-direct {v0, v6, v5}, Lcom/xiaomi/fenshen/FenShenCam$TEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->SCALE:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    .line 6
    sget-object v7, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->CLICK_UP:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->CLICK_DOWN:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->GENERIC_UP:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->DRAG:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->$VALUES:[Lcom/xiaomi/fenshen/FenShenCam$TEventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/fenshen/FenShenCam$TEventType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/fenshen/FenShenCam$TEventType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->$VALUES:[Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    invoke-virtual {v0}, [Lcom/xiaomi/fenshen/FenShenCam$TEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    return-object v0
.end method
