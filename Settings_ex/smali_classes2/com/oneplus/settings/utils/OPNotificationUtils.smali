.class public Lcom/oneplus/settings/utils/OPNotificationUtils;
.super Ljava/lang/Object;
.source "OPNotificationUtils.java"


# static fields
.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX_RO:Ljava/lang/String; = "ro.config."

.field static final OriginName:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "OPNotificationUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    .line 28
    const-string/jumbo v1, "beep"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "capriccioso"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Cloud"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "echo"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "In_high_spirit"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 29
    const-string/jumbo v1, "Journey"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "longing"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Old_telephone"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "oneplus_tune"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Rotation"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 30
    const-string/jumbo v1, "Innocence"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 31
    const-string/jumbo v1, "Talk_about"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 33
    const-string/jumbo v1, "Ding"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "Distant"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "Drops"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "Elegant"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "Free"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "harp"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "Linger"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 34
    const-string/jumbo v1, "Meet"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "Quickly"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "surprise"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "Tactfully"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "Wind_chime"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 36
    const-string/jumbo v1, "A_starry_night"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "alarm_clock1"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "alarm_clock2"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "flyer"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "Spring"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "Walking_in_the_rain"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 26
    sput-object v0, Lcom/oneplus/settings/utils/OPNotificationUtils;->OriginName:[Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ro.config."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "defaultRingtoneFilenameGet":Ljava/lang/String;
    return-object v0
.end method

.method private static hasData(Landroid/database/Cursor;)Z
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 185
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Ljava/lang/String;
    .param p2, "settingsName"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 80
    const v3, 0x7f0e02ef

    .line 79
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "mUnkownRingtone":Ljava/lang/String;
    const/4 v1, 0x1

    .line 113
    .local v1, "type":I
    const-string/jumbo v2, "notification_sound"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "mms_notification"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 114
    :cond_0
    const/4 v1, 0x2

    .line 118
    :cond_1
    :goto_0
    const-string/jumbo v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " settingsName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {p0, v1, p1}, Landroid/media/RingtoneManager;->getRingtoneAlias(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    invoke-static {p0, p2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->restoreRingtoneIfNotExist(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v2, "ringtone"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    const-string/jumbo v2, "ringtone_2"

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->restoreRingtoneIfNotExist(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    :cond_2
    const-string/jumbo v2, "ringtone"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 128
    const v3, 0x7f0e02f0

    .line 127
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 139
    :cond_3
    :goto_1
    return-object p1

    .line 115
    :cond_4
    const-string/jumbo v2, "alarm_alert"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    const/4 v1, 0x4

    goto :goto_0

    .line 130
    :cond_5
    const-string/jumbo v2, "notification_sound"

    .line 129
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 132
    const v3, 0x7f0e02f1

    .line 131
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 134
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 135
    const v3, 0x7f0e02f2

    .line 134
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private static restoreRingtoneIfNotExist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 145
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 147
    .local v10, "ringtoneUri":Ljava/lang/String;
    if-nez v10, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 151
    .local v9, "res":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 153
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 154
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 155
    const/4 v5, 0x0

    .line 153
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 156
    .local v7, "c":Landroid/database/Cursor;
    invoke-static {v7}, Lcom/oneplus/settings/utils/OPNotificationUtils;->hasData(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 159
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 160
    const-string/jumbo v3, "_display_name=?"

    .line 161
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPNotificationUtils;->getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 162
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    .line 157
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 163
    invoke-static {v7}, Lcom/oneplus/settings/utils/OPNotificationUtils;->hasData(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 167
    .local v11, "rowId":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 172
    int-to-long v2, v11

    .line 169
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v11    # "rowId":I
    :cond_1
    if-eqz v7, :cond_2

    .line 179
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 144
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v8

    .line 176
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "OPNotificationUtils"

    const-string/jumbo v1, "RemoteException in restoreRingtoneIfNotExist()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    if-eqz v7, :cond_2

    .line 179
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 177
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 178
    if-eqz v7, :cond_3

    .line 179
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_3
    throw v0
.end method
