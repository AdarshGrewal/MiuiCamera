.class public final Lf;
.super La;
.source "PG"

# interfaces
.implements Lg;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession"

    .line 1
    invoke-direct {p0, p1, v0}, La;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final OooO00o([B)V
    .locals 1

    .line 1
    invoke-virtual {p0}, La;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, La;->OooO00o(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final OooO00o([BLk;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, La;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6
    invoke-static {v0, p2}, Lc;->OooO00o(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    .line 7
    invoke-virtual {p0, p1, v0}, La;->OooO00o(ILandroid/os/Parcel;)V

    return-void
.end method
