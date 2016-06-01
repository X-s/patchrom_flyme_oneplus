.class Lcom/oppo/service/account/AuthTokenProvider;
.super Ljava/lang/Object;
.source "AuthTokenProvider.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountSize(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "c":Landroid/content/Context;
    const/4 v1, 0x0

    .line 401
    .local v1, "count":I
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v4

    const/16 v5, 0xe6

    if-lt v4, v5, :cond_1

    .line 404
    :try_start_0
    const-string v4, "com.oppo.service.account"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_0

    .line 407
    const-string v4, "APP_LOGIN_RECORD_INFO"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 409
    .local v3, "prefence":Landroid/content/SharedPreferences;
    const-string v4, "AccountNumber"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 427
    .end local v3    # "prefence":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v1

    .line 412
    :catch_0
    move-exception v2

    .line 413
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 418
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-static {p0}, Lcom/oppo/service/account/AuthTokenProvider;->isLogin(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 419
    const/4 v1, 0x1

    .line 421
    goto :goto_0

    .line 422
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 99
    const-string v9, ""

    .line 100
    .local v9, "name":Ljava/lang/String;
    invoke-static {p0}, Lcom/oppo/service/account/AuthTokenProvider;->isNewUCServiceVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const/4 v6, 0x0

    .line 103
    .local v6, "c":Landroid/content/Context;
    :try_start_0
    const-string v0, "com.oppo.service.account"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 108
    :goto_0
    if-eqz v6, :cond_0

    .line 109
    const-string v0, "USER_INFO"

    const/4 v1, 0x4

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 110
    .local v10, "prefence":Landroid/content/SharedPreferences;
    const-string v0, "USER_INFO_UNAME"

    const-string v1, ""

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .end local v6    # "c":Landroid/content/Context;
    .end local v10    # "prefence":Landroid/content/SharedPreferences;
    :cond_0
    :goto_1
    move-object v0, v9

    .line 129
    :goto_2
    return-object v0

    .line 104
    .restart local v6    # "c":Landroid/content/Context;
    :catch_0
    move-exception v8

    .line 105
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v6    # "c":Landroid/content/Context;
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v7, 0x0

    .line 115
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 116
    const-string v1, "content://com.oppo.service.account.tokenprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 117
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 115
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 118
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 119
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 124
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 125
    :catch_1
    move-exception v0

    goto :goto_1

    .line 120
    :catch_2
    move-exception v8

    .line 124
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 121
    :goto_3
    const-string v0, ""

    goto :goto_2

    .line 122
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 124
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 127
    :goto_4
    throw v0

    .line 125
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    goto :goto_3

    .end local v8    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    goto :goto_4
.end method

.method public static getName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v3, ""

    .line 288
    .local v3, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 289
    .local v0, "c":Landroid/content/Context;
    invoke-static {p0}, Lcom/oppo/service/account/AuthTokenProvider;->isOneAccount(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0, p1}, Lcom/oppo/service/account/AuthTokenProvider;->isAppFirstLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    :try_start_0
    const-string v4, "com.oppo.service.account"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    .line 296
    const-string v4, "APP_LOGIN_RECORD_INFO"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 298
    .local v2, "prefence":Landroid/content/SharedPreferences;
    const-string v4, "NameWhenOneAccount"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 321
    .end local v2    # "prefence":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v3

    .line 302
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 309
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :try_start_1
    const-string v4, "com.oppo.service.account"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    .line 311
    const-string v4, "USER_NAME_INFO"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 312
    .restart local v2    # "prefence":Landroid/content/SharedPreferences;
    const-string v4, ""

    invoke-interface {v2, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 314
    .end local v2    # "prefence":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v1

    .line 315
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOVName(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 187
    const/4 v6, 0x0

    .line 189
    .local v6, "cur":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    const-string v1, "content://com.oppo.usercenter.accountinfo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 191
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 189
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 193
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 194
    .local v8, "uidStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 195
    :goto_0
    const-string v8, ""

    .line 200
    .end local v8    # "uidStr":Ljava/lang/String;
    :goto_1
    return-object v8

    .line 203
    .restart local v8    # "uidStr":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 204
    :catch_0
    move-exception v0

    goto :goto_1

    .line 199
    .end local v8    # "uidStr":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 203
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 200
    :goto_2
    const-string v8, ""

    goto :goto_1

    .line 201
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 203
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 206
    :goto_3
    throw v0

    .line 204
    .restart local v8    # "uidStr":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_0

    .end local v8    # "uidStr":Ljava/lang/String;
    .restart local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    goto :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method public static getToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 56
    const-string v10, ""

    .line 58
    .local v10, "result":Ljava/lang/String;
    invoke-static {p0}, Lcom/oppo/service/account/AuthTokenProvider;->isNewUCServiceVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const/4 v6, 0x0

    .line 62
    .local v6, "c":Landroid/content/Context;
    :try_start_0
    const-string v0, "com.oppo.service.account"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 66
    :goto_0
    if-eqz v6, :cond_0

    .line 67
    const-string v0, "USER_INFO"

    const/4 v1, 0x4

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 68
    .local v9, "prefence":Landroid/content/SharedPreferences;
    const-string v0, "USER_INFO_TOKEN"

    const-string v1, ""

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .end local v6    # "c":Landroid/content/Context;
    .end local v9    # "prefence":Landroid/content/SharedPreferences;
    :cond_0
    :goto_1
    move-object v0, v10

    .line 87
    :goto_2
    return-object v0

    .line 63
    .restart local v6    # "c":Landroid/content/Context;
    :catch_0
    move-exception v8

    .line 64
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v6    # "c":Landroid/content/Context;
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v7, 0x0

    .line 73
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    const-string v1, "content://com.oppo.service.account.tokenprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 75
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 73
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 76
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 77
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 82
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 83
    :catch_1
    move-exception v0

    goto :goto_1

    .line 78
    :catch_2
    move-exception v8

    .line 82
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 79
    :goto_3
    const-string v0, ""

    goto :goto_2

    .line 80
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 82
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 85
    :goto_4
    throw v0

    .line 83
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    goto :goto_3

    .end local v8    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    goto :goto_4
.end method

.method public static getToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string v3, ""

    .line 239
    .local v3, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 242
    .local v0, "c":Landroid/content/Context;
    invoke-static {p0}, Lcom/oppo/service/account/AuthTokenProvider;->isOneAccount(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0, p1}, Lcom/oppo/service/account/AuthTokenProvider;->isAppFirstLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    :try_start_0
    const-string v4, "com.oppo.service.account"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_0

    .line 249
    const-string v4, "APP_LOGIN_RECORD_INFO"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 251
    .local v2, "prefence":Landroid/content/SharedPreferences;
    const-string v4, "TokenWhenOneAccount"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 277
    .end local v2    # "prefence":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v3

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 263
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :try_start_1
    const-string v4, "com.oppo.service.account"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    .line 266
    const-string v4, "USER_TOKEN_INFO"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 267
    .restart local v2    # "prefence":Landroid/content/SharedPreferences;
    const-string v4, ""

    invoke-interface {v2, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 270
    .end local v2    # "prefence":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v1

    .line 271
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUid(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 153
    const/4 v6, 0x0

    .line 155
    .local v6, "cur":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    const-string v1, "content://com.oppo.usercenter.accountinfo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 157
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 155
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 158
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 159
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, "uidStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 161
    :goto_0
    const-string v8, "0"

    .line 170
    .end local v8    # "uidStr":Ljava/lang/String;
    :goto_1
    return-object v8

    .line 163
    .restart local v8    # "uidStr":Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v0, "-1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 164
    :goto_2
    const-string v8, "0"

    goto :goto_1

    .line 173
    :cond_1
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    goto :goto_1

    .line 169
    .end local v8    # "uidStr":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 173
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 170
    :goto_3
    const-string v8, "0"

    goto :goto_1

    .line 171
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 173
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 176
    :goto_4
    throw v0

    .line 174
    .restart local v8    # "uidStr":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_2

    .end local v8    # "uidStr":Ljava/lang/String;
    .restart local v7    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    goto :goto_3

    .end local v7    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    goto :goto_4
.end method

.method public static isAppFirstLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 377
    const/4 v3, 0x1

    .line 378
    .local v3, "result":Z
    const/4 v0, 0x0

    .line 381
    .local v0, "c":Landroid/content/Context;
    :try_start_0
    const-string v4, "com.oppo.service.account"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_0

    .line 383
    const-string v4, "APP_LOGIN_RECORD_INFO"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 384
    .local v2, "prefence":Landroid/content/SharedPreferences;
    const/4 v4, 0x1

    invoke-interface {v2, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 390
    .end local v2    # "prefence":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v3

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isBefLogin(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 218
    invoke-static {p0}, Lcom/oppo/service/account/AuthTokenProvider;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "uid":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    const/4 v1, 0x0

    .line 223
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isLogin(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/oppo/service/account/AuthTokenProvider;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 333
    invoke-static {p0}, Lcom/oppo/service/account/AuthTokenProvider;->isOneAccount(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, p1}, Lcom/oppo/service/account/AuthTokenProvider;->isAppFirstLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.oppo.service.account.updateaccountinforeceiver"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "AppCode"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v2

    .line 343
    :cond_1
    invoke-static {p0, p1}, Lcom/oppo/service/account/AuthTokenProvider;->getToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isNewUCServiceVersion(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 30
    const-string v2, "com.oppo.service.account"

    .line 32
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 33
    const/16 v5, 0x2000

    .line 32
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 35
    const/4 v5, 0x0

    .line 34
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 36
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0xd2

    if-lt v4, v5, :cond_0

    .line 37
    const/4 v3, 0x1

    .line 43
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 42
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isOneAccount(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 354
    const/4 v3, 0x0

    .line 355
    .local v3, "result":Z
    const/4 v0, 0x0

    .line 358
    .local v0, "c":Landroid/content/Context;
    :try_start_0
    const-string v4, "com.oppo.service.account"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 360
    const-string v4, "APP_LOGIN_RECORD_INFO"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 361
    .local v2, "prefence":Landroid/content/SharedPreferences;
    const-string v4, "IsOneAccount"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 367
    .end local v2    # "prefence":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v3

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
