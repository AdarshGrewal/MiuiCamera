.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000o0/OooOO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/ActivityBase;

.field private final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ActivityBase;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000o0/OooOO0o;->OooO00o:Lcom/android/camera/ActivityBase;

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000o0/OooOO0o;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000o0/OooOO0o;->OooO00o:Lcom/android/camera/ActivityBase;

    iget v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000o0/OooOO0o;->OooO0O0:I

    invoke-static {v0, v1}, Lcom/android/camera/module/video/UserRecordSetting;->OooO00o(Lcom/android/camera/ActivityBase;I)V

    return-void
.end method
