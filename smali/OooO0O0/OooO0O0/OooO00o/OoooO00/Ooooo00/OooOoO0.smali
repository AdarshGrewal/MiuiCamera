.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO00/Ooooo00/OooOoO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Ooooo00/OooOoO0;->OooO00o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/Ooooo00/OooOoO0;->OooO00o:Ljava/util/List;

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->OooO00o(Ljava/util/List;Landroid/widget/ImageView;)V

    return-void
.end method
