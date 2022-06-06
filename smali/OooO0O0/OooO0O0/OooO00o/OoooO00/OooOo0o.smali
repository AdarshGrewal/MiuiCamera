.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/FragmentMainContent$2;

.field private final synthetic OooO0O0:Ljava/util/List;

.field private final synthetic OooO0OO:Landroid/widget/TextView;

.field private final synthetic OooO0Oo:Lcom/android/camera/aiwatermark/data/WatermarkItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentMainContent$2;Ljava/util/List;Landroid/widget/TextView;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0o;->OooO00o:Lcom/android/camera/fragment/FragmentMainContent$2;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0o;->OooO0O0:Ljava/util/List;

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0o;->OooO0OO:Landroid/widget/TextView;

    iput-object p4, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0o;->OooO0Oo:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0o;->OooO00o:Lcom/android/camera/fragment/FragmentMainContent$2;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0o;->OooO0O0:Ljava/util/List;

    iget-object v2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0o;->OooO0OO:Landroid/widget/TextView;

    iget-object v3, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0o;->OooO0Oo:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/FragmentMainContent$2;->OooO00o(Ljava/util/List;Landroid/widget/TextView;Lcom/android/camera/aiwatermark/data/WatermarkItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
