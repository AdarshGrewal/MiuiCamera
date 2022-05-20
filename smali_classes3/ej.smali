.class public final Lej;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lej;-><init>()V

    return-void
.end method

.method public static OooO00o(Ljava/util/Map$Entry;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldd;

    iget p0, p0, Ldd;->a:I

    return p0
.end method

.method public static OooO00o(Lcs;Leh;I)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcs;->OooO00o(Leh;I)Lcq;

    move-result-object p0

    return-object p0
.end method

.method public static final OooO00o(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 38
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "_"

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Leh;Ljava/lang/StringBuilder;I)V
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    .line 74
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    .line 75
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/TreeSet;

    .line 76
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const-string v7, "get"

    if-ge v6, v4, :cond_1

    aget-object v8, v3, v6

    .line 78
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_0

    .line 80
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 82
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 83
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 84
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    const-string v6, "List"

    .line 85
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_6

    const-string v8, "OrBuilderList"

    .line 86
    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 87
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 88
    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 90
    :goto_3
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_6

    .line 91
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Ljava/util/List;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_4

    .line 92
    :cond_5
    invoke-static {v8}, Lej;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 93
    invoke-static {v6, p0, v4}, Lde;->OooO00o(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 94
    invoke-static {p1, p2, v3, v4}, Lej;->OooO00o(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    :goto_4
    const-string v6, "Map"

    .line 95
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 96
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 97
    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 98
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 99
    :goto_5
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_9

    .line 100
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v10, Ljava/util/Map;

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-class v6, Ljava/lang/Deprecated;

    .line 101
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 102
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_6

    .line 103
    :cond_8
    invoke-static {v8}, Lej;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    .line 104
    invoke-static {v3, p0, v6}, Lde;->OooO00o(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 105
    invoke-static {p1, p2, v4, v3}, Lej;->OooO00o(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 106
    :cond_9
    :goto_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "set"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    const-string v3, "Bytes"

    .line 107
    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 108
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_b

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    :goto_8
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 110
    :cond_c
    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_d

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    :goto_9
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_a
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 112
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "has"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_f

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :cond_f
    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_b
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    new-array v8, v5, [Ljava/lang/Object;

    .line 113
    invoke-static {v3, p0, v8}, Lde;->OooO00o(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v4, :cond_10

    new-array v8, v5, [Ljava/lang/Object;

    .line 114
    invoke-static {v4, p0, v8}, Lde;->OooO00o(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_d

    .line 115
    :cond_10
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_11

    .line 116
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_1

    .line 117
    :cond_11
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_12

    .line 118
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_1

    .line 119
    :cond_12
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_13

    .line 120
    move-object v4, v3

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    if-nez v4, :cond_18

    goto/16 :goto_1

    .line 121
    :cond_13
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_14

    .line 122
    move-object v4, v3

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v4, v8, v10

    if-nez v4, :cond_18

    goto/16 :goto_1

    .line 123
    :cond_14
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_15

    const-string v4, ""

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_c

    .line 125
    :cond_15
    instance-of v4, v3, Lck;

    if-eqz v4, :cond_16

    .line 126
    sget-object v4, Lck;->b:Lck;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_c
    if-nez v4, :cond_2

    goto :goto_d

    .line 127
    :cond_16
    instance-of v4, v3, Leh;

    if-eqz v4, :cond_17

    .line 128
    move-object v4, v3

    check-cast v4, Leh;

    invoke-interface {v4}, Lei;->OooO0o0()Leh;

    move-result-object v4

    if-ne v3, v4, :cond_18

    goto/16 :goto_1

    .line 129
    :cond_17
    instance-of v4, v3, Ljava/lang/Enum;

    if-eqz v4, :cond_18

    .line 130
    move-object v4, v3

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_1

    .line 131
    :cond_18
    :goto_d
    invoke-static {v6}, Lej;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v4, v3}, Lej;->OooO00o(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 132
    :cond_19
    instance-of v0, p0, Ldc;

    if-eqz v0, :cond_1a

    .line 133
    move-object v0, p0

    check-cast v0, Ldc;

    iget-object v0, v0, Ldc;->d:Lcu;

    .line 134
    invoke-virtual {v0}, Lcu;->OooO0Oo()Ljava/util/Iterator;

    move-result-object v0

    .line 135
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd;

    iget v2, v2, Ldd;->a:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, p2, v2, v1}, Lej;->OooO00o(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    :cond_1a
    check-cast p0, Lde;

    .line 138
    iget-object p0, p0, Lde;->h:Lfi;

    if-eqz p0, :cond_1b

    :goto_f
    iget v0, p0, Lfi;->b:I

    if-ge v5, v0, :cond_1b

    iget-object v0, p0, Lfi;->c:[I

    .line 139
    aget v0, v0, v5

    invoke-static {v0}, Lga;->OooO0O0(I)I

    move-result v0

    .line 140
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfi;->d:[Ljava/lang/Object;

    aget-object v1, v1, v5

    invoke-static {p1, p2, v0, v1}, Lej;->OooO00o(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1b
    return-void
.end method

.method public static OooO00o(Lgb;Ljava/util/Map$Entry;)V
    .locals 3

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd;

    .line 6
    sget-object v1, Lfy;->a:Lfy;

    iget-object v1, v0, Ldd;->b:Lfy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    return-void

    .line 7
    :pswitch_0
    iget v0, v0, Ldd;->a:I

    .line 8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Lgb;->OooO0OO(IJ)V

    return-void

    :pswitch_1
    iget v0, v0, Ldd;->a:I

    .line 9
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lgb;->OooO0Oo(II)V

    return-void

    :pswitch_2
    iget v0, v0, Ldd;->a:I

    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Lgb;->OooO0o0(IJ)V

    return-void

    :pswitch_3
    iget v0, v0, Ldd;->a:I

    .line 11
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lgb;->OooO0o0(II)V

    return-void

    .line 12
    :pswitch_4
    iget v0, v0, Ldd;->a:I

    .line 13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lgb;->OooO00o(II)V

    return-void

    .line 14
    :pswitch_5
    iget v0, v0, Ldd;->a:I

    .line 15
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lgb;->OooO0OO(II)V

    return-void

    .line 16
    :pswitch_6
    iget v0, v0, Ldd;->a:I

    .line 17
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lck;

    invoke-interface {p0, v0, p1}, Lgb;->OooO00o(ILck;)V

    return-void

    .line 18
    :pswitch_7
    iget v0, v0, Ldd;->a:I

    .line 19
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 20
    sget-object v2, Lep;->a:Lep;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Lep;->OooO00o(Ljava/lang/Class;)Les;

    move-result-object p1

    .line 21
    invoke-interface {p0, v0, v1, p1}, Lgb;->OooO0O0(ILjava/lang/Object;Les;)V

    return-void

    :pswitch_8
    iget v0, v0, Ldd;->a:I

    .line 22
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 23
    sget-object v2, Lep;->a:Lep;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Lep;->OooO00o(Ljava/lang/Class;)Les;

    move-result-object p1

    .line 24
    invoke-interface {p0, v0, v1, p1}, Lgb;->OooO00o(ILjava/lang/Object;Les;)V

    return-void

    :pswitch_9
    iget v0, v0, Ldd;->a:I

    .line 25
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lgb;->OooO00o(ILjava/lang/String;)V

    return-void

    .line 26
    :pswitch_a
    iget v0, v0, Ldd;->a:I

    .line 27
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Lgb;->OooO00o(IZ)V

    return-void

    :pswitch_b
    iget v0, v0, Ldd;->a:I

    .line 28
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lgb;->OooO0O0(II)V

    return-void

    :pswitch_c
    iget v0, v0, Ldd;->a:I

    .line 29
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Lgb;->OooO0O0(IJ)V

    return-void

    :pswitch_d
    iget v0, v0, Ldd;->a:I

    .line 30
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lgb;->OooO00o(II)V

    return-void

    :pswitch_e
    iget v0, v0, Ldd;->a:I

    .line 31
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Lgb;->OooO00o(IJ)V

    return-void

    :pswitch_f
    iget v0, v0, Ldd;->a:I

    .line 32
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Lgb;->OooO0Oo(IJ)V

    return-void

    :pswitch_10
    iget v0, v0, Ldd;->a:I

    .line 33
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, v0, p1}, Lgb;->OooO00o(IF)V

    return-void

    :pswitch_11
    iget v0, v0, Ldd;->a:I

    .line 34
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Lgb;->OooO00o(ID)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public static final OooO00o(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 42
    instance-of v0, p3, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 43
    check-cast p3, Ljava/util/List;

    .line 44
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 45
    invoke-static {p0, p1, p2, v0}, Lej;->OooO00o(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    .line 46
    :cond_1
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 47
    check-cast p3, Ljava/util/Map;

    .line 48
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 49
    invoke-static {p0, p1, p2, v0}, Lej;->OooO00o(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0xa

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x20

    if-ge v1, p1, :cond_4

    .line 51
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 52
    :cond_4
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    instance-of p2, p3, Ljava/lang/String;

    const/16 v1, 0x22

    const-string v3, ": \""

    if-eqz p2, :cond_5

    .line 54
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Ljava/lang/String;

    .line 55
    invoke-static {p3}, Lck;->OooO00o(Ljava/lang/String;)Lck;

    move-result-object p1

    invoke-static {p1}, Lff;->OooO00o(Lck;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 57
    :cond_5
    instance-of p2, p3, Lck;

    if-eqz p2, :cond_6

    .line 58
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Lck;

    invoke-static {p3}, Lff;->OooO00o(Lck;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 59
    :cond_6
    instance-of p2, p3, Lde;

    const-string/jumbo v1, "}"

    const-string v3, "\n"

    const-string v4, " {"

    if-eqz p2, :cond_8

    .line 60
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    check-cast p3, Lde;

    add-int/lit8 p2, p1, 0x2

    invoke-static {p3, p0, p2}, Lej;->OooO00o(Leh;Ljava/lang/StringBuilder;I)V

    .line 62
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-ge v0, p1, :cond_7

    .line 63
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 64
    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 65
    :cond_8
    instance-of p2, p3, Ljava/util/Map$Entry;

    if-eqz p2, :cond_a

    .line 66
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    check-cast p3, Ljava/util/Map$Entry;

    add-int/lit8 p2, p1, 0x2

    .line 68
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "key"

    invoke-static {p0, p2, v5, v4}, Lej;->OooO00o(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 69
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    const-string/jumbo v4, "value"

    invoke-static {p0, p2, v4, p3}, Lej;->OooO00o(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    if-ge v0, p1, :cond_9

    .line 71
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 72
    :cond_9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_a
    const-string p1, ": "

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static OooO00o(Leh;)Z
    .locals 0

    .line 3
    instance-of p0, p0, Ldc;

    return p0
.end method

.method public static OooO0O0(Ljava/lang/Object;)Lcu;
    .locals 0

    .line 1
    check-cast p0, Ldc;

    iget-object p0, p0, Ldc;->d:Lcu;

    return-object p0
.end method

.method public static OooO0OO(Ljava/lang/Object;)Lcu;
    .locals 0

    .line 1
    check-cast p0, Ldc;

    invoke-virtual {p0}, Ldc;->d()Lcu;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-static {p1}, Lej;->OooO0O0(Ljava/lang/Object;)Lcu;

    move-result-object p1

    invoke-virtual {p1}, Lcu;->OooO0O0()V

    return-void
.end method
