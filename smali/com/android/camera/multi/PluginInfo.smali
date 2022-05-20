.class public Lcom/android/camera/multi/PluginInfo;
.super Ljava/lang/Object;
.source "PluginInfo.java"

# interfaces
.implements Lcom/android/camera/resource/BaseResourceDownloadable;


# instance fields
.field public resourceItem:Lcom/android/camera/resource/BaseResourceItem;

.field public sha1Base16:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/camera/multi/PluginInfo;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/multi/PluginInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setState(I)V
    .locals 0

    return-void
.end method
