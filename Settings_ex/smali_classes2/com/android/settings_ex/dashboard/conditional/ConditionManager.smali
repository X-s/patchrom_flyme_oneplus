.class public Lcom/android/settings_ex/dashboard/conditional/ConditionManager;
.super Ljava/lang/Object;
.source "ConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dashboard/conditional/ConditionManager$1;,
        Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionListener;,
        Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionLoader;
    }
.end annotation


# static fields
.field private static final ATTR_CLASS:Ljava/lang/String; = "cls"

.field private static final CONDITION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final FILE_NAME:Ljava/lang/String; = "condition_state.xml"

.field private static final PKG:Ljava/lang/String; = "com.android.settings_ex.dashboard.conditional."

.field private static final TAG:Ljava/lang/String; = "ConditionManager"

.field private static final TAG_CONDITION:Ljava/lang/String; = "c"

.field private static final TAG_CONDITIONS:Ljava/lang/String; = "cs"

.field private static sInstance:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;


# instance fields
.field private final mConditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mXmlFile:Ljava/io/File;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "conditions"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->addMissingConditions(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "xmlFile"    # Ljava/io/File;
    .param p2, "conditions"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->readFromXml(Ljava/io/File;Ljava/util/ArrayList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager$1;

    invoke-direct {v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loadConditionsNow"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    .line 63
    if-eqz p2, :cond_0

    .line 64
    new-instance v0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionLoader;

    invoke-direct {v0, p0, v3}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionLoader;-><init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionLoader;)V

    .line 65
    .local v0, "loader":Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionLoader;
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionLoader;->onPostExecute(Ljava/util/ArrayList;)V

    .line 60
    .end local v0    # "loader":Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionLoader;
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v1, Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionLoader;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionLoader;-><init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionLoader;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/settings_ex/dashboard/conditional/Condition;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/settings_ex/dashboard/conditional/Condition;>;"
    .local p2, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/dashboard/conditional/Condition;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings_ex/dashboard/conditional/Condition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->createCondition(Ljava/lang/Class;)Lcom/android/settings_ex/dashboard/conditional/Condition;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    return-void
.end method

.method private addMissingConditions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/dashboard/conditional/Condition;>;"
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/AirplaneModeCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 142
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/HotspotCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 143
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 144
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/BatterySaverCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 145
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 146
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/BackgroundDataCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 147
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 149
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 151
    sget-object v0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    return-void
.end method

.method private createCondition(Ljava/lang/Class;)Lcom/android/settings_ex/dashboard/conditional/Condition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/settings_ex/dashboard/conditional/Condition;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/AirplaneModeCondition;

    if-ne v0, p1, :cond_0

    .line 163
    new-instance v0, Lcom/android/settings_ex/dashboard/conditional/AirplaneModeCondition;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/conditional/AirplaneModeCondition;-><init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 164
    :cond_0
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/HotspotCondition;

    if-ne v0, p1, :cond_1

    .line 165
    new-instance v0, Lcom/android/settings_ex/dashboard/conditional/HotspotCondition;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/conditional/HotspotCondition;-><init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 166
    :cond_1
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;

    if-ne v0, p1, :cond_2

    .line 167
    new-instance v0, Lcom/android/settings_ex/dashboard/conditional/DndCondition;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/conditional/DndCondition;-><init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 168
    :cond_2
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/BatterySaverCondition;

    if-ne v0, p1, :cond_3

    .line 169
    new-instance v0, Lcom/android/settings_ex/dashboard/conditional/BatterySaverCondition;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/conditional/BatterySaverCondition;-><init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 170
    :cond_3
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;

    if-ne v0, p1, :cond_4

    .line 171
    new-instance v0, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;-><init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 172
    :cond_4
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/BackgroundDataCondition;

    if-ne v0, p1, :cond_5

    .line 173
    new-instance v0, Lcom/android/settings_ex/dashboard/conditional/BackgroundDataCondition;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/conditional/BackgroundDataCondition;-><init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 174
    :cond_5
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;

    if-ne v0, p1, :cond_6

    .line 175
    new-instance v0, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/conditional/WorkModeCondition;-><init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 177
    :cond_6
    const-class v0, Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;

    if-ne v0, p1, :cond_7

    .line 178
    new-instance v0, Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;-><init>(Lcom/android/settings_ex/dashboard/conditional/ConditionManager;)V

    return-object v0

    .line 181
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected Condition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Landroid/content/Context;)Lcom/android/settings_ex/dashboard/conditional/ConditionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;Z)Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Z)Lcom/android/settings_ex/dashboard/conditional/ConditionManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "loadConditionsNow"    # Z

    .prologue
    .line 265
    sget-object v0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    .line 268
    :cond_0
    sget-object v0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    return-object v0
.end method

