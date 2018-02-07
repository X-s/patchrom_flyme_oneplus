.class public Lcom/android/settings_ex/datausage/OPDataUsageUtils;
.super Ljava/lang/Object;
.source "OPDataUsageUtils.java"


# static fields
.field public static final ERROR_CODE_EXCEPTION:I = 0x2

.field public static final ERROR_CODE_INVILIDSIMCARD:I = 0x1

.field public static final ERROR_CODE_NO:I = 0x0

.field public static final KEY_ACCOUNT_DAY_SIM:Ljava/lang/String; = "key_account_day_slot_"

.field private static final KEY_DATAUSAGE_ALERT_NUMBER_SIM:Ljava/lang/String; = "key_datausage_alert_number_sim_"

.field private static final KEY_DATAUSAGE_WARN_STATE:Ljava/lang/String; = "key_ten_percent_low_remaining_state_sim_"

.field public static final METHOD_QUERY_ONEPLUS_DATAUSAGE:Ljava/lang/String; = "method_query_oneplus_datausage"

.field public static final METHOD_QUERY_ONEPLUS_DATAUSAGE_REGION:Ljava/lang/String; = "method_query_oneplus_datausage_region"

.field public static final ONEPLUS_DATAUSAGE_ACCOUNTDAY:Ljava/lang/String; = "oneplus_datausage_accountday"

.field public static final ONEPLUS_DATAUSAGE_ERROR_CODE:Ljava/lang/String; = "oneplus_datausage_error_code"

.field public static final ONEPLUS_DATAUSAGE_SLOTID:Ljava/lang/String; = "oneplus_datausage_slotid"

.field public static final ONEPLUS_DATAUSAGE_TIME_END:Ljava/lang/String; = "oneplus_datausage_time_end"

.field public static final ONEPLUS_DATAUSAGE_TIME_START:Ljava/lang/String; = "oneplus_datausage_time_start"

.field public static final ONEPLUS_DATAUSAGE_TOTAL:Ljava/lang/String; = "oneplus_datausage_total"

.field public static final ONEPLUS_DATAUSAGE_USED:Ljava/lang/String; = "oneplus_datausage_used"

.field public static final ONEPLUS_DATAUSAGE_WARN_STATE:Ljava/lang/String; = "oneplus_datausage_warn_state"

.field public static final ONEPLUS_DATAUSAGE_WARN_VALUE:Ljava/lang/String; = "oneplus_datausage_warn_value"

.field public static final ONEPLUS_SECURITY_URI:Ljava/lang/String; = "content://com.oneplus.security.database.SafeProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAccountDay(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key_account_day_slot_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, "day":I
    return v0
.end method

