.class public Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$1;
.super Ljava/lang/Object;
.source "FragmentVideoSkyProcess.java"

# interfaces
.implements Lcom/xiaomi/magicvideosky/EffectNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->startVideoPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$1;->this$0:Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnReceiveFailed()V
    .locals 2

    const-string v0, "FragmentVideoSkyProcess"

    const-string v1, "OnReceiveFailed"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnReceiveFinish()V
    .locals 2

    const-string v0, "FragmentVideoSkyProcess"

    const-string v1, "OnReceiveFinish"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