.method private getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings_ex/dashboard/conditional/Condition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settings_ex/dashboard/conditional/Condition;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/conditional/Condition;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/conditional/Condition;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 196
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 197
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/dashboard/conditional/Condition;

    invoke-virtual {v2}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/dashboard/conditional/Condition;

    return-object v2

    .line 196
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private readFromXml(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "xmlFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/dashboard/conditional/Condition;>;"
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 82
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 83
    .local v5, "in":Ljava/io/FileReader;
    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 84
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 86
    .local v7, "state":I
    :goto_0
    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 87
    const-string/jumbo v8, "c"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 88
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 89
    .local v3, "depth":I
    const-string/jumbo v8, ""

    const-string/jumbo v9, "cls"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "clz":Ljava/lang/String;
    const-string/jumbo v8, "com.android.settings_ex.dashboard.conditional."

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 91
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "com.android.settings_ex.dashboard.conditional."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->createCondition(Ljava/lang/Class;)Lcom/android/settings_ex/dashboard/conditional/Condition;

    move-result-object v2

    .line 94
    .local v2, "condition":Lcom/android/settings_ex/dashboard/conditional/Condition;
    invoke-static {v6}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 96
    .local v0, "bundle":Landroid/os/PersistableBundle;
    invoke-virtual {v2, v0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->restoreState(Landroid/os/PersistableBundle;)V

    .line 97
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_1

    .line 99
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 105
    .end local v0    # "bundle":Landroid/os/PersistableBundle;
    .end local v1    # "clz":Ljava/lang/String;
    .end local v2    # "condition":Lcom/android/settings_ex/dashboard/conditional/Condition;
    .end local v3    # "depth":I
    .end local v5    # "in":Ljava/io/FileReader;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "state":I
    :catch_0
    move-exception v4

    .line 106
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ConditionManager"

    const-string/jumbo v9, "Problem reading condition_state.xml"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 102
    .restart local v5    # "in":Ljava/io/FileReader;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "state":I
    :cond_1
    :try_start_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private saveToXml()V
    .locals 9

    .prologue
    .line 113
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    .line 114
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v6, Ljava/io/FileWriter;

    iget-object v7, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 115
    .local v6, "writer":Ljava/io/FileWriter;
    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 117
    const-string/jumbo v7, "UTF-8"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 118
    const-string/jumbo v7, ""

    const-string/jumbo v8, "cs"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    iget-object v7, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 121
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 122
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 123
    .local v1, "bundle":Landroid/os/PersistableBundle;
    iget-object v7, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/dashboard/conditional/Condition;

    invoke-virtual {v7, v1}, Lcom/android/settings_ex/dashboard/conditional/Condition;->saveState(Landroid/os/PersistableBundle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 124
    const-string/jumbo v7, ""

    const-string/jumbo v8, "c"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    iget-object v7, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/dashboard/conditional/Condition;

    invoke-virtual {v7}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "clz":Ljava/lang/String;
    const-string/jumbo v7, ""

    const-string/jumbo v8, "cls"

    invoke-interface {v5, v7, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    invoke-virtual {v1, v5}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 128
    const-string/jumbo v7, ""

    const-string/jumbo v8, "c"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    .end local v2    # "clz":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "bundle":Landroid/os/PersistableBundle;
    :cond_1
    const-string/jumbo v7, ""

    const-string/jumbo v8, "cs"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 134
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "writer":Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 135
    :catch_0
    move-exception v3

    .line 136
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "ConditionManager"

    const-string/jumbo v8, "Problem writing condition_state.xml"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionListener;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-interface {p1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionListener;->onConditionsChanged()V

    .line 228
    return-void
.end method

.method public getCondition(Ljava/lang/Class;)Lcom/android/settings_ex/dashboard/conditional/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settings_ex/dashboard/conditional/Condition;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings_ex/dashboard/conditional/Condition;

    move-result-object v0

    return-object v0
.end method

.method public getConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getVisibleConditions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/conditional/Condition;>;"
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 211
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 212
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/dashboard/conditional/Condition;

    invoke-virtual {v3}, Lcom/android/settings_ex/dashboard/conditional/Condition;->shouldShow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/dashboard/conditional/Condition;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_1
    return-object v1
.end method

.method public notifyChanged(Lcom/android/settings_ex/dashboard/conditional/Condition;)V
    .locals 4
    .param p1, "condition"    # Lcom/android/settings_ex/dashboard/conditional/Condition;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->saveToXml()V

    .line 221
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 222
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 223
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 224
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionListener;

    invoke-interface {v2}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionListener;->onConditionsChanged()V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method public refreshAll()V
    .locals 3

    .prologue
    .line 72
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 73
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 74
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/dashboard/conditional/Condition;

    invoke-virtual {v2}, Lcom/android/settings_ex/dashboard/conditional/Condition;->refreshState()V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method public remListener(Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/settings_ex/dashboard/conditional/ConditionManager$ConditionListener;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method
