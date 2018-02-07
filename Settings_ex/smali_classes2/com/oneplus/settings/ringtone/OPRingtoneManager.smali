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

.field public static final EXTRA_RINGTONE_FOR_CONTACTS:Ljava/lang/String; = "ringtone_for_contacts"

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
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 91
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "title"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "title_key"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "_data"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 90
    sput-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 358
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    .line 96
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mContext:Landroid/content/Context;

    .line 97
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setType(I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    .line 109
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mContext:Landroid/content/Context;

    .line 110
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setType(I)V

    .line 108
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
    .local p0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 178
    if-nez p0, :cond_0

    .line 179
    return-object v2

    .line 181
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 185
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 188
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 193
    :cond_2
    const-string/jumbo v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static constructWhereClause(I)[Ljava/lang/String;
    .locals 4
    .param p0, "type"    # I

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "sb":Ljava/lang/StringBuilder;
    sparse-switch p0, :sswitch_data_0

    .line 209
    const-string/jumbo v1, "/system/media/audio/ringtones/%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    return-object v1

    .line 202
    :sswitch_0
    const-string/jumbo v1, "/system/media/audio/alarms/%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 206
    :sswitch_1
    const-string/jumbo v1, "/system/media/audio/notifications/%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 200
    nop

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

    .line 305
    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v9

    .line 306
    .local v9, "setting":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 307
    return-object v0

    .line 308
    :cond_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 309
    const-string/jumbo v9, "op_ringtone_df"

    .line 310
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ringtone"

    .line 311
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 313
    .local v10, "ss":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 314
    if-nez v10, :cond_1

    const-string/jumbo v10, "none"

    .line 313
    .end local v10    # "ss":Ljava/lang/String;
    :cond_1
    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 318
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 317
    invoke-static {v1, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 319
    .local v11, "uriString":Ljava/lang/String;
    if-eqz v11, :cond_3

    const-string/jumbo v1, "none"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    return-object v0

    .line 322
    :cond_3
    if-eqz v11, :cond_4

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_6

    .line 323
    :cond_4
    if-eqz v11, :cond_5

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_5
    return-object v0

    .line 326
    :cond_6
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v8

    .line 327
    .local v8, "ringToneUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 329
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 330
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 329
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 331
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 332
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 337
    :cond_7
    if-eqz v6, :cond_8

    .line 338
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 340
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_8
    :goto_0
    return-object v8

    .line 334
    :catch_0
    move-exception v7

    .line 335
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    if-eqz v6, :cond_8

    .line 338
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 336
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 337
    if-eqz v6, :cond_9

    .line 338
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_9
    throw v0
.end method

.method public static getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 227
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 228
    :cond_0
    return-object v2

    .line 231
    :cond_1
    if-nez p1, :cond_4

    .line 232
    const-string/jumbo v9, "ringtone"

    .line 233
    .local v9, "setting":Ljava/lang/String;
    const-string/jumbo v10, "op_ringtone1_df"

    .line 238
    .local v10, "setting1":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 241
    .local v11, "ss":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 242
    if-nez v11, :cond_2

    const-string/jumbo v11, "none"

    .line 241
    .end local v11    # "ss":Ljava/lang/String;
    :cond_2
    invoke-static {v0, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 245
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    invoke-static {v0, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 246
    .local v12, "uriString":Ljava/lang/String;
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v8

    .line 248
    .local v8, "ringToneUri":Landroid/net/Uri;
    if-nez v12, :cond_5

    .line 249
    return-object v8

    .line 235
    .end local v8    # "ringToneUri":Landroid/net/Uri;
    .end local v9    # "setting":Ljava/lang/String;
    .end local v10    # "setting1":Ljava/lang/String;
    .end local v12    # "uriString":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ringtone_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 236
    .restart local v9    # "setting":Ljava/lang/String;
    const-string/jumbo v10, "op_ringtone2_df"

    .restart local v10    # "setting1":Ljava/lang/String;
    goto :goto_0

    .line 251
    .restart local v8    # "ringToneUri":Landroid/net/Uri;
    .restart local v12    # "uriString":Ljava/lang/String;
    :cond_5
    const-string/jumbo v0, "none"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 252
    return-object v2

    .line 255
    :cond_6
    const/4 v6, 0x0

    .line 257
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 258
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 257
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 259
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 260
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 265
    :cond_7
    if-eqz v6, :cond_8

    .line 266
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 269
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_8
    :goto_1
    return-object v8

    .line 262
    :catch_0
    move-exception v7

    .line 263
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    if-eqz v6, :cond_8

    .line 266
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 264
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 265
    if-eqz v6, :cond_9

    .line 266
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_9
    throw v0
.end method

.method private static getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ro.config."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "defaultRingtoneFilenameGet":Ljava/lang/String;
    return-object v0
.end method

.method private getInternalRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 168
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 169
    sget-object v2, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mFilterColumns:Ljava/util/List;

    invoke-static {v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    const-string/jumbo v3, "_data"

    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    const-string/jumbo v3, " like ?"

    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->constructWhereClause(I)[Ljava/lang/String;

    move-result-object v4

    .line 173
    const-string/jumbo v5, "_display_name"

    move-object v0, p0

    .line 168
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

    .line 496
    new-instance v8, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    invoke-direct {v8, v0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 497
    .local v8, "result":Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    :cond_0
    return-object v8

    .line 500
    :cond_1
    const-string/jumbo v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ringtoneUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const/4 v6, 0x0

    .line 503
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 505
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 506
    const-string/jumbo v1, "_data"

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 507
    const-string/jumbo v1, "mime_type"

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 508
    const/4 v5, 0x0

    move-object v1, p1

    .line 503
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 509
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    invoke-static {p0, p1, v6, p2, p3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateRingtoneForInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v9

    .line 512
    .local v9, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    .line 513
    iput-object v9, v8, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    if-eqz v6, :cond_2

    .line 520
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 514
    :cond_2
    return-object v8

    .line 519
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_3
    if-eqz v6, :cond_4

    .line 520
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 522
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_0
    return-object v8

    .line 516
    :catch_0
    move-exception v7

    .line 517
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    if-eqz v6, :cond_4

    .line 520
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 518
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 519
    if-eqz v6, :cond_5

    .line 520
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 518
    :cond_5
    throw v0
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 405
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 345
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 346
    const-string/jumbo v0, "ringtone"

    return-object v0

    .line 347
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 348
    const-string/jumbo v0, "notification_sound"

    return-object v0

    .line 349
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 350
    const-string/jumbo v0, "alarm_alert"

    return-object v0

    .line 351
    :cond_2
    const/16 v0, 0x64

    if-ne p0, v0, :cond_3

    .line 352
    const-string/jumbo v0, "mms_notification"

    return-object v0

    .line 354
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 361
    const/4 v8, 0x0

    .line 362
    .local v8, "c":Landroid/database/Cursor;
    sget-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 363
    sget-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;

    return-object v0

    .line 366
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 368
    const-string/jumbo v1, "media"

    .line 366
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 370
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 371
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 372
    const-string/jumbo v4, "_display_name=?"

    .line 373
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 374
    const-string/jumbo v1, "ringtone"

    .line 373
    invoke-static {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 369
    const/4 v1, 0x0

    .line 374
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 366
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 375
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 378
    .local v10, "id":J
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 377
    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    .end local v10    # "id":J
    :cond_1
    if-eqz v8, :cond_2

    .line 384
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 387
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    sget-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;

    return-object v0

    .line 380
    :catch_0
    move-exception v9

    .line 381
    .local v9, "re":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v0, "RingtoneManager"

    const-string/jumbo v1, "RemoteException: "

    invoke-static {v0, v1, v9}, Lcom/oneplus/settings/ringtone/OPMyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    if-eqz v8, :cond_2

    .line 384
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 382
    .end local v9    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    .line 383
    if-eqz v8, :cond_3

    .line 384
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_3
    throw v0
.end method

.method public static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 399
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 400
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 398
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 725
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

    .line 720
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 721
    const-string/jumbo v3, "op_sim_sw"

    .line 720
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 721
    goto :goto_0
.end method

.method public static isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "type"    # I

    .prologue
    const/4 v8, 0x0

    .line 410
    if-nez p1, :cond_0

    .line 411
    return v8

    .line 413
    :cond_0
    const/4 v6, 0x0

    .line 415
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v0, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    return v8

    .line 418
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 419
    const-string/jumbo v3, "_data like ?"

    .line 420
    invoke-static {p2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->constructWhereClause(I)[Ljava/lang/String;

    move-result-object v4

    .line 418
    const/4 v2, 0x0

    .line 420
    const/4 v5, 0x0

    move-object v1, p1

    .line 418
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 421
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    .line 422
    const/4 v0, 0x1

    .line 427
    if-eqz v6, :cond_2

    .line 428
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_2
    return v0

    .line 427
    :cond_3
    if-eqz v6, :cond_4

    .line 428
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 430
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_0
    return v8

    .line 424
    :catch_0
    move-exception v7

    .line 425
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    if-eqz v6, :cond_4

    .line 428
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 426
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 427
    if-eqz v6, :cond_5

    .line 428
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 426
    :cond_5
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
    .line 217
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mActivity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 221
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

    return-object v0
.end method

.method public static ringtoneRestoreFromDefault(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "sound_uri"    # Landroid/net/Uri;

    .prologue
    .line 438
    const-string/jumbo v10, "ro.config."

    .line 439
    .local v10, "RO_PREFIX":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v19

    .line 440
    .local v19, "settingKey":Ljava/lang/String;
    move-object/from16 v13, p2

    .line 442
    .local v13, "defaultUri":Landroid/net/Uri;
    const/16 v18, 0x0

    .line 444
    .local v18, "ringerType":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    .line 445
    const-string/jumbo v18, "is_ringtone"

    .line 448
    .end local v18    # "ringerType":Ljava/lang/String;
    :cond_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    .line 449
    const-string/jumbo v18, "is_notification"

    .line 452
    :cond_1
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_2

    .line 453
    const-string/jumbo v18, "is_alarm"

    .line 456
    :cond_2
    if-eqz v18, :cond_5

    .line 457
    const-string/jumbo v2, "ringtone"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 458
    const-string/jumbo v19, "ringtone"

    .line 460
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ringtone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 461
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

    .line 462
    .local v14, "fileName":Ljava/lang/String;
    const-string/jumbo v2, "."

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v14, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 463
    .local v20, "title":Ljava/lang/String;
    const-string/jumbo v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ringtoneRestoreFromDefault: title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/4 v11, 0x0

    .line 466
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "media"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 467
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "=1 and "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "title"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "=?"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 469
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v20, v7, v3

    .line 466
    const/4 v3, 0x0

    .line 469
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 466
    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 470
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 471
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 472
    .local v16, "id":J
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 473
    const-string/jumbo v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ringtoneRestoreFromDefault: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] = "

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

    .line 478
    .end local v16    # "id":J
    :cond_4
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 482
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "defaultRingtoneName":Ljava/lang/String;
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v20    # "title":Ljava/lang/String;
    :cond_5
    :goto_0
    return-object v13

    .line 475
    .restart local v12    # "defaultRingtoneName":Ljava/lang/String;
    .restart local v14    # "fileName":Ljava/lang/String;
    .restart local v20    # "title":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 476
    .local v15, "re":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v2, "RingtoneManager"

    const-string/jumbo v3, "RemoteException: "

    invoke-static {v2, v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 477
    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 478
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 477
    throw v2
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 606
    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "setting":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 608
    return-void

    .line 609
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 610
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    :goto_0
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 611
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 612
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 613
    const-string/jumbo v4, "op_ringtone_df"

    .line 614
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 612
    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 616
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 617
    const-string/jumbo v3, "ringtone_2"

    .line 618
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 616
    :cond_1
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 605
    :cond_2
    return-void

    :cond_3
    move-object v1, v2

    .line 610
    goto :goto_0

    .line 614
    :cond_4
    const-string/jumbo v1, "none"

    goto :goto_1
.end method

.method public static setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 285
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_1

    .line 286
    :cond_0
    return-void

    .line 289
    :cond_1
    if-nez p1, :cond_3

    .line 290
    const-string/jumbo v0, "ringtone"

    .line 291
    .local v0, "setting":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 292
    const-string/jumbo v4, "op_ringtone1_df"

    .line 293
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 300
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 301
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    :goto_2
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 284
    return-void

    .line 293
    :cond_2
    const-string/jumbo v1, "none"

    goto :goto_0

    .line 295
    .end local v0    # "setting":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtone_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .restart local v0    # "setting":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 297
    const-string/jumbo v4, "op_ringtone2_df"

    .line 298
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 298
    :cond_4
    const-string/jumbo v1, "none"

    goto :goto_3

    :cond_5
    move-object v1, v2

    .line 301
    goto :goto_2
.end method

.method private setFilterColumnsList(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 126
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 129
    const-string/jumbo v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 133
    const-string/jumbo v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    and-int/lit8 v1, p1, 0x64

    if-eqz v1, :cond_2

    .line 137
    const-string/jumbo v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 141
    const-string/jumbo v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_3
    return-void
.end method

.method public static setRingSimSwitch(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 715
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_sim_sw"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 714
    return-void
.end method

.method public static transToId(Ljava/lang/String;)J
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 595
    const-wide/16 v2, -0x1

    .line 597
    .local v2, "id":J
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 601
    :goto_0
    return-wide v2

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateActualRingtone(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 624
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "op_ringtone_df"

    .line 623
    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "ringtoneUri":Ljava/lang/String;
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 626
    .local v0, "ringUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 627
    const-string/jumbo v5, "ringtone"

    .line 628
    if-eqz v1, :cond_2

    const-string/jumbo v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    .line 626
    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 630
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 631
    const-string/jumbo v4, "ringtone_2"

    .line 632
    if-eqz v1, :cond_5

    const-string/jumbo v5, "none"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 630
    :cond_0
    :goto_1
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 622
    return-void

    .line 629
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

    .line 633
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

    .line 666
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "op_ringtone1_df"

    .line 665
    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "ringtoneUri":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "op_ringtone2_df"

    .line 667
    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "ringtoneUri1":Ljava/lang/String;
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 670
    .local v0, "ringUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 671
    const-string/jumbo v6, "ringtone"

    .line 672
    if-eqz v1, :cond_2

    const-string/jumbo v3, "none"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v4

    .line 670
    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 674
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 675
    const-string/jumbo v5, "ringtone_2"

    .line 676
    if-eqz v2, :cond_5

    const-string/jumbo v6, "none"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 674
    :cond_0
    :goto_1
    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 664
    return-void

    .line 673
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

    .line 677
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

    .line 695
    if-nez p1, :cond_0

    .line 696
    return-void

    .line 698
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 699
    .local v0, "values":Landroid/content/ContentValues;
    sparse-switch p2, :sswitch_data_0

    .line 708
    const-string/jumbo v1, "is_ringtone"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 711
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 694
    return-void

    .line 701
    :sswitch_0
    const-string/jumbo v1, "is_alarm"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 705
    :sswitch_1
    const-string/jumbo v1, "is_notification"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 699
    nop

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
    .line 682
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ringtone"

    .line 681
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "ringtoneUri":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ringtone_2"

    .line 683
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, "ringtoneUri1":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 687
    const-string/jumbo v4, "op_ringtone1_df"

    .line 688
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 686
    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 689
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 690
    const-string/jumbo v4, "op_ringtone2_df"

    .line 691
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 689
    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 680
    return-void

    .line 688
    :cond_0
    const-string/jumbo v2, "none"

    goto :goto_0

    .line 691
    :cond_1
    const-string/jumbo v2, "none"

    goto :goto_1
.end method

.method public static updateRingtoneForInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;II)Landroid/net/Uri;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "cusor"    # Landroid/database/Cursor;
    .param p3, "type"    # I
    .param p4, "simid"    # I

    .prologue
    .line 531
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    return-object p1

    .line 535
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 536
    .local v8, "path":Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string/jumbo v0, "/system/media/audio/ringtones/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 537
    :cond_1
    return-object p1

    .line 539
    :cond_2
    const-string/jumbo v0, "/storage/emulated/legacy"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 540
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 541
    .local v9, "title":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 542
    .local v7, "mimetype":Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 544
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 545
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 546
    const-string/jumbo v3, "_data=?"

    .line 547
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    .line 544
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 548
    .local v6, "cursor1":Landroid/database/Cursor;
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 549
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 550
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 551
    .local v10, "values":Landroid/content/ContentValues;
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 552
    const-string/jumbo v0, "is_ringtone"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 560
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 582
    :goto_1
    if-eqz v6, :cond_3

    .line 583
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 585
    :cond_3
    if-lez p4, :cond_b

    .line 586
    add-int/lit8 v0, p4, -0x1

    invoke-static {p0, v0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 590
    :goto_2
    return-object p1

    .line 553
    :cond_4
    const/4 v0, 0x2

    if-eq p3, v0, :cond_5

    const/16 v0, 0x64

    if-ne p3, v0, :cond_6

    .line 555
    :cond_5
    const-string/jumbo v0, "is_notification"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 558
    :cond_6
    const-string/jumbo v0, "is_alarm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 562
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_7
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 563
    .restart local v10    # "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "_data"

    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string/jumbo v0, "title"

    invoke-virtual {v10, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string/jumbo v0, "mime_type"

    invoke-virtual {v10, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/4 v0, 0x1

    if-ne p3, v0, :cond_8

    .line 569
    const-string/jumbo v0, "is_ringtone"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 578
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_data=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 578
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 580
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 570
    :cond_8
    const/4 v0, 0x2

    if-eq p3, v0, :cond_9

    const/16 v0, 0x64

    if-ne p3, v0, :cond_a

    .line 572
    :cond_9
    const-string/jumbo v0, "is_notification"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 575
    :cond_a
    const-string/jumbo v0, "is_alarm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 588
    :cond_b
    invoke-static {p0, p3, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_2
.end method

.method public static updateSigleRingtone(Landroid/content/Context;)Landroid/net/Uri;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 638
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ringtone"

    .line 637
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 639
    .local v9, "uriString":Ljava/lang/String;
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v8

    .line 640
    .local v8, "ringToneUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 642
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 643
    const/4 v8, 0x0

    .line 655
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "ringToneUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 656
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 658
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 659
    const-string/jumbo v2, "op_ringtone_df"

    .line 660
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    :goto_2
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 661
    if-eqz v8, :cond_5

    :goto_3
    return-object v8

    .line 645
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "ringToneUri":Landroid/net/Uri;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 646
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 645
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 647
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 648
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 652
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 653
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    if-eqz v6, :cond_1

    .line 656
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 654
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 655
    if-eqz v6, :cond_3

    .line 656
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 654
    :cond_3
    throw v0

    .line 660
    .end local v8    # "ringToneUri":Landroid/net/Uri;
    :cond_4
    const-string/jumbo v0, "none"

    goto :goto_2

    :cond_5
    move-object v8, v10

    .line 661
    goto :goto_3
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v0

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public inferStreamType()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 156
    const/4 v0, 0x2

    return v0

    .line 149
    :sswitch_0
    const/4 v0, 0x4

    return v0

    .line 153
    :sswitch_1
    const/4 v0, 0x5

    return v0

    .line 146
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
    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 117
    const-string/jumbo v1, "Setting filter columns should be done before querying for ringtones."

    .line 116
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iput p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    .line 121
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setFilterColumnsList(I)V

    .line 113
    return-void
.end method
