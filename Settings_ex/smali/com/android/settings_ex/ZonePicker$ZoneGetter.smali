.class Lcom/android/settings_ex/ZonePicker$ZoneGetter;
.super Ljava/lang/Object;
.source "ZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZoneGetter"
.end annotation


# instance fields
.field private final mLocalZones:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNow:Ljava/util/Date;

.field private final mZoneNameFormatter:Ljava/text/SimpleDateFormat;

.field private final mZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ZonePicker$ZoneGetter;->mZones:Ljava/util/List;

    .line 230
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ZonePicker$ZoneGetter;->mLocalZones:Ljava/util/HashSet;

    .line 231
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ZonePicker$ZoneGetter;->mNow:Ljava/util/Date;

    .line 232
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "zzzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/ZonePicker$ZoneGetter;->mZoneNameFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ZonePicker$ZoneGetter;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ZonePicker$ZoneGetter;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ZonePicker$ZoneGetter;->getZones(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addTimeZone(Ljava/lang/String;)V
    .locals 8
    .param p1, "olsonId"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 277
    .local v3, "tz":Ljava/util/TimeZone;
    iget-object v4, p0, Lcom/android/settings_ex/ZonePicker$ZoneGetter;->mLocalZones:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 279
    iget-object v4, p0, Lcom/android/settings_ex/ZonePicker$ZoneGetter;->mZoneNameFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 280
    iget-object v4, p0, Lcom/android/settings_ex/ZonePicker$ZoneGetter;->mZoneNameFormatter:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/android/settings_ex/ZonePicker$ZoneGetter;->mNow:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "displayName":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 288
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "id"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v4, "name"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v4, "gmt"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/settings_ex/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v4, "offset"

    iget-object v5, p0, Lcom/android/settings_ex/ZonePicker$ZoneGetter;->mNow:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v4, p0, Lcom/android/settings_ex/ZonePicker$ZoneGetter;->mZones:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    return-void

    .line 283
    .end local v0    # "displayName":Ljava/lang/String;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "localeName":Ljava/lang/String;
    invoke-static {v1, p1}, Llibcore/icu/TimeZoneNames;->getExemplarLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getZones(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 235
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Llibcore/icu/TimeZoneNames;->forLocale(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 236
    .local v4, "olsonId":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/ZonePicker$ZoneGetter;->mLocalZones:Ljava/util/HashSet;

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v4    # "olsonId":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060066

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 240
    .local v6, "xrp":Landroid/content/res/XmlResourceParser;
    :cond_1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    if-ne v7, v9, :cond_1

    .line 243
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    .line 244
    :goto_1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    if-eq v7, v10, :cond_6

    .line 245
    :goto_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    if-eq v7, v9, :cond_3

    .line 246
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 247
    iget-object v7, p0, Lcom/android/settings_ex/ZonePicker$ZoneGetter;->mZones:Ljava/util/List;

    .line 266
    .end local v6    # "xrp":Landroid/content/res/XmlResourceParser;
    :goto_3
    return-object v7

    .line 249
    .restart local v6    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 261
    .end local v6    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v5

    .line 262
    .local v5, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "ZonePicker"

    const-string v8, "Ill-formatted timezones.xml file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v5    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    iget-object v7, p0, Lcom/android/settings_ex/ZonePicker$ZoneGetter;->mZones:Ljava/util/List;

    goto :goto_3

    .line 251
    .restart local v6    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "timezone"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 252
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 253
    .restart local v4    # "olsonId":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/ZonePicker$ZoneGetter;->addTimeZone(Ljava/lang/String;)V

    .line 255
    .end local v4    # "olsonId":Ljava/lang/String;
    :cond_4
    :goto_5
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    if-eq v7, v10, :cond_5

    .line 256
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 263
    .end local v6    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v2

    .line 264
    .local v2, "ioe":Ljava/io/IOException;
    const-string v7, "ZonePicker"

    const-string v8, "Unable to read timezones.xml file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 258
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v6    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_1

    .line 260
    :cond_6
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method
