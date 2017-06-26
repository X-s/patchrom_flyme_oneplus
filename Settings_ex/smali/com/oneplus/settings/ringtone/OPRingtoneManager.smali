.class public Lcom/oneplus/settings/ringtone/OPRingtoneManager;
.super Ljava/lang/Object;
.source "OPRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    }
.end annotation


# static fields
.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX_RO:Ljava/lang/String; = "ro.config."

.field public static final EXTRA_RINGTONE_DEFAULT_URI:Ljava/lang/String; = "android.intent.extra.ringtone.DEFAULT_URI"

.field public static final EXTRA_RINGTONE_EXISTING_URI:Ljava/lang/String; = "android.intent.extra.ringtone.EXISTING_URI"

.field public static final EXTRA_RINGTONE_PICKED_URI:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_URI"

.field public static final EXTRA_RINGTONE_SHOW_DEFAULT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_DEFAULT"

.field public static final EXTRA_RINGTONE_SIMID:Ljava/lang/String; = "oneplus.intent.extra.ringtone.simid"

.field public static final EXTRA_RINGTONE_TITLE:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE"

.field public static final EXTRA_RINGTONE_TYPE:Ljava/lang/String; = "android.intent.extra.ringtone.TYPE"

.field public static final ID_COLUMN_INDEX:I = 0x0

