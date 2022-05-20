.class public LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0;
.super Ljava/lang/Object;
.source "ShapeStrokeParser.java"


# static fields
.field public static OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

.field public static final OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "nm"

    const-string v1, "c"

    const-string/jumbo v2, "w"

    const-string/jumbo v3, "o"

    const-string v4, "lc"

    const-string v5, "lj"

    const-string v6, "ml"

    const-string v7, "hd"

    const-string v8, "d"

    .line 1
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO00o([Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    move-result-object v0

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    const-string v0, "n"

    const-string/jumbo v1, "v"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO00o([Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    move-result-object v0

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOo;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v11, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 3
    sget-object v13, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    invoke-virtual {v0, v13}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;)I

    move-result v13

    const/4 v14, 0x1

    packed-switch v13, :pswitch_data_0

    move-object/from16 v2, p1

    const/4 v1, 0x0

    .line 4
    invoke-virtual/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOOO0()V

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o()V

    .line 6
    :goto_1
    invoke-virtual/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 7
    invoke-virtual/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0O0()V

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 8
    :goto_2
    invoke-virtual/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 9
    sget-object v2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    invoke-virtual {v0, v2}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;)I

    move-result v2

    if-eqz v2, :cond_1

    if-eq v2, v14, :cond_0

    .line 10
    invoke-virtual/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOO0o()V

    .line 11
    invoke-virtual/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOOO0()V

    goto :goto_2

    .line 12
    :cond_0
    invoke-static/range {p0 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO0OO(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v15

    goto :goto_2

    .line 13
    :cond_1
    invoke-virtual/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOO0O()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo()V

    .line 15
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v1, 0x64

    const/4 v14, 0x2

    if-eq v2, v1, :cond_5

    const/16 v1, 0x67

    if-eq v2, v1, :cond_4

    const/16 v1, 0x6f

    if-eq v2, v1, :cond_3

    goto :goto_3

    :cond_3
    const-string/jumbo v1, "o"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    const-string v1, "g"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v14

    goto :goto_4

    :cond_5
    const-string v1, "d"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v2, -0x1

    :goto_4
    if-eqz v2, :cond_8

    const/4 v1, 0x1

    if-eq v2, v1, :cond_7

    if-eq v2, v14, :cond_7

    move-object/from16 v2, p1

    goto :goto_5

    :cond_7
    move-object/from16 v2, p1

    .line 16
    invoke-virtual {v2, v1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(Z)V

    .line 17
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    move-object/from16 v2, p1

    const/4 v1, 0x1

    move-object v5, v15

    :goto_5
    move v14, v1

    goto :goto_1

    :cond_9
    move-object/from16 v2, p1

    move v1, v14

    .line 18
    invoke-virtual/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0OO()V

    .line 19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ne v13, v1, :cond_a

    const/4 v1, 0x0

    .line 20
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v2, p1

    const/4 v1, 0x0

    .line 21
    invoke-virtual/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oO()Z

    move-result v12

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v2, p1

    const/4 v1, 0x0

    .line 22
    invoke-virtual/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oo()D

    move-result-wide v13

    double-to-float v11, v13

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v2, p1

    const/4 v1, 0x0

    .line 23
    invoke-static {}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOo$OooO0OO;->values()[LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOo$OooO0OO;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    aget-object v10, v10, v13

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v2, p1

    const/4 v1, 0x0

    .line 24
    invoke-static {}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOo$OooO0O0;->values()[LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOo$OooO0O0;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO()I

    move-result v13

    sub-int/2addr v13, v14

    aget-object v9, v9, v13

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v2, p1

    const/4 v1, 0x0

    .line 25
    invoke-static/range {p0 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO0Oo(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;

    move-result-object v7

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v2, p1

    const/4 v1, 0x0

    .line 26
    invoke-static/range {p0 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO0OO(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v2, p1

    const/4 v1, 0x0

    .line 27
    invoke-static/range {p0 .. p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v2, p1

    const/4 v1, 0x0

    .line 28
    invoke-virtual/range {p0 .. p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOO0O()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 29
    :cond_b
    new-instance v13, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOo;

    move-object v0, v13

    move-object v1, v4

    move-object v2, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move v9, v11

    move v10, v12

    invoke-direct/range {v0 .. v10}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOo;-><init>(Ljava/lang/String;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;Ljava/util/List;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOo$OooO0O0;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOo$OooO0OO;FZ)V

    return-object v13

    :pswitch_data_0
    .packed-switch 0x0
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
