.class public Lcom/oneplus/settings/notification/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX_RO:Ljava/lang/String; = "ro.config."

.field static final OriginName:[Ljava/lang/String;

.field static final OriginName_lory:[Ljava/lang/String;

.field static final ShowName:[I

.field static final ShowName_lory:[I

.field private static final TAG:Ljava/lang/String; = "NotificationUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x1a

    .line 22
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "chengshuang"

    aput-object v1, v0, v4

    const-string v1, "chongjing"

    aput-object v1, v0, v5

    const-string v1, "huixiang"

    aput-object v1, v0, v6

    const-string v1, "laoshidianhua"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "lingdong"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "shengcaifeiyang"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suixiang"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "tanxiaofengsheng"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "xuanzhuan"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "yunduan"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "fengqing"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "herankailang"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "jingxi"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "paihuai"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "suiyi"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "wanzhuan"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "xiaozi"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "youyuan"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "zhizhe"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "zhongqin"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "alarmclock1"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Beep-Beep-Beep Alarm"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "conglin"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "feiniao"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "xingye"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "yuzhongmanbu"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/settings/notification/NotificationUtils;->OriginName_lory:[Ljava/lang/String;

    .line 38
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "beep"

    aput-object v1, v0, v4

    const-string v1, "capriccioso"

    aput-object v1, v0, v5

    const-string v1, "Cloud"

    aput-object v1, v0, v6

    const-string v1, "echo"

    aput-object v1, v0, v7

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

    const-string v1, "alarm_clock2"

    aput-object v1, v0, v3

    const/16 v1, 0x1b

    const-string v2, "flyer"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Spring"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Walking_in_the_rain"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/settings/notification/NotificationUtils;->OriginName:[Ljava/lang/String;

    .line 52
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/settings/notification/NotificationUtils;->ShowName_lory:[I

    .line 84
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oneplus/settings/notification/NotificationUtils;->ShowName:[I

    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x3040047
        0x3040048
        0x3040049
        0x304004a
        0x304004b
        0x304004c
        0x304004d
        0x304004e
        0x304004f
        0x3040050
        0x304003d
        0x304003e
        0x304003f
        0x3040040
        0x3040041
        0x3040042
        0x3040043
        0x3040044
        0x3040045
        0x3040046
        0x3040037
        0x3040038
        0x3040039
        0x304003a
        0x304003b
        0x304003c
    .end array-data

    .line 84
    :array_1
    .array-data 4
        0x3040051
        0x304004d
        0x3040050
        0x3040049
        0x304004b
        0x3040052
        0x3040048
        0x304004a
        0x3040053
        0x304004f
        0x3040054
        0x3040055
        0x3040056
        0x3040058
        0x3040057
        0x3040044
        0x3040041
        0x3040059
        0x3040040
        0x304005a
        0x304005c
        0x304003f
        0x3040042
        0x304005b
        0x304005d
        0x304005e
        0x304005f
        0x304003a
        0x3040060
        0x3040061
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    const v8, 0x1040086

    const v7, 0x1040085

    const v6, 0x1040084

    const v5, 0x1040083

    const v4, 0x1040082

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ro.config."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "defaultRingtoneFilenameGet":Ljava/lang/String;
    invoke-static {p0}, Lcom/oneplus/settings/notification/NotificationUtils;->isSoundCustomized(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 276
    .end local v0    # "defaultRingtoneFilenameGet":Ljava/lang/String;
    .local v1, "defaultRingtoneFilenameGet":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 236
    .end local v1    # "defaultRingtoneFilenameGet":Ljava/lang/String;
    .restart local v0    # "defaultRingtoneFilenameGet":Ljava/lang/String;
    :cond_0
    const-string v2, "ringtone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    :cond_1
    :goto_1
    const-string v2, "ringtone_3"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_2
    move-object v1, v0

    .line 276
    .end local v0    # "defaultRingtoneFilenameGet":Ljava/lang/String;
    .restart local v1    # "defaultRingtoneFilenameGet":Ljava/lang/String;
    goto :goto_0

    .line 242
    .end local v1    # "defaultRingtoneFilenameGet":Ljava/lang/String;
    .restart local v0    # "defaultRingtoneFilenameGet":Ljava/lang/String;
    :cond_3
    const-string v2, "ringtone_2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 255
    :cond_4
    const-string v2, "notification_sound"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 263
    :cond_5
    const-string v2, "mms_notification"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 269
    :cond_6
    const-string v2, "alarm_alert"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private static hasData(Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 226
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

.method private static isSoundCustomized(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Ljava/lang/String;
    .param p2, "settingsName"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "index":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "mUnkownRingtone":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "mRingtoneVolume":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/oneplus/settings/notification/NotificationUtils;->OriginName:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 130
    sget-object v4, Lcom/oneplus/settings/notification/NotificationUtils;->OriginName:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    move v1, v0

    .line 139
    :cond_0
    if-lez v1, :cond_2

    sget-object v4, Lcom/oneplus/settings/notification/NotificationUtils;->OriginName:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/oneplus/settings/notification/NotificationUtils;->ShowName:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    :goto_1
    return-object v4

    .line 128
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 160
    :cond_3
    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 168
    invoke-static {p0, p2}, Lcom/oneplus/settings/notification/NotificationUtils;->restoreRingtoneIfNotExist(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    const-string v4, "ringtone"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 170
    const-string v4, "ringtone_2"

    invoke-static {p0, v4}, Lcom/oneplus/settings/notification/NotificationUtils;->restoreRingtoneIfNotExist(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    :cond_4
    const-string v4, "ringtone"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x3040053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_3
    move-object v4, p1

    .line 181
    goto :goto_1

    .line 150
    :cond_6
    const-string v4, "beep"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x3040051

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 174
    :cond_7
    const-string v4, "notification_sound"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x304005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 177
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x3040041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3
.end method

.method private static restoreRingtoneIfNotExist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 189
    .local v10, "ringtoneUri":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 193
    .local v9, "res":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 195
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

    .line 198
    invoke-static {v7}, Lcom/oneplus/settings/notification/NotificationUtils;->hasData(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
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

    invoke-static {p0, p1}, Lcom/oneplus/settings/notification/NotificationUtils;->getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 205
    invoke-static {v7}, Lcom/oneplus/settings/notification/NotificationUtils;->hasData(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 207
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

    .line 220
    .end local v11    # "rowId":I
    :cond_2
    if-eqz v7, :cond_0

    .line 221
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 217
    :catch_0
    move-exception v8

    .line 218
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "NotificationUtils"

    const-string v1, "RemoteException in restoreRingtoneIfNotExist()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    if-eqz v7, :cond_0

    .line 221
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 220
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 221
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
