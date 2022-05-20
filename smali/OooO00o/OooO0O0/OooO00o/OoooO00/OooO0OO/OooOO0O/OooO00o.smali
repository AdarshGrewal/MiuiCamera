.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOO0O/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mode/pixel/PixelModeUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mode/pixel/PixelModeUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOO0O/OooO00o;->OooO00o:Lcom/android/camera/features/mode/pixel/PixelModeUI;

    return-void
.end method


# virtual methods
.method public final updateResource(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOO0O/OooO00o;->OooO00o:Lcom/android/camera/features/mode/pixel/PixelModeUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->OooO00o(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p1

    return-object p1
.end method
