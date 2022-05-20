.class public final Lcom/google/android/play/core/remote/DeathRecipientImpl;
.super Ljava/lang/Object;
.source "DeathRecipientImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/remote/RemoteManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/play/core/remote/DeathRecipientImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/remote/DeathRecipientImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {v0}, Lcom/google/android/play/core/remote/RemoteManager;->reportBinderDeath()V

    return-void
.end method
