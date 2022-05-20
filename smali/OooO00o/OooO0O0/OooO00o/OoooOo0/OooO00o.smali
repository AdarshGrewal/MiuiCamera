.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOo0/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field private final synthetic OooO00o:Landroid/widget/VideoView;

.field private final synthetic OooO0O0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/VideoView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOo0/OooO00o;->OooO00o:Landroid/widget/VideoView;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/OoooOo0/OooO00o;->OooO0O0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOo0/OooO00o;->OooO00o:Landroid/widget/VideoView;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/OoooOo0/OooO00o;->OooO0O0:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/camera/preferences/EffectComparisonPreference;->OooO00o(Landroid/widget/VideoView;Landroid/view/View;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
