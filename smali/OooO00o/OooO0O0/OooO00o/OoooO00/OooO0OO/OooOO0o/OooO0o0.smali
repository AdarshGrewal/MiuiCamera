.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOO0o/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;


# instance fields
.field private final synthetic OooO00o:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOO0o/OooO0o0;->OooO00o:Z

    return-void
.end method


# virtual methods
.method public final updateResource(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 1

    iget-boolean v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0OO/OooOO0o/OooO0o0;->OooO00o:Z

    invoke-static {v0, p1}, Lcom/android/camera/features/mode/portrait/PortraitModeUI;->OooO00o(ZI)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p1

    return-object p1
.end method