.method public static getApplicationInfoByUid(Landroid/content/Context;I)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 91
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "packageNames":[Ljava/lang/String;
    if-eqz v7, :cond_1

    array-length v5, v7

    .line 94
    .local v5, "length":I
    :goto_0
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 95
    .local v9, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 96
    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 97
    aget-object v6, v7, v3

    .line 98
    .local v6, "packageName":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-interface {v4, v6, v10, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 99
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 92
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i":I
    .end local v4    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v5    # "length":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "userId":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "length":I
    goto :goto_0

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v1
.end method

.method public static getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v1, -0x1

    .line 75
    if-eq p1, v1, :cond_0

    .line 76
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPSNSUtils;->findSlotIdBySubId(I)I

    move-result v0

    .line 77
    .local v0, "slotId":I
    invoke-static {p0, v0}, Lcom/android/settings_ex/datausage/OPDataUsageUtils;->getOneplusDataUsageRegion(Landroid/content/Context;I)[J

    move-result-object v1

    return-object v1

    .line 79
    .end local v0    # "slotId":I
    :cond_0
    invoke-static {p0, v1}, Lcom/android/settings_ex/datausage/OPDataUsageUtils;->getOneplusDataUsageRegion(Landroid/content/Context;I)[J

    move-result-object v1

    return-object v1
.end method

.method public static final getDataWarnBytes(Landroid/content/Context;I)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key_datausage_alert_number_sim_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 54
    .local v0, "data":J
    return-wide v0
.end method

.method public static final getDataWarnState(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key_ten_percent_low_remaining_state_sim_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, "state":I
    return v0
.end method

.method public static getOneplusDataUsage(Landroid/content/Context;I)Ljava/util/Map;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v19, "oneplus_datausage_slotid"

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v22, "content://com.oneplus.security.database.SafeProvider"

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const-string/jumbo v23, "method_query_oneplus_datausage"

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 166
    .local v6, "bundle2":Landroid/os/Bundle;
    if-eqz v6, :cond_0

    .line 167
    const-string/jumbo v19, "oneplus_datausage_error_code"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 168
    .local v10, "errorCode":I
    const-string/jumbo v19, "oneplus_datausage_accountday"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 169
    .local v4, "accountDay":I
    const-string/jumbo v19, "oneplus_datausage_time_start"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 170
    .local v12, "startTime":J
    const-string/jumbo v19, "oneplus_datausage_time_end"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 171
    .local v8, "endTime":J
    const-string/jumbo v19, "oneplus_datausage_total"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 172
    .local v14, "total":J
    const-string/jumbo v19, "oneplus_datausage_used"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 173
    .local v16, "used":J
    const-string/jumbo v19, "oneplus_datausage_warn_state"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 174
    .local v18, "warnState":Z
    const-string/jumbo v19, "oneplus_datausage_warn_value"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 175
    .local v20, "warnValue":J
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v11

    .line 176
    .local v11, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v19, "oneplus_datausage_error_code"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v19, "oneplus_datausage_accountday"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v19, "oneplus_datausage_total"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v19, "oneplus_datausage_used"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v19, "oneplus_datausage_time_start"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v19, "oneplus_datausage_time_end"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v19, "oneplus_datausage_warn_state"

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string/jumbo v19, "oneplus_datausage_warn_value"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    return-object v11

    .line 186
    .end local v4    # "accountDay":I
    .end local v6    # "bundle2":Landroid/os/Bundle;
    .end local v8    # "endTime":J
    .end local v10    # "errorCode":I
    .end local v11    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "startTime":J
    .end local v14    # "total":J
    .end local v16    # "used":J
    .end local v18    # "warnState":Z
    .end local v20    # "warnValue":J
    :catch_0
    move-exception v7

    .line 187
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "OPDataUsageUtils"

    const-string/jumbo v22, "getOneplusDataUsage error"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v19, 0x0

    return-object v19
.end method

.method public static getOneplusDataUsageRegion(Landroid/content/Context;I)[J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "oneplus_datausage_slotid"

    invoke-virtual {v0, v8, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "content://com.oneplus.security.database.SafeProvider"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string/jumbo v10, "method_query_oneplus_datausage_region"

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 201
    .local v1, "bundle2":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 202
    const-string/jumbo v8, "oneplus_datausage_error_code"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 203
    .local v3, "errorCode":I
    const/4 v8, 0x2

    if-eq v3, v8, :cond_0

    .line 204
    const-string/jumbo v8, "oneplus_datausage_time_start"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 205
    .local v6, "startTime":J
    const-string/jumbo v8, "oneplus_datausage_time_end"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 206
    .local v4, "endTime":J
    const/4 v8, 0x2

    new-array v8, v8, [J

    const/4 v9, 0x0

    aput-wide v6, v8, v9

    const/4 v9, 0x1

    aput-wide v4, v8, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 209
    .end local v1    # "bundle2":Landroid/os/Bundle;
    .end local v3    # "errorCode":I
    .end local v4    # "endTime":J
    .end local v6    # "startTime":J
    :catch_0
    move-exception v2

    .line 210
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "OPDataUsageUtils"

    const-string/jumbo v9, "getOneplusDataUsage error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v8, 0x2

    new-array v8, v8, [J

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    aput-wide v10, v8, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v9, 0x1

    aput-wide v10, v8, v9

    return-object v8
.end method
