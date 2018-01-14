.class public final Lcom/android/server/OnePlusNfcService;
.super Lcom/oem/os/IOnePlusNfcService$Stub;
.source "OnePlusNfcService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusNfcService$1;
    }
.end annotation


# static fields
.field public static final CARD_CONFIG_PATH:Ljava/lang/String; = "/etc/nfc_card_config.conf"

.field public static final CARD_CONFIG_PROPERTY:Ljava/lang/String; = "persist.oem.nfc.rf.card"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCardConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/OnePlusNfcService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusNfcService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/OnePlusNfcService;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusNfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "OnePlusNfcService"

    sput-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oem/os/IOnePlusNfcService$Stub;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusNfcService;->mCardConfigMap:Ljava/util/Map;

    .line 149
    new-instance v0, Lcom/android/server/OnePlusNfcService$1;

    invoke-direct {v0, p0}, Lcom/android/server/OnePlusNfcService$1;-><init>(Lcom/android/server/OnePlusNfcService;)V

    iput-object v0, p0, Lcom/android/server/OnePlusNfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    iput-object p1, p0, Lcom/android/server/OnePlusNfcService;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private getCurrentConfig()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    const-string/jumbo v1, "persist.oem.nfc.rf.card"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "config":Ljava/lang/String;
    return-object v0
.end method

.method private loadConfigMap()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/OnePlusNfcService;->parseConfigs()Z

    .line 92
    invoke-virtual {p0}, Lcom/android/server/OnePlusNfcService;->dumpConfigs()V

    .line 90
    return-void
.end method

.method private parseConfigs()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 116
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    const-string/jumbo v13, "/etc/nfc_card_config.conf"

    invoke-direct {v5, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 118
    sget-object v12, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "[parseConfigs] config file /etc/nfc_card_config.conf not exists"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v12, 0x0

    return v12

    .line 121
    :cond_0
    sget-object v12, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "[parseConfigs]"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v9, 0x0

    .line 124
    .local v9, "reader":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 126
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 127
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 128
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 129
    .local v10, "reader":Ljava/io/FileReader;
    :try_start_1
    invoke-interface {v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 131
    .end local v9    # "reader":Ljava/io/FileReader;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 132
    .local v3, "eventType":I
    :cond_1
    :goto_0
    if-eq v3, v14, :cond_3

    .line 133
    const/4 v12, 0x2

    if-ne v3, v12, :cond_2

    .line 134
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "name":Ljava/lang/String;
    const-string/jumbo v12, "config"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 137
    const-string/jumbo v12, "cardtype"

    const/4 v13, 0x0

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 138
    .local v11, "type":Ljava/lang/String;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "config":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/OnePlusNfcService;->mCardConfigMap:Ljava/util/Map;

    invoke-interface {v12, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .end local v0    # "config":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v3

    goto :goto_0

    :cond_3
    move-object v9, v10

    .line 146
    .end local v3    # "eventType":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "reader":Ljava/io/FileReader;
    :goto_1
    return v14

    .line 143
    .restart local v9    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v9, v10

    .end local v10    # "reader":Ljava/io/FileReader;
    .local v9, "reader":Ljava/io/FileReader;
    goto :goto_1

    .line 144
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v9, "reader":Ljava/io/FileReader;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "reader":Ljava/io/FileReader;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "reader":Ljava/io/FileReader;
    .local v9, "reader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private resetNfcService()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 96
    iget-object v0, p0, Lcom/android/server/OnePlusNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v6

    .line 97
    .local v6, "nfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[resetNfcService] nfc is disable,no need to reset"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 103
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/OnePlusNfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/OnePlusNfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 107
    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 95
    return-void
.end method


# virtual methods
.method public applyConfig()Z
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[applyConfig]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public dumpConfigs()V
    .locals 7

    .prologue
    .line 166
    iget-object v4, p0, Lcom/android/server/OnePlusNfcService;->mCardConfigMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 167
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 169
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 170
    .local v3, "type":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    .local v0, "config":Ljava/lang/String;
    sget-object v4, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[dumpConfigs] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    .end local v0    # "config":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getSupportCardTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v1, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[getSupportCardTypes]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "cardTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getSupportNfcConfigs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[getSupportNfcConfigs]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v1, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[setCardType] type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/android/server/OnePlusNfcService;->mCardConfigMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, "config":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusNfcService;->setNfcConfig(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public setNfcConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 51
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setNfcConfig] config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string/jumbo v0, "persist.oem.nfc.rf.card"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/android/server/OnePlusNfcService;->resetNfcService()V

    .line 48
    return-void
.end method

.method public setSupportCardTypes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "cardTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setSupportCardTypes] cardTypes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public systemRunning()V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[systemRunning]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-direct {p0}, Lcom/android/server/OnePlusNfcService;->loadConfigMap()V

    .line 42
    return-void
.end method
