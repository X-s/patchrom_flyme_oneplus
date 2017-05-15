.class public Lcom/android/settings_exlib/datetime/ZoneGetter;
.super Ljava/lang/Object;
.source "ZoneGetter.java"


# static fields
.field public static final KEY_DISPLAYNAME:Ljava/lang/String; = "name"

.field public static final KEY_GMT:Ljava/lang/String; = "gmt"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_OFFSET:Ljava/lang/String; = "offset"

.field private static final TAG:Ljava/lang/String; = "ZoneGetter"

.field private static final XMLTAG_TIMEZONE:Ljava/lang/String; = "timezone"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDisplayEntry(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 3
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "gmtOffsetString"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "offsetMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "id"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "gmt"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "offset"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-object v0
.end method

.method private static getGmtOffsetString(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    const/4 v3, 0x1

    .line 204
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "ZZZZ"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "gmtFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 206
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "gmtString":Ljava/lang/String;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 210
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 211
    .local v3, "isRtl":Z
    :goto_0
    if-eqz v3, :cond_1

    sget-object v4, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    :goto_1
    invoke-virtual {v0, v2, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    .line 213
    return-object v2

    .line 210
    .end local v3    # "isRtl":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 211
    .restart local v3    # "isRtl":Z
    :cond_1
    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1
.end method

.method public static getTimeZoneOffsetAndName(Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .locals 5
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "now"    # Ljava/util/Date;

    .prologue
    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 58
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1, p0, p1}, Lcom/android/settings_exlib/datetime/ZoneGetter;->getGmtOffsetString(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "gmtString":Ljava/lang/String;
    invoke-static {v1, p0, p1}, Lcom/android/settings_exlib/datetime/ZoneGetter;->getZoneLongName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "zoneNameString":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 65
    .end local v0    # "gmtString":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "gmtString":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getZoneDisplayName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;
    .param p3, "preferLongName"    # Z

    .prologue
    .line 149
    if-eqz p3, :cond_1

    .line 150
    invoke-static {p0, p1, p2}, Lcom/android/settings_exlib/datetime/ZoneGetter;->getZoneLongName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "zoneNameString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 152
    .end local v0    # "zoneNameString":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings_exlib/datetime/ZoneGetter;->getZoneExemplarLocation(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .restart local v0    # "zoneNameString":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/settings_exlib/datetime/ZoneGetter;->getZoneLongName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getZoneExemplarLocation(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 162
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/icu/TimeZoneNames;->getExemplarLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getZoneLongName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    .line 197
    invoke-virtual {p1, p2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 199
    .local v0, "daylight":Z
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getZonesList(Landroid/content/Context;)Ljava/util/List;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    .line 70
    .local v14, "locale":Ljava/util/Locale;
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    .line 88
    .local v16, "now":Ljava/util/Date;
    invoke-static/range {p0 .. p0}, Lcom/android/settings_exlib/datetime/ZoneGetter;->readTimezonesToDisplay(Landroid/content/Context;)Ljava/util/List;

    move-result-object v19

    .line 91
    .local v19, "olsonIdsToDisplay":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/TreeSet;

    invoke-direct {v12}, Ljava/util/TreeSet;-><init>()V

    .line 92
    .local v12, "localZoneIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v14}, Llibcore/icu/TimeZoneNames;->forLocale(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/String;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v18, v4, v8

    .line 93
    .local v18, "olsonId":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 98
    .end local v18    # "olsonId":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    .line 99
    .local v13, "localZoneNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 100
    .local v11, "localLongNamesAreAmbiguous":Z
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 101
    .restart local v18    # "olsonId":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 102
    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v21

    .line 103
    .local v21, "tz":Ljava/util/TimeZone;
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v14, v0, v1}, Lcom/android/settings_exlib/datetime/ZoneGetter;->getZoneLongName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    .line 104
    .local v22, "zoneLongName":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 105
    .local v15, "longNameIsUnique":Z
    if-nez v15, :cond_1

    .line 106
    const/4 v11, 0x1

    .line 113
    .end local v15    # "longNameIsUnique":Z
    .end local v18    # "olsonId":Ljava/lang/String;
    .end local v21    # "tz":Ljava/util/TimeZone;
    .end local v22    # "zoneLongName":Ljava/lang/String;
    :cond_2
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v23, "zones":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 115
    .restart local v18    # "olsonId":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v21

    .line 118
    .restart local v21    # "tz":Ljava/util/TimeZone;
    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 119
    .local v9, "isLocalZoneId":Z
    if-eqz v9, :cond_3

    if-nez v11, :cond_3

    const/16 v20, 0x1

    .line 120
    .local v20, "preferLongName":Z
    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-static {v14, v0, v1, v2}, Lcom/android/settings_exlib/datetime/ZoneGetter;->getZoneDisplayName(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "displayName":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v14, v0, v1}, Lcom/android/settings_exlib/datetime/ZoneGetter;->getGmtOffsetString(Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 123
    .local v7, "gmtOffsetString":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v17

    .line 124
    .local v17, "offsetMillis":I
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v7, v6, v1}, Lcom/android/settings_exlib/datetime/ZoneGetter;->createDisplayEntry(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v5

    .line 126
    .local v5, "displayEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    .end local v5    # "displayEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "displayName":Ljava/lang/String;
    .end local v7    # "gmtOffsetString":Ljava/lang/String;
    .end local v17    # "offsetMillis":I
    .end local v20    # "preferLongName":Z
    :cond_3
    const/16 v20, 0x0

    goto :goto_2

    .line 128
    .end local v9    # "isLocalZoneId":Z
    .end local v18    # "olsonId":Ljava/lang/String;
    .end local v21    # "tz":Ljava/util/TimeZone;
    :cond_4
    return-object v23
.end method

.method private static readTimezonesToDisplay(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v2, "olsonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings_exlib/R$xml;->timezones:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .local v5, "xrp":Landroid/content/res/XmlResourceParser;
    const/4 v7, 0x0

    .line 168
    :cond_0
    :try_start_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 171
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    .line 172
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v10, :cond_8

    .line 173
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v9, :cond_5

    .line 174
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    .line 188
    if-eqz v5, :cond_1

    if-eqz v7, :cond_2

    :try_start_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 193
    .end local v5    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_1
    :goto_2
    return-object v2

    .line 188
    .restart local v5    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .end local v3    # "x2":Ljava/lang/Throwable;
    .end local v5    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v4

    .line 189
    .local v4, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "ZoneGetter"

    const-string v7, "Ill-formatted timezones.xml file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 188
    .end local v4    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_2
    :try_start_4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 190
    .end local v5    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v0

    .line 191
    .local v0, "ioe":Ljava/io/IOException;
    const-string v6, "ZoneGetter"

    const-string v7, "Unable to read timezones.xml file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 177
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v5    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_3
    :try_start_5
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 167
    :catch_3
    move-exception v6

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 188
    :catchall_0
    move-exception v7

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    :goto_3
    if-eqz v5, :cond_4

    if-eqz v7, :cond_a

    :try_start_7
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_4
    :try_start_8
    throw v6
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 179
    :cond_5
    :try_start_9
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "timezone"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 180
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "olsonId":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v1    # "olsonId":Ljava/lang/String;
    :cond_6
    :goto_5
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v10, :cond_7

    .line 184
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_5

    .line 188
    :catchall_1
    move-exception v6

    goto :goto_3

    .line 186
    :cond_7
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .line 188
    :cond_8
    if-eqz v5, :cond_1

    if-eqz v7, :cond_9

    :try_start_a
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    :catch_4
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    :try_start_b
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :catch_5
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_4
.end method
