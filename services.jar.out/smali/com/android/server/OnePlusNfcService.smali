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
    .line 39
    invoke-direct {p0}, Lcom/oem/os/IOnePlusNfcService$Stub;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusNfcService;->mCardConfigMap:Ljava/util/Map;

    .line 157
    new-instance v0, Lcom/android/server/OnePlusNfcService$1;

    invoke-direct {v0, p0}, Lcom/android/server/OnePlusNfcService$1;-><init>(Lcom/android/server/OnePlusNfcService;)V

    iput-object v0, p0, Lcom/android/server/OnePlusNfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    iput-object p1, p0, Lcom/android/server/OnePlusNfcService;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private getCurrentConfig()Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    const-string/jumbo v1, "persist.oem.nfc.rf.card"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "config":Ljava/lang/String;
    return-object v0
.end method

.method private loadConfigMap()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/server/OnePlusNfcService;->parseConfigs()Z

    .line 100
    invoke-virtual {p0}, Lcom/android/server/OnePlusNfcService;->dumpConfigs()V

    .line 98
    return-void
.end method

.method private parseConfigs()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 124
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    const-string/jumbo v13, "/etc/nfc_card_config.conf"

    invoke-direct {v5, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 126
    sget-object v12, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "[parseConfigs] config file /etc/nfc_card_config.conf not exists"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v12, 0x0

    return v12

    .line 129
    :cond_0
    sget-object v12, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "[parseConfigs]"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v9, 0x0

    .line 132
    .local v9, "reader":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 134
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 135
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 136
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 137
    .local v10, "reader":Ljava/io/FileReader;
    :try_start_1
    invoke-interface {v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 139
    .end local v9    # "reader":Ljava/io/FileReader;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 140
    .local v3, "eventType":I
    :cond_1
    :goto_0
    if-eq v3, v14, :cond_3

    .line 141
    const/4 v12, 0x2

    if-ne v3, v12, :cond_2

    .line 142
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, "name":Ljava/lang/String;
    const-string/jumbo v12, "config"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 145
    const-string/jumbo v12, "cardtype"

    const/4 v13, 0x0

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 146
    .local v11, "type":Ljava/lang/String;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "config":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/OnePlusNfcService;->mCardConfigMap:Ljava/util/Map;

    invoke-interface {v12, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
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

    .line 154
    .end local v3    # "eventType":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "reader":Ljava/io/FileReader;
    :goto_1
    return v14

    .line 151
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

    .line 152
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

    .line 104
    iget-object v0, p0, Lcom/android/server/OnePlusNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v6

    .line 105
    .local v6, "nfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[resetNfcService] nfc is disable,no need to reset"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 111
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/server/OnePlusNfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/OnePlusNfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 115
    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 103
    return-void
.end method


# virtual methods
.method public applyConfig()Z
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[applyConfig]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public dumpConfigs()V
    .locals 7

    .prologue
    .line 174
    iget-object v4, p0, Lcom/android/server/OnePlusNfcService;->mCardConfigMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 175
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 177
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 178
    .local v3, "type":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
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

    .line 173
    .end local v0    # "config":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getDieId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    sget-object v1, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[getDieid]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/android/server/OnePlusNfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 95
    .local v0, "nfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getDieId()Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .line 75
    sget-object v1, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[getSupportCardTypes]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
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
    .line 62
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[getSupportNfcConfigs]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 68
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

    .line 69
    iget-object v1, p0, Lcom/android/server/OnePlusNfcService;->mCardConfigMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    .local v0, "config":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusNfcService;->setNfcConfig(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public setNfcConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 52
    return-void

    .line 55
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

    .line 56
    const-string/jumbo v0, "persist.oem.nfc.rf.card"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/android/server/OnePlusNfcService;->resetNfcService()V

    .line 49
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
    .line 82
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

    .line 81
    return-void
.end method

.method public systemRunning()V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/android/server/OnePlusNfcService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[systemRunning]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-direct {p0}, Lcom/android/server/OnePlusNfcService;->loadConfigMap()V

    .line 43
    return-void
.end method