.field private static final INTERNAL_COLUMNS:[Ljava/lang/String;

.field private static final OP_RINGTONE1_DEFUALT:Ljava/lang/String; = "op_ringtone1_df"

.field private static final OP_RINGTONE2_DEFUALT:Ljava/lang/String; = "op_ringtone2_df"

.field private static final OP_RINGTONE_DEFUALT:Ljava/lang/String; = "op_ringtone_df"

.field private static final OP_SIM_SWITCH:Ljava/lang/String; = "op_sim_sw"

.field private static final TAG:Ljava/lang/String; = "RingtoneManager"

.field public static final TITLE_COLUMN_INDEX:I = 0x1

.field public static final TYPE_ALARM:I = 0x4

.field public static final TYPE_ALL:I = 0x67

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_SMS:I = 0x64

.field public static final URI_COLUMN_INDEX:I = 0x2

.field private static mDefaultUri:Landroid/net/Uri;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 356
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    .line 94
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mContext:Landroid/content/Context;

    .line 95
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setType(I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    .line 107
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mContext:Landroid/content/Context;

    .line 108
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setType(I)V

    .line 109
    return-void
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 177
    const/4 v2, 0x0

    .line 193
    :goto_0
    return-object v2

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 183
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 186
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 191
    :cond_2
    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static constructWhereClause(I)[Ljava/lang/String;
    .locals 4
    .param p0, "type"    # I

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v0, "sb":Ljava/lang/StringBuilder;
    sparse-switch p0, :sswitch_data_0

    .line 207
    const-string v1, "/system/media/audio/ringtones/%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1

    .line 200
    :sswitch_0
    const-string v1, "/system/media/audio/alarms/%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 204
    :sswitch_1
    const-string v1, "/system/media/audio/notifications/%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 198
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 303
    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v9

    .line 304
    .local v9, "setting":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-object v0

    .line 306
    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_3

    .line 307
    const-string v9, "op_ringtone_df"

    .line 308
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ringtone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 311
    .local v10, "ss":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v10, :cond_2

    const-string v10, "none"

    .end local v10    # "ss":Ljava/lang/String;
    :cond_2
    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 315
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 317
    .local v11, "uriString":Ljava/lang/String;
    if-eqz v11, :cond_4

    const-string v1, "none"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    :cond_4
    if-eqz v11, :cond_5

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_6

    .line 321
    :cond_5
    if-eqz v11, :cond_0

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_6
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v8

    .line 325
    .local v8, "ringToneUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 327
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 329
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 330
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 335
    :cond_7
    if-eqz v6, :cond_8

    .line 336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_1
    move-object v0, v8

    .line 338
    goto :goto_0

    .line 332
    :catch_0
    move-exception v7

    .line 333
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    if-eqz v6, :cond_8

    .line 336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 335
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_9

    .line 336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public static getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v0, 0x0

    .line 225
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_2

    :cond_0
    move-object v8, v0

    .line 267
    :cond_1
    :goto_0
    return-object v8

    .line 229
    :cond_2
    if-nez p1, :cond_5

    .line 230
    const-string v9, "ringtone"

    .line 231
    .local v9, "setting":Ljava/lang/String;
    const-string v10, "op_ringtone1_df"

    .line 236
    .local v10, "setting1":Ljava/lang/String;
    :goto_1
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 239
    .local v11, "ss":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v11, :cond_3

    const-string v11, "none"

    .end local v11    # "ss":Ljava/lang/String;
    :cond_3
    invoke-static {v1, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 242
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 244
    .local v12, "uriString":Ljava/lang/String;
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v8

    .line 246
    .local v8, "ringToneUri":Landroid/net/Uri;
    if-eqz v12, :cond_1

    .line 249
    const-string v1, "none"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v8, v0

    .line 250
    goto :goto_0

    .line 233
    .end local v8    # "ringToneUri":Landroid/net/Uri;
    .end local v9    # "setting":Ljava/lang/String;
    .end local v10    # "setting1":Ljava/lang/String;
    .end local v12    # "uriString":Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtone_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 234
    .restart local v9    # "setting":Ljava/lang/String;
    const-string v10, "op_ringtone2_df"

    .restart local v10    # "setting1":Ljava/lang/String;
    goto :goto_1

    .line 253
    .restart local v8    # "ringToneUri":Landroid/net/Uri;
    .restart local v12    # "uriString":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    .line 255
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 257
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 258
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 263
    :cond_7
    if-eqz v6, :cond_1

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 260
    :catch_0
    move-exception v7

    .line 261
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    if-eqz v6, :cond_1

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 263
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method private static getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    .line 391
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

    .line 393
    .local v0, "defaultRingtoneFilenameGet":Ljava/lang/String;
    return-object v0
.end method

.method private getInternalRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 166
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mFilterColumns:Ljava/util/List;

    invoke-static {v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_data"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " like ?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->constructWhereClause(I)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "type"    # I
    .param p3, "simid"    # I

    .prologue
    const/4 v0, 0x0

    .line 494
    new-instance v8, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    invoke-direct {v8, v0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 495
    .local v8, "result":Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    if-nez p1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-object v8

    .line 498
    :cond_1
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtoneUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const/4 v6, 0x0

    .line 501
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "title"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "mime_type"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 507
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    invoke-static {p0, p1, v6, p2, p3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateRingtoneForInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v9

    .line 510
    .local v9, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    .line 511
    iput-object v9, v8, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    if-eqz v6, :cond_0

    .line 518
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 517
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_2
    if-eqz v6, :cond_0

    .line 518
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 514
    :catch_0
    move-exception v7

    .line 515
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    if-eqz v6, :cond_0

    .line 518
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 517
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 518
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 403
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 343
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 344
    const-string v0, "ringtone"

    .line 352
    :goto_0
    return-object v0

    .line 345
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 346
    const-string v0, "notification_sound"

    goto :goto_0

    .line 347
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 348
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 349
    :cond_2
    const/16 v0, 0x64

    if-ne p0, v0, :cond_3

    .line 350
    const-string v0, "mms_notification"

    goto :goto_0

    .line 352
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    const/4 v8, 0x0

    .line 360
    .local v8, "c":Landroid/database/Cursor;
    sget-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;

    .line 385
    :goto_0
    return-object v0

    .line 364
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "_display_name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ringtone"

    invoke-static {p0, v7}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 373
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 375
    .local v10, "id":J
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    .end local v10    # "id":J
    :cond_1
    if-eqz v8, :cond_2

    .line 382
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 385
    :cond_2
    :goto_1
    sget-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    .line 378
    :catch_0
    move-exception v9

    .line 379
    .local v9, "re":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "RingtoneManager"

    const-string v1, "RemoteException: "

    invoke-static {v0, v1, v9}, Lcom/oneplus/settings/ringtone/OPMyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    if-eqz v8, :cond_2

    .line 382
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 381
    .end local v9    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 382
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 396
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 723
    invoke-static {p0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static isRingSimSwitchOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 718
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_sim_sw"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "type"    # I

    .prologue
    const/4 v8, 0x0

    .line 408
    if-nez p1, :cond_1

    move v0, v8

    .line 428
    :cond_0
    :goto_0
    return v0

    .line 411
    :cond_1
    const/4 v6, 0x0

    .line 413
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 425
    if-eqz v6, :cond_2

    .line 426
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    goto :goto_0

    .line 416
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "_data like ?"

    invoke-static {p2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->constructWhereClause(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 419
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    .line 420
    const/4 v0, 0x1

    .line 425
    if-eqz v6, :cond_0

    .line 426
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 425
    :cond_4
    if-eqz v6, :cond_5

    .line 426
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    move v0, v8

    .line 428
    goto :goto_0

    .line 422
    :catch_0
    move-exception v7

    .line 423
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    if-eqz v6, :cond_5

    .line 426
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 425
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 426
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mActivity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static ringtoneRestoreFromDefault(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "sound_uri"    # Landroid/net/Uri;

    .prologue
    .line 436
    const-string v10, "ro.config."

    .line 437
    .local v10, "RO_PREFIX":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v19

    .line 438
    .local v19, "settingKey":Ljava/lang/String;
    move-object/from16 v13, p2

    .line 440
    .local v13, "defaultUri":Landroid/net/Uri;
    const/16 v18, 0x0

    .line 442
    .local v18, "ringerType":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    .line 443
    const-string v18, "is_ringtone"

    .line 446
    :cond_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    .line 447
    const-string v18, "is_notification"

    .line 450
    :cond_1
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_2

    .line 451
    const-string v18, "is_alarm"

    .line 454
    :cond_2
    if-eqz v18, :cond_5

    .line 455
    const-string v2, "ringtone"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 456
    const-string v19, "ringtone"

    .line 458
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ringtone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 459
    .local v12, "defaultRingtoneName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 460
    .local v14, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v14, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 461
    .local v20, "title":Ljava/lang/String;
    const-string v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ringtoneRestoreFromDefault: title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/4 v11, 0x0

    .line 464
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "media"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=1 and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v20, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 468
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 469
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 470
    .local v16, "id":J
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 471
    const-string v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ringtoneRestoreFromDefault: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    .end local v16    # "id":J
    :cond_4
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 480
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "defaultRingtoneName":Ljava/lang/String;
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v20    # "title":Ljava/lang/String;
    :cond_5
    :goto_0
    return-object v13

    .line 473
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "defaultRingtoneName":Ljava/lang/String;
    .restart local v14    # "fileName":Ljava/lang/String;
    .restart local v20    # "title":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 474
    .local v15, "re":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "RingtoneManager"

    const-string v3, "RemoteException: "

    invoke-static {v2, v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 604
    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "setting":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 609
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 610
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "op_ringtone_df"

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 614
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "ringtone_2"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 607
    goto :goto_1

    .line 610
    :cond_4
    const-string v1, "none"

    goto :goto_2
.end method

.method public static setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 283
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    if-nez p1, :cond_3

    .line 288
    const-string v0, "ringtone"

    .line 289
    .local v0, "setting":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_ringtone1_df"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 298
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 289
    :cond_2
    const-string v1, "none"

    goto :goto_1

    .line 293
    .end local v0    # "setting":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtone_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .restart local v0    # "setting":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_ringtone2_df"

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_4
    const-string v1, "none"

    goto :goto_4

    .line 298
    :cond_5
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private setFilterColumnsList(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 124
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 131
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_1
    and-int/lit8 v1, p1, 0x64

    if-eqz v1, :cond_2

    .line 135
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 139
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_3
    return-void
.end method

.method public static setRingSimSwitch(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 713
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_sim_sw"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 715
    return-void
.end method

.method public static transToId(Ljava/lang/String;)J
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 593
    const-wide/16 v2, -0x1

    .line 595
    .local v2, "id":J
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 599
    :goto_0
    return-wide v2

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateActualRingtone(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 621
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "op_ringtone_df"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, "ringtoneUri":Ljava/lang/String;
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 624
    .local v0, "ringUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ringtone"

    if-eqz v1, :cond_2

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 628
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "ringtone_2"

    if-eqz v1, :cond_5

    const-string v5, "none"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    :goto_1
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 632
    return-void

    .line 624
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v3

    goto :goto_0

    .line 628
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static updateActualRingtone2(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 663
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "op_ringtone1_df"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, "ringtoneUri":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "op_ringtone2_df"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 667
    .local v2, "ringtoneUri1":Ljava/lang/String;
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 668
    .local v0, "ringUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ringtone"

    if-eqz v1, :cond_2

    const-string v3, "none"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v4

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 672
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "ringtone_2"

    if-eqz v2, :cond_5

    const-string v6, "none"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    :goto_1
    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 676
    return-void

    .line 668
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v4

    goto :goto_0

    .line 672
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static updateDb(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringUri"    # Landroid/net/Uri;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 693
    if-nez p1, :cond_0

    .line 710
    :goto_0
    return-void

    .line 696
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 697
    .local v0, "values":Landroid/content/ContentValues;
    sparse-switch p2, :sswitch_data_0

    .line 706
    const-string v1, "is_ringtone"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 709
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 699
    :sswitch_0
    const-string v1, "is_alarm"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 703
    :sswitch_1
    const-string v1, "is_notification"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 697
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public static updateDefaultRingtone(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 679
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ringtone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "ringtoneUri":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ringtone_2"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "ringtoneUri1":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "op_ringtone1_df"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 687
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "op_ringtone2_df"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 690
    return-void

    .line 684
    :cond_0
    const-string v2, "none"

    goto :goto_0

    .line 687
    :cond_1
    const-string v2, "none"

    goto :goto_1
.end method

.method public static updateRingtoneForInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;II)Landroid/net/Uri;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "cusor"    # Landroid/database/Cursor;
    .param p3, "type"    # I
    .param p4, "simid"    # I

    .prologue
    .line 529
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v9, p1

    .line 588
    .end local p1    # "ringtoneUri":Landroid/net/Uri;
    .local v9, "ringtoneUri":Landroid/net/Uri;
    :goto_0
    return-object v9

    .line 533
    .end local v9    # "ringtoneUri":Landroid/net/Uri;
    .restart local p1    # "ringtoneUri":Landroid/net/Uri;
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 534
    .local v8, "path":Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string v0, "/system/media/audio/ringtones/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    :cond_1
    move-object v9, p1

    .line 535
    .end local p1    # "ringtoneUri":Landroid/net/Uri;
    .restart local v9    # "ringtoneUri":Landroid/net/Uri;
    goto :goto_0

    .line 537
    .end local v9    # "ringtoneUri":Landroid/net/Uri;
    .restart local p1    # "ringtoneUri":Landroid/net/Uri;
    :cond_2
    const-string v0, "/storage/emulated/legacy"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 538
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 539
    .local v10, "title":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 540
    .local v7, "mimetype":Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 542
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 546
    .local v6, "cursor1":Landroid/database/Cursor;
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 547
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 548
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 549
    .local v11, "values":Landroid/content/ContentValues;
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 550
    const-string v0, "is_ringtone"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 558
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v11, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 580
    :goto_2
    if-eqz v6, :cond_3

    .line 581
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 583
    :cond_3
    if-lez p4, :cond_b

    .line 584
    add-int/lit8 v0, p4, -0x1

    invoke-static {p0, v0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    :goto_3
    move-object v9, p1

    .line 588
    .end local p1    # "ringtoneUri":Landroid/net/Uri;
    .restart local v9    # "ringtoneUri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 551
    .end local v9    # "ringtoneUri":Landroid/net/Uri;
    .restart local p1    # "ringtoneUri":Landroid/net/Uri;
    :cond_4
    const/4 v0, 0x2

    if-eq p3, v0, :cond_5

    const/16 v0, 0x64

    if-ne p3, v0, :cond_6

    .line 553
    :cond_5
    const-string v0, "is_notification"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 556
    :cond_6
    const-string v0, "is_alarm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 560
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_7
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 561
    .restart local v11    # "values":Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v11, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v0, "title"

    invoke-virtual {v11, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v0, "mime_type"

    invoke-virtual {v11, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v0, 0x1

    if-ne p3, v0, :cond_8

    .line 567
    const-string v0, "is_ringtone"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 576
    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 578
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    .line 568
    :cond_8
    const/4 v0, 0x2

    if-eq p3, v0, :cond_9

    const/16 v0, 0x64

    if-ne p3, v0, :cond_a

    .line 570
    :cond_9
    const-string v0, "is_notification"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_4

    .line 573
    :cond_a
    const-string v0, "is_alarm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_4

    .line 586
    :cond_b
    invoke-static {p0, p3, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_3
.end method

.method public static updateSigleRingtone(Landroid/content/Context;)Landroid/net/Uri;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 635
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 637
    .local v9, "uriString":Ljava/lang/String;
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v8

    .line 638
    .local v8, "ringToneUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 640
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 641
    const/4 v8, 0x0

    .line 653
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 654
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 656
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_ringtone_df"

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 659
    if-eqz v8, :cond_5

    .end local v8    # "ringToneUri":Landroid/net/Uri;
    :goto_3
    return-object v8

    .line 643
    .restart local v8    # "ringToneUri":Landroid/net/Uri;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 645
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 646
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 650
    :catch_0
    move-exception v7

    .line 651
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    if-eqz v6, :cond_1

    .line 654
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 653
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 654
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 656
    :cond_4
    const-string v0, "none"

    goto :goto_2

    :cond_5
    move-object v8, v10

    .line 659
    goto :goto_3
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    .line 162
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public inferStreamType()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 154
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 147
    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 151
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Setting filter columns should be done before querying for ringtones."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iput p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    .line 119
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setFilterColumnsList(I)V

    .line 120
    return-void
.end method
