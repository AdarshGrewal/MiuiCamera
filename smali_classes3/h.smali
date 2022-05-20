.class public abstract Lh;
.super Lb;
.source "PG"

# interfaces
.implements Li;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSessionCallback"

    .line 1
    invoke-direct {p0, v0}, Lb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final OooO00o(ILandroid/os/Parcel;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    sget-object v1, Lk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p2, v1}, Lc;->OooO00o(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lk;

    .line 3
    invoke-interface {p0, p1, p2}, Li;->OooO00o([BLk;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
