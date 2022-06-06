.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0OO/OooO0o0/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

.field private final synthetic OooO0O0:Ljava/lang/String;

.field private final synthetic OooO0OO:I

.field private final synthetic OooO0Oo:Lcom/android/camera/aiwatermark/data/WatermarkItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0OO/OooO0o0/OooO0OO;->OooO00o:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0OO/OooO0o0/OooO0OO;->OooO0O0:Ljava/lang/String;

    iput p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0OO/OooO0o0/OooO0OO;->OooO0OO:I

    iput-object p4, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0OO/OooO0o0/OooO0OO;->OooO0Oo:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0OO/OooO0o0/OooO0OO;->OooO00o:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0OO/OooO0o0/OooO0OO;->OooO0O0:Ljava/lang/String;

    iget v2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0OO/OooO0o0/OooO0OO;->OooO0OO:I

    iget-object v3, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Oooo0OO/OooO0o0/OooO0OO;->OooO0Oo:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->OooO00o(Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V

    return-void
.end method
