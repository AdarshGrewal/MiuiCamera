.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOo0;->OooO00o:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOo0;->OooO00o:I

    check-cast p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->OooO00o(ILcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z

    move-result p1

    return p1
.end method
