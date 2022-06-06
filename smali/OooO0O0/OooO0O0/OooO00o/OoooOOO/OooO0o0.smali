.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOOO/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/preferences/MoreModeStylePreference;

.field private final synthetic OooO0O0:Landroid/widget/VideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/preferences/MoreModeStylePreference;Landroid/widget/VideoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/OooO0o0;->OooO00o:Lcom/android/camera/preferences/MoreModeStylePreference;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/OooO0o0;->OooO0O0:Landroid/widget/VideoView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/OooO0o0;->OooO00o:Lcom/android/camera/preferences/MoreModeStylePreference;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/OooO0o0;->OooO0O0:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/MoreModeStylePreference;->OooO00o(Landroid/widget/VideoView;)V

    return-void
.end method
