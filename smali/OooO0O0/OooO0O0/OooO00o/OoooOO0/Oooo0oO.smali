.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOO0/Oooo0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/protocol/ModeProtocol$CloneProcess;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$CloneProcess;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/Oooo0oO;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/Oooo0oO;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    invoke-static {v0}, Lcom/android/camera/module/CloneModule;->OooO00o(Lcom/android/camera/protocol/ModeProtocol$CloneProcess;)V

    return-void
.end method
