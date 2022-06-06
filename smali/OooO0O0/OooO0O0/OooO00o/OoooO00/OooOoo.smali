.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/FragmentMainContent;

.field private final synthetic OooO0O0:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field private final synthetic OooO0OO:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentMainContent;Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOoo;->OooO00o:Lcom/android/camera/fragment/FragmentMainContent;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOoo;->OooO0O0:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iput-boolean p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOoo;->OooO0OO:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOoo;->OooO00o:Lcom/android/camera/fragment/FragmentMainContent;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOoo;->OooO0O0:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iget-boolean v2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOoo;->OooO0OO:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/FragmentMainContent;->OooO00o(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V

    return-void
.end method
