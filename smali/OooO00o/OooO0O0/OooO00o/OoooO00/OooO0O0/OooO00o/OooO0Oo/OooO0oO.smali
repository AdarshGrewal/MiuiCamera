.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Landroid/graphics/Rect;

.field private final synthetic OooO0O0:[B


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0oO;->OooO00o:Landroid/graphics/Rect;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0oO;->OooO0O0:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0oO;->OooO00o:Landroid/graphics/Rect;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0oO;->OooO0O0:[B

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->OooO00o(Landroid/graphics/Rect;[B)V

    return-void
.end method
