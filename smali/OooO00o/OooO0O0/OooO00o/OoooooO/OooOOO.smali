.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/ui/FaceView;

.field private final synthetic OooO0O0:Lcom/android/camera/trackfocus/EyeInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/FaceView;Lcom/android/camera/trackfocus/EyeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOO;->OooO00o:Lcom/android/camera/ui/FaceView;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOO;->OooO0O0:Lcom/android/camera/trackfocus/EyeInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOO;->OooO00o:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOO;->OooO0O0:Lcom/android/camera/trackfocus/EyeInfo;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->OooO00o(Lcom/android/camera/trackfocus/EyeInfo;)V

    return-void
.end method
