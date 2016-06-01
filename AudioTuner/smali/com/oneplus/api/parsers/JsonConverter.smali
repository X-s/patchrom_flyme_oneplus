.class Lcom/oneplus/api/parsers/JsonConverter;
.super Ljava/lang/Object;
.source "JsonConverter.java"

# interfaces
.implements Lcom/oneplus/api/parsers/Converter;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFields(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 7
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p2, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    const/4 v2, 0x0

    .line 170
    .local v2, "fields":[Ljava/lang/reflect/Field;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 171
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 172
    .local v1, "field":Ljava/lang/reflect/Field;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 176
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/oneplus/api/parsers/JsonConverter;->getFields(Ljava/lang/Class;Ljava/util/Map;)V

    .line 178
    :cond_1
    return-void
.end method

.method private getMethods(Ljava/util/Map;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    const/4 v4, 0x0

    .line 188
    .local v4, "fms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v10

    if-gtz v10, :cond_1

    :cond_0
    move-object v5, v4

    .line 204
    .end local v4    # "fms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    .local v5, "fms":Ljava/util/HashMap;, "Ljava/util/Map<Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    :goto_0
    return-object v5

    .line 191
    .end local v5    # "fms":Ljava/util/HashMap;, "Ljava/util/Map<Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    .restart local v4    # "fms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "fms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 192
    .restart local v4    # "fms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 194
    .local v7, "key":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 195
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v10, 0x0

    const-string v11, "||"

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "className":Ljava/lang/String;
    const-string v10, "||"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "fieldName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 198
    .local v9, "methodName":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 199
    .local v8, "method":Ljava/lang/reflect/Method;
    invoke-interface {v4, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 200
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v9    # "methodName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "key":Ljava/lang/String;
    :cond_2
    move-object v5, v4

    .line 204
    .restart local v5    # "fms":Ljava/util/HashMap;, "Ljava/util/Map<Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    goto :goto_0
.end method

.method private load(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 18
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "datas":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v7, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 77
    .local v1, "clazz":Ljava/lang/Class;
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7}, Lcom/oneplus/api/parsers/JsonConverter;->getFields(Ljava/lang/Class;Ljava/util/Map;)V

    .line 78
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v15

    if-gtz v15, :cond_1

    .line 159
    :cond_0
    return-void

    .line 83
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/oneplus/api/parsers/JsonConverter;->getMethods(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 84
    .local v8, "fms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 89
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 90
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/Method;

    .line 91
    .local v14, "writeMethod":Ljava/lang/reflect/Method;
    const-class v15, Lcom/oneplus/api/util/annotation/ApiField;

    invoke-virtual {v4, v15}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/oneplus/api/util/annotation/ApiField;

    .line 92
    .local v10, "jsonField":Lcom/oneplus/api/util/annotation/ApiField;
    if-eqz v10, :cond_2

    .line 95
    invoke-interface {v10}, Lcom/oneplus/api/util/annotation/ApiField;->value()Ljava/lang/String;

    move-result-object v11

    .line 96
    .local v11, "jsonKey":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 99
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 100
    .local v12, "jsonVaue":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    .line 102
    .local v13, "type":Ljava/lang/Class;
    :try_start_0
    const-class v15, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 103
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    .end local v12    # "jsonVaue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 156
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 104
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v12    # "jsonVaue":Ljava/lang/Object;
    :cond_3
    const-class v15, Ljava/lang/Integer;

    invoke-virtual {v15, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 105
    if-eqz v12, :cond_2

    .line 106
    instance-of v15, v12, Ljava/lang/Integer;

    if-eqz v15, :cond_4

    .line 107
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    check-cast v12, Ljava/lang/Integer;

    .end local v12    # "jsonVaue":Ljava/lang/Object;
    aput-object v12, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    .restart local v12    # "jsonVaue":Ljava/lang/Object;
    :cond_4
    invoke-static {v13}, Lcom/oneplus/api/util/StringUtils;->isNumeric(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 109
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 111
    :cond_5
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 114
    :cond_6
    const-class v15, Ljava/lang/Boolean;

    invoke-virtual {v15, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 115
    if-eqz v12, :cond_2

    instance-of v15, v12, Ljava/lang/Boolean;

    if-eqz v15, :cond_2

    .line 116
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    check-cast v12, Ljava/lang/Boolean;

    .end local v12    # "jsonVaue":Ljava/lang/Object;
    aput-object v12, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 118
    .restart local v12    # "jsonVaue":Ljava/lang/Object;
    :cond_7
    const-class v15, Ljava/lang/Long;

    invoke-virtual {v15, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 119
    if-eqz v12, :cond_2

    .line 120
    instance-of v15, v12, Ljava/lang/Long;

    if-eqz v15, :cond_8

    .line 121
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    check-cast v12, Ljava/lang/Long;

    .end local v12    # "jsonVaue":Ljava/lang/Object;
    aput-object v12, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 122
    .restart local v12    # "jsonVaue":Ljava/lang/Object;
    :cond_8
    invoke-static {v13}, Lcom/oneplus/api/util/StringUtils;->isNumeric(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 123
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 126
    :cond_9
    const-class v15, Ljava/lang/Double;

    invoke-virtual {v15, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 127
    if-eqz v12, :cond_2

    .line 128
    instance-of v15, v12, Ljava/lang/Long;

    if-eqz v15, :cond_a

    .line 129
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    check-cast v12, Ljava/lang/Double;

    .end local v12    # "jsonVaue":Ljava/lang/Object;
    aput-object v12, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 130
    .restart local v12    # "jsonVaue":Ljava/lang/Object;
    :cond_a
    invoke-static {v13}, Lcom/oneplus/api/util/StringUtils;->isNumeric(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 131
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 134
    :cond_b
    const-class v15, Ljava/lang/Number;

    invoke-virtual {v15, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 135
    if-eqz v12, :cond_2

    instance-of v15, v12, Ljava/lang/Number;

    if-eqz v15, :cond_2

    .line 136
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    check-cast v12, Ljava/lang/Number;

    .end local v12    # "jsonVaue":Ljava/lang/Object;
    aput-object v12, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 138
    .restart local v12    # "jsonVaue":Ljava/lang/Object;
    :cond_c
    const-class v15, Ljava/util/Date;

    invoke-virtual {v15, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 139
    sget-object v15, Lcom/oneplus/api/constants/CommonConstants;->SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 140
    .local v2, "date":Ljava/util/Date;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 141
    .end local v2    # "date":Ljava/util/Date;
    :cond_d
    const-class v15, Ljava/util/Map;

    invoke-virtual {v15, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 142
    if-eqz v12, :cond_2

    instance-of v15, v12, Ljava/util/Map;

    if-eqz v15, :cond_2

    .line 143
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    check-cast v12, Ljava/util/Map;

    .end local v12    # "jsonVaue":Ljava/lang/Object;
    aput-object v12, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 145
    .restart local v12    # "jsonVaue":Ljava/lang/Object;
    :cond_e
    const-class v15, Ljava/util/Map;

    invoke-virtual {v15, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 146
    if-eqz v12, :cond_2

    instance-of v15, v12, Ljava/util/Map;

    if-eqz v15, :cond_2

    .line 147
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    check-cast v12, Ljava/util/Map;

    .end local v12    # "jsonVaue":Ljava/lang/Object;
    aput-object v12, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 149
    .restart local v12    # "jsonVaue":Ljava/lang/Object;
    :cond_f
    const-class v15, Lcom/oneplus/api/domain/BaseDomain;

    invoke-virtual {v15, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 150
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 151
    .local v6, "fieldObj":Ljava/lang/Object;
    move-object v0, v12

    check-cast v0, Ljava/util/Map;

    move-object v5, v0

    .line 152
    .local v5, "fieldDatas":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/oneplus/api/parsers/JsonConverter;->load(Ljava/lang/Object;Ljava/util/Map;)V

    .line 153
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 34
    const-string v2, "{\"data\":{\"currentPage\":1,\"mobile\":\"13728952690\",\"pageSize\":15,\"userId\":384623864,\"userName\":\"jaingaohk\"},\"errCode\":\"0001\",\"errMsg\":\"\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a\",\"ret\":\"1\"}"

    .line 35
    .local v2, "responseBody":Ljava/lang/String;
    new-instance v1, Lcom/oneplus/api/passport/response/RegisterResponse;

    invoke-direct {v1}, Lcom/oneplus/api/passport/response/RegisterResponse;-><init>()V

    .line 36
    .local v1, "response":Lcom/oneplus/api/OneplusResponse;
    new-instance v0, Lcom/oneplus/api/parsers/JsonConverter;

    invoke-direct {v0}, Lcom/oneplus/api/parsers/JsonConverter;-><init>()V

    .line 37
    .local v0, "converter":Lcom/oneplus/api/parsers/Converter;
    invoke-interface {v0, v2, v1}, Lcom/oneplus/api/parsers/Converter;->parse(Ljava/lang/String;Lcom/oneplus/api/OneplusResponse;)V

    .line 38
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Lcom/oneplus/api/OneplusResponse;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oneplus/api/OneplusResponse;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "response":Lcom/oneplus/api/OneplusResponse;, "TT;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const/4 v2, 0x0

    .line 53
    .local v2, "results":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :try_start_0
    new-instance v1, Lcom/oneplus/api/util/json/JSONValidatingReader;

    new-instance v3, Lcom/oneplus/api/util/json/ExceptionErrorListener;

    invoke-direct {v3}, Lcom/oneplus/api/util/json/ExceptionErrorListener;-><init>()V

    invoke-direct {v1, v3}, Lcom/oneplus/api/util/json/JSONValidatingReader;-><init>(Lcom/oneplus/api/util/json/JSONErrorListener;)V

    .line 54
    .local v1, "reader":Lcom/oneplus/api/util/json/JSONReader;
    invoke-virtual {v1, p1}, Lcom/oneplus/api/util/json/JSONReader;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "results":Ljava/util/Map;, "Ljava/util/Map<**>;"
    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .restart local v2    # "results":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 63
    invoke-direct {p0, p2, v2}, Lcom/oneplus/api/parsers/JsonConverter;->load(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_0

    .line 55
    .end local v1    # "reader":Lcom/oneplus/api/util/json/JSONReader;
    .end local v2    # "results":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
