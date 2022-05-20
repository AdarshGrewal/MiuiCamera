.class public Lcom/google/android/play/core/listener/StateUpdatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StateUpdatedReceiver.java"


# instance fields
.field public final mRegister:Lcom/google/android/play/core/listener/StateUpdateListenerRegister;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/listener/StateUpdateListenerRegister;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/play/core/listener/StateUpdatedReceiver;->mRegister:Lcom/google/android/play/core/listener/StateUpdateListenerRegister;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/listener/StateUpdatedReceiver;->mRegister:Lcom/google/android/play/core/listener/StateUpdateListenerRegister;

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->onReceived(Landroid/content/Intent;)V

    return-void
.end method
