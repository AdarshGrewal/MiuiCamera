.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0OO/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mode/dualcam/DualCamModeUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mode/dualcam/DualCamModeUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0OO/OooO0O0;->OooO00o:Lcom/android/camera/features/mode/dualcam/DualCamModeUI;

    return-void
.end method


# virtual methods
.method public final updateResource(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooO0OO/OooO0O0;->OooO00o:Lcom/android/camera/features/mode/dualcam/DualCamModeUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mode/dualcam/DualCamModeUI;->OooO00o(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p1

    return-object p1
.end method
