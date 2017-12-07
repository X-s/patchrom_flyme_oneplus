.class public Lcom/android/server/wifi/WifiApConfigStore;
.super Ljava/lang/Object;
.source "WifiApConfigStore.java"


# static fields
.field private static final AP_CONFIG_FILE_VERSION:I = 0x2

.field private static final DEFAULT_AP_CONFIG_FILE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WifiApConfigStore"

.field private static mEnableRegionalHotspotCheckbox:Z


# instance fields
.field private mAllowed2GChannel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mApConfigFile:Ljava/lang/String;

.field private final mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

.field private final mContext:Landroid/content/Context;

.field private mWifiApConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/misc/wifi/softap.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->DEFAULT_AP_CONFIG_FILE:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/WifiApConfigStore;->mEnableRegionalHotspotCheckbox:Z

    .line 48
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;

    .prologue
    .line 68
    sget-object v0, Lcom/android/server/wifi/WifiApConfigStore;->DEFAULT_AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;
    .param p3, "apConfigFile"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 59
    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    .line 74
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    .line 76
    iput-object p3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    .line 78
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 79
    const v4, 0x1040039

    .line 78
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "ap2GChannelListStr":Ljava/lang/String;
    const-string/jumbo v3, "WifiApConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "2G band allowed channels are:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz v0, :cond_0

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    .line 84
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "channelList":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 86
    .local v2, "tmp":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "channelList":[Ljava/lang/String;
    .end local v2    # "tmp":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/WifiApConfigStore;->loadApConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 92
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_1

    .line 94
    const-string/jumbo v3, "WifiApConfigStore"

    const-string/jumbo v4, "Fallback to use default AP configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getDefaultApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 98
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 100
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 101
    const v4, 0x11200ce

    .line 100
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/wifi/WifiApConfigStore;->mEnableRegionalHotspotCheckbox:Z

    .line 73
    :cond_2
    return-void
.end method

.method private getDefaultApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 7

    .prologue
    .line 213
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 216
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v4, "ro.display.series"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "product":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 218
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 230
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 231
    const v5, 0x10e00b8

    .line 230
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 232
    .local v3, "wifiApSecurityType":I
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    .line 233
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 234
    const v5, 0x1040081

    .line 233
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 235
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "randomUUID":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x9

    const/16 v6, 0xd

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 240
    .end local v2    # "randomUUID":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 220
    .end local v3    # "wifiApSecurityType":I
    :cond_1
    const-string/jumbo v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    if-eqz v1, :cond_2

    .line 222
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 225
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 226
    const v5, 0x10403f6

    .line 225
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method private static loadApConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 13
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v4, 0x0

    .line 143
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    :try_start_1
    new-instance v5, Ljava/io/DataInputStream;

    .line 145
    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 144
    invoke-direct {v5, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    .local v5, "in":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .end local v4    # "in":Ljava/io/DataInputStream;
    move-result v6

    .line 148
    .local v6, "version":I
    if-eq v6, v7, :cond_1

    if-eq v6, v12, :cond_1

    .line 149
    const-string/jumbo v7, "WifiApConfigStore"

    const-string/jumbo v8, "Bad version on hotspot configuration file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 171
    if-eqz v5, :cond_0

    .line 173
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 150
    :cond_0
    :goto_0
    return-object v11

    .line 174
    :catch_0
    move-exception v3

    .line 175
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v7, "WifiApConfigStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing hotspot configuration during read"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 153
    sget-boolean v9, Lcom/android/server/wifi/WifiApConfigStore;->mEnableRegionalHotspotCheckbox:Z

    if-eqz v9, :cond_2

    .line 154
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    :goto_1
    iput-boolean v7, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 157
    :cond_2
    if-lt v6, v12, :cond_3

    .line 158
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 159
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 162
    :cond_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 163
    .local v0, "authType":I
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v0}, Ljava/util/BitSet;->set(I)V

    .line 164
    if-eqz v0, :cond_4

    .line 165
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 171
    :cond_4
    if-eqz v5, :cond_5

    .line 173
    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    :goto_2
    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 179
    .end local v0    # "authType":I
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "version":I
    :cond_6
    :goto_3
    return-object v1

    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "version":I
    :cond_7
    move v7, v8

    .line 154
    goto :goto_1

    .line 174
    .restart local v0    # "authType":I
    :catch_1
    move-exception v3

    .line 175
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "WifiApConfigStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing hotspot configuration during read"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 167
    .end local v0    # "authType":I
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/DataInputStream;
    .end local v6    # "version":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v4, "in":Ljava/io/DataInputStream;
    :catch_2
    move-exception v3

    .line 168
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string/jumbo v7, "WifiApConfigStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error reading hotspot configuration "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 169
    const/4 v1, 0x0

    .line 171
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_6

    .line 173
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 174
    :catch_3
    move-exception v3

    .line 175
    const-string/jumbo v7, "WifiApConfigStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing hotspot configuration during read"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 170
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 171
    :goto_5
    if-eqz v4, :cond_8

    .line 173
    :try_start_8
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 170
    :cond_8
    :goto_6
    throw v7

    .line 174
    :catch_4
    move-exception v3

    .line 175
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "WifiApConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error closing hotspot configuration during read"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 170
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_5

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_5

    .line 167
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v4, "in":Ljava/io/DataInputStream;
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catch_6
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4
.end method

.method private static writeApConfiguration(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 187
    const/4 v2, 0x0

    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    .line 188
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 189
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .local v3, "out":Ljava/io/DataOutputStream;
    const/4 v6, 0x2

    :try_start_1
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 190
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 191
    sget-boolean v6, Lcom/android/server/wifi/WifiApConfigStore;->mEnableRegionalHotspotCheckbox:Z

    if-eqz v6, :cond_1

    .line 192
    iget-boolean v6, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 194
    :cond_1
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 195
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 196
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .line 197
    .local v0, "authType":I
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 198
    if-eqz v0, :cond_2

    .line 199
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 203
    :cond_2
    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    if-eqz v5, :cond_4

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 201
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 202
    .end local v0    # "authType":I
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :goto_1
    const-string/jumbo v4, "WifiApConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error writing hotspot configuration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 203
    .restart local v0    # "authType":I
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v5

    goto :goto_0

    :cond_4
    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .local v2, "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .end local v0    # "authType":I
    .local v2, "out":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v4

    .end local v2    # "out":Ljava/io/DataOutputStream;
    :goto_3
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_4
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_5
    if-eqz v5, :cond_7

    :try_start_6
    throw v5

    .line 201
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 203
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    if-nez v5, :cond_6

    move-object v5, v6

    goto :goto_5

    :cond_6
    if-eq v5, v6, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v4

    goto :goto_4

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .local v2, "out":Ljava/io/DataOutputStream;
    goto :goto_4

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public getAllowed2GChannel()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mAllowed2GChannel:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized getApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    monitor-enter p0

    .line 121
    if-nez p1, :cond_0

    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getDefaultApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mApConfigFile:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    invoke-virtual {v0}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 120
    return-void

    .line 124
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
