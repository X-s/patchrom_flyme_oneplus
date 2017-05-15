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

    const/4 v1, 0x0

    const-string v2, "beep"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "capriccioso"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Cloud"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "echo"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "In_high_spirit"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Journey"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "longing"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Old_telephone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "oneplus_tune"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Rotation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Innocence"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Talk_about"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Ding"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Distant"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Drops"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Elegant"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Free"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "harp"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Linger"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Meet"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Quickly"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "surprise"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Tactfully"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Wind_chime"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "A_starry_night"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "alarm_clock1"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "alarm_clock2"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "flyer"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Spring"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Walking_in_the_rain"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/settings/utils/OPNotificationUtils;->OriginName:[Ljava/lang/String;

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
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ro.config."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "defaultRingtoneFilenameGet":Ljava/lang/String;
    return-object v0
.end method

.method private static hasData(Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 185
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    const v3, 0x7f0c01a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "mUnkownRingtone":Ljava/lang/String;
    const/4 v1, 0x1

    .line 113
    .local v1, "type":I
    const-string v2, "notification_sound"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mms_notification"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 114
    :cond_0
    const/4 v1, 0x2

    .line 118
    :cond_1
    :goto_0
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " settingsName:"

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
    const-string v2, "ringtone"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    const-string v2, "ringtone_2"

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->restoreRingtoneIfNotExist(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    :cond_2
    const-string v2, "ringtone"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 139
    :cond_3
    :goto_1
    return-object p1

    .line 115
    :cond_4
    const-string v2, "alarm_alert"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    const/4 v1, 0x4

    goto :goto_0

    .line 129
    :cond_5
    const-string v2, "notification_sound"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 134
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private static restoreRingtoneIfNotExist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 147
    .local v10, "ringtoneUri":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
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

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 156
    invoke-static {v7}, Lcom/oneplus/settings/utils/OPNotificationUtils;->hasData(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "_display_name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPNotificationUtils;->getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 163
    invoke-static {v7}, Lcom/oneplus/settings/utils/OPNotificationUtils;->hasData(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 165
    .local v11, "rowId":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v11

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v11    # "rowId":I
    :cond_2
    if-eqz v7, :cond_0

    .line 179
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 175
    :catch_0
    move-exception v8

    .line 176
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "OPNotificationUtils"

    const-string v1, "RemoteException in restoreRingtoneIfNotExist()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    if-eqz v7, :cond_0

    .line 179
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 178
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 179
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
