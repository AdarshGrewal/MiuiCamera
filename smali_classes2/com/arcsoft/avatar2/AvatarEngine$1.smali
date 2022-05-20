.class public Lcom/arcsoft/avatar2/AvatarEngine$1;
.super Ljava/lang/Object;
.source "AvatarEngine.java"

# interfaces
.implements Lcom/arcsoft/avatar2/AvatarConfig$GetSupportConfigTypeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/avatar2/AvatarEngine;->getSupportConfigType(I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/arcsoft/avatar2/AvatarEngine;


# direct methods
.method public constructor <init>(Lcom/arcsoft/avatar2/AvatarEngine;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/AvatarEngine$1;->b:Lcom/arcsoft/avatar2/AvatarEngine;

    iput-object p2, p0, Lcom/arcsoft/avatar2/AvatarEngine$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSupportConfigType(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;

    invoke-direct {v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;-><init>()V

    .line 2
    iput p2, v0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;->configType:I

    .line 3
    iput-object p1, v0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigType;->configTypeDesc:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/arcsoft/avatar2/AvatarEngine$1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
