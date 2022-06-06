.class public abstract Lcom/xiaomi/idm/api/IDMService$Event;
.super Ljava/lang/Object;
.source "IDMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/IDMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Event"
.end annotation


# instance fields
.field public mEid:I

.field public mService:Lcom/xiaomi/idm/api/IDMService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/api/IDMService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMService$Event;->mService:Lcom/xiaomi/idm/api/IDMService;

    iput p2, p0, Lcom/xiaomi/idm/api/IDMService$Event;->mEid:I

    return-void
.end method


# virtual methods
.method public getEid()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/idm/api/IDMService$Event;->mEid:I

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMService$Event;->mService:Lcom/xiaomi/idm/api/IDMService;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onEvent([B)V
.end method
