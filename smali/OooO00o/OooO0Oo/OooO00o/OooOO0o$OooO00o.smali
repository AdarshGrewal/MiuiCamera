.class public final LOooO00o/OooO0Oo/OooO00o/OooOO0o$OooO00o;
.super Ljava/lang/Object;
.source "StringPointer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO0Oo/OooO00o/OooOO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "LOooO00o/OooO0Oo/OooO00o/OooOO0o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)LOooO00o/OooO0Oo/OooO00o/OooOO0o;
    .locals 1

    .line 2
    new-instance v0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    invoke-direct {v0, p1}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LOooO00o/OooO0Oo/OooO00o/OooOO0o$OooO00o;->createFromParcel(Landroid/os/Parcel;)LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[LOooO00o/OooO0Oo/OooO00o/OooOO0o;
    .locals 0

    .line 2
    new-array p1, p1, [LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LOooO00o/OooO0Oo/OooO00o/OooOO0o$OooO00o;->newArray(I)[LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    move-result-object p1

    return-object p1
.end method
