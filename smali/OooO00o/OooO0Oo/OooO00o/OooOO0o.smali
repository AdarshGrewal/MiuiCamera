.class public LOooO00o/OooO0Oo/OooO00o/OooOO0o;
.super Ljava/lang/Object;
.source "StringPointer.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Comparable<",
        "LOooO00o/OooO0Oo/OooO00o/OooOO0o;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LOooO00o/OooO0Oo/OooO00o/OooOO0o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final OooO00o:[C

.field public final OooO0O0:I

.field public final OooO0OO:I

.field public OooO0Oo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LOooO00o/OooO0Oo/OooO00o/OooOO0o$OooO00o;

    invoke-direct {v0}, LOooO00o/OooO0Oo/OooO00o/OooOO0o$OooO00o;-><init>()V

    sput-object v0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0Oo:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0Oo:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0Oo:I

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    .line 4
    iput v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    .line 5
    array-length p1, p1

    iput p1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0Oo:I

    .line 8
    iput-object p1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    .line 9
    iput p2, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    .line 10
    iput p3, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public OooO00o(I)I
    .locals 3

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    iget v1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    add-int v2, v1, p1

    aget-char v2, v0, v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget-char p1, v0, v1

    add-int/2addr v2, p1

    return v2
.end method

.method public OooO00o(LOooO00o/OooO0Oo/OooO00o/OooOO0o;)I
    .locals 8

    .line 6
    iget v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    .line 7
    iget v1, p1, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 9
    iget-object v3, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    .line 10
    iget-object v4, p1, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 11
    iget v6, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    add-int/2addr v6, v5

    aget-char v6, v3, v6

    .line 12
    iget v7, p1, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    add-int/2addr v7, v5

    aget-char v7, v4, v7

    if-eq v6, v7, :cond_0

    sub-int/2addr v6, v7

    return v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public OooO00o(II)LOooO00o/OooO0Oo/OooO00o/OooOO0o;
    .locals 3

    .line 5
    new-instance v0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    iget-object v1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    iget v2, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    add-int/2addr v2, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, v2, p2}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;-><init>([CII)V

    return-object v0
.end method

.method public OooO00o(IIC)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    .line 4
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    iget v1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    add-int/2addr v1, p1

    aput-char p3, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO00o(ILOooO00o/OooO0Oo/OooO00o/OooOO0o;)Z
    .locals 6

    .line 2
    iget v0, p2, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    iget v1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 3
    iget-object v3, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    iget v4, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    add-int/2addr v4, p1

    add-int/2addr v4, v0

    aget-char v3, v3, v4

    iget-object v4, p2, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    iget v5, p2, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public OooO0O0(I)I
    .locals 3

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    iget v1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    add-int v2, v1, p1

    aget-char v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget-char p1, v0, v1

    or-int/2addr p1, v2

    return p1
.end method

.method public OooO0OO(I)LOooO00o/OooO0Oo/OooO00o/OooOO0o;
    .locals 4

    .line 1
    new-instance v0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    iget-object v1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    iget v2, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    add-int/2addr v2, p1

    iget v3, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    sub-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;-><init>([CII)V

    return-object v0
.end method

.method public charAt(I)C
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    iget v1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    add-int/2addr v1, p1

    aget-char p1, v0, v1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    invoke-virtual {p0, p1}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o(LOooO00o/OooO0Oo/OooO00o/OooOO0o;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    .line 3
    iget v1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    iget v3, p1, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    if-ne v1, v3, :cond_3

    .line 4
    iget-object v1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    .line 5
    iget-object v3, p1, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    move v4, v2

    .line 6
    :goto_0
    iget v5, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    if-ge v4, v5, :cond_2

    .line 7
    iget v5, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    add-int/2addr v5, v4

    aget-char v5, v1, v5

    iget v6, p1, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    add-int/2addr v6, v4

    aget-char v6, v3, v6

    if-eq v5, v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0Oo:I

    if-nez v0, :cond_1

    .line 2
    iget v1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    iget v3, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    add-int/2addr v3, v1

    aget-char v2, v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0Oo:I

    :cond_1
    return v0
.end method

.method public length()I
    .locals 1

    .line 1
    iget v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o(II)LOooO00o/OooO0Oo/OooO00o/OooOO0o;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    iget v2, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    iget v3, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO00o:[C

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 2
    iget p2, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0O0:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0OO:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0o;->OooO0Oo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
