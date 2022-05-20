.class public LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0oo;
.super Ljava/lang/Object;
.source "DocumentDataParser.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO<",
        "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0O0;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0oo;

.field public static final OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0oo;

    invoke-direct {v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0oo;-><init>()V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0oo;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0oo;

    const-string/jumbo v1, "t"

    const-string v2, "f"

    const-string/jumbo v3, "s"

    const-string v4, "j"

    const-string/jumbo v5, "tr"

    const-string v6, "lh"

    const-string v7, "ls"

    const-string v8, "fc"

    const-string/jumbo v9, "sc"

    const-string/jumbo v10, "sw"

    const-string/jumbo v11, "of"

    .line 2
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO00o([Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    move-result-object v0

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0O0;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;

    .line 3
    invoke-virtual/range {p1 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0O0()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v9, v0

    move-object v6, v1

    move-object v7, v6

    move v10, v2

    move v13, v10

    move v14, v13

    move v8, v3

    move v11, v8

    move v12, v11

    move v15, v12

    move/from16 v16, v4

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0oo;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-virtual/range {p1 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOO0o()V

    .line 7
    invoke-virtual/range {p1 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOOO0()V

    goto :goto_0

    .line 8
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oO()Z

    move-result v16

    goto :goto_0

    .line 9
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oo()D

    move-result-wide v2

    double-to-float v15, v2

    goto :goto_0

    .line 10
    :pswitch_2
    invoke-static/range {p1 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOOOo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;)I

    move-result v14

    goto :goto_0

    .line 11
    :pswitch_3
    invoke-static/range {p1 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOOOo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;)I

    move-result v13

    goto :goto_0

    .line 12
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oo()D

    move-result-wide v2

    double-to-float v12, v2

    goto :goto_0

    .line 13
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oo()D

    move-result-wide v2

    double-to-float v11, v2

    goto :goto_0

    .line 14
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO()I

    move-result v10

    goto :goto_0

    .line 15
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO()I

    move-result v0

    .line 16
    sget-object v2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-gt v0, v2, :cond_1

    if-gez v0, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    invoke-static {}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;->values()[LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;

    move-result-object v2

    aget-object v9, v2, v0

    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    sget-object v9, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;

    goto :goto_0

    .line 19
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oo()D

    move-result-wide v2

    double-to-float v8, v2

    goto :goto_0

    .line 20
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOO0O()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 21
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOO0O()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object/from16 v1, p1

    .line 22
    invoke-virtual/range {p1 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo()V

    .line 23
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0O0;

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/String;FLOooO00o/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;IFFIIFZ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0O0;

    move-result-object p1

    return-object p1
.end method
