.class public Lcom/oneplus/settings/utils/OPFirewallUtils;
.super Ljava/lang/Object;
.source "OPFirewallUtils.java"


# static fields
.field public static final COLUMN_MOBILE:Ljava/lang/String; = "mobile"

.field public static final COLUMN_PACKAGE:Ljava/lang/String; = "pkg"

.field public static final COLUMN_WLAN:Ljava/lang/String; = "wlan"

.field public static final OPSAFE_AUTHORITY:Ljava/lang/String; = "com.oneplus.security.database.SafeProvider"

.field public static final TABLE_NETWORK_RESTRICT:Ljava/lang/String; = "network_restrict"

.field private static final TAG:Ljava/lang/String; = "OPFirewallUtils"

.field public static final URI_NETWORK_RESTRICT:Landroid/net/Uri;

.field public static final URI_OPSAFE_BASE:Landroid/net/Uri;

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-string/jumbo v0, "content://com.oneplus.security.database.SafeProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPFirewallUtils;->URI_OPSAFE_BASE:Landroid/net/Uri;

    .line 22
    sget-object v0, Lcom/oneplus/settings/utils/OPFirewallUtils;->URI_OPSAFE_BASE:Landroid/net/Uri;

    const-string/jumbo v1, "network_restrict"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPFirewallUtils;->URI_NETWORK_RESTRICT:Landroid/net/Uri;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrUpdateRole(Landroid/content/Context;Lcom/oneplus/settings/utils/OPFirewallRule;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "firewallRule"    # Lcom/oneplus/settings/utils/OPFirewallRule;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 36
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getWlan()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 37
    const-string/jumbo v6, "wlan"

    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getWlan()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getMobile()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 40
    const-string/jumbo v3, "mobile"

    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getMobile()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_3

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getPkg()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPFirewallUtils;->selectFirewallRuleByPkg(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/utils/OPFirewallRule;

    move-result-object v1

    .line 44
    .local v1, "fr":Lcom/oneplus/settings/utils/OPFirewallRule;
    if-nez v1, :cond_4

    .line 45
    :try_start_0
    const-string/jumbo v3, "pkg"

    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/oneplus/settings/utils/OPFirewallUtils;->URI_NETWORK_RESTRICT:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 34
    :goto_2
    return-void

    .end local v1    # "fr":Lcom/oneplus/settings/utils/OPFirewallRule;
    :cond_2
    move v3, v5

    .line 37
    goto :goto_0

    :cond_3
    move v4, v5

    .line 40
    goto :goto_1

    .line 48
    .restart local v1    # "fr":Lcom/oneplus/settings/utils/OPFirewallRule;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/oneplus/settings/utils/OPFirewallUtils;->URI_NETWORK_RESTRICT:Landroid/net/Uri;

    const-string/jumbo v5, "pkg = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getPkg()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OPFirewallUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static selectAllFirewallRules(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/utils/OPFirewallRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v7, 0x0

    .line 63
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 65
    .local v12, "roleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/utils/OPFirewallRule;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/utils/OPFirewallUtils;->URI_NETWORK_RESTRICT:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 66
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 67
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v12    # "roleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/utils/OPFirewallRule;>;"
    .local v13, "roleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/utils/OPFirewallRule;>;"
    :goto_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const-string/jumbo v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 70
    .local v6, "_id":I
    const-string/jumbo v0, "pkg"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 71
    .local v10, "pkg":Ljava/lang/String;
    const-string/jumbo v0, "wlan"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 72
    .local v14, "wlan":I
    const-string/jumbo v0, "mobile"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 73
    .local v9, "mobile":I
    new-instance v11, Lcom/oneplus/settings/utils/OPFirewallRule;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v11, v0, v10, v1, v2}, Lcom/oneplus/settings/utils/OPFirewallRule;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 74
    .local v11, "role":Lcom/oneplus/settings/utils/OPFirewallRule;
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 77
    .end local v6    # "_id":I
    .end local v9    # "mobile":I
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "role":Lcom/oneplus/settings/utils/OPFirewallRule;
    .end local v14    # "wlan":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    move-object v12, v13

    .line 78
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v13    # "roleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/utils/OPFirewallRule;>;"
    :goto_1
    :try_start_2
    const-string/jumbo v0, "OPFirewallUtils"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    if-eqz v7, :cond_0

    .line 81
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 84
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v12

    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "roleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/utils/OPFirewallRule;>;"
    :cond_1
    move-object v12, v13

    .line 80
    .end local v13    # "roleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/utils/OPFirewallRule;>;"
    :cond_2
    if-eqz v7, :cond_0

    .line 81
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 79
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 80
    :goto_3
    if-eqz v7, :cond_3

    .line 81
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_3
    throw v0

    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "roleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/utils/OPFirewallRule;>;"
    :catchall_1
    move-exception v0

    move-object v12, v13

    .end local v13    # "roleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/utils/OPFirewallRule;>;"
    .local v12, "roleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/utils/OPFirewallRule;>;"
    goto :goto_3

    .line 77
    .end local v7    # "cursor":Landroid/database/Cursor;
    .local v12, "roleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/utils/OPFirewallRule;>;"
    :catch_1
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static selectFirewallRuleByPkg(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/utils/OPFirewallRule;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 94
    const/4 v7, 0x0

    .line 96
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/utils/OPFirewallUtils;->URI_NETWORK_RESTRICT:Landroid/net/Uri;

    const-string/jumbo v3, "pkg = ? "

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 97
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 98
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const-string/jumbo v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 100
    .local v6, "_id":I
    const-string/jumbo v0, "pkg"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, "pkg":Ljava/lang/String;
    const-string/jumbo v0, "wlan"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 102
    .local v12, "wlan":I
    const-string/jumbo v0, "mobile"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 103
    .local v9, "mobile":I
    new-instance v11, Lcom/oneplus/settings/utils/OPFirewallRule;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v11, v0, v10, v1, v2}, Lcom/oneplus/settings/utils/OPFirewallRule;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .local v11, "role":Lcom/oneplus/settings/utils/OPFirewallRule;
    if-eqz v7, :cond_0

    .line 111
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 104
    :cond_0
    return-object v11

    .line 110
    .end local v6    # "_id":I
    .end local v9    # "mobile":I
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "role":Lcom/oneplus/settings/utils/OPFirewallRule;
    .end local v12    # "wlan":I
    :cond_1
    if-eqz v7, :cond_2

    .line 111
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 114
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v13

    .line 107
    :catch_0
    move-exception v8

    .line 108
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "OPFirewallUtils"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    if-eqz v7, :cond_2

    .line 111
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 109
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 110
    if-eqz v7, :cond_3

    .line 111
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_3
    throw v0
.end method
