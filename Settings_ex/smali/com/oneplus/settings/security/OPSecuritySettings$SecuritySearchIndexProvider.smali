.class Lcom/oneplus/settings/security/OPSecuritySettings$SecuritySearchIndexProvider;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "OPSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/security/OPSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuritySearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1139
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    .line 1141
    # getter for: Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/oneplus/settings/security/OPSecuritySettings;->access$300()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    .line 1142
    return-void

    .line 1141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1259
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1264
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1265
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-boolean v4, p0, Lcom/oneplus/settings/security/OPSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1266
    :cond_0
    const-string v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
    :cond_1
    const-string v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1271
    .local v3, "um":Landroid/os/UserManager;
    const-string v4, "no_config_credentials"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1272
    const-string v4, "credentials_management"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    :cond_2
    # getter for: Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/oneplus/settings/security/OPSecuritySettings;->access$300()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1278
    const-string v4, "trust_agent"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1279
    const-string v4, "manage_trust_agents"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1281
    :cond_3
    const-string v4, "fingerprint_settings"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1282
    const-string v4, "fingerprint_unlock_mobile"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1283
    const-string v4, "fingerprint_check_oneplus_account"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    const-string v4, "fingerprint_show_list"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    const-string v4, "add_fingerprint_list"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1286
    const-string v4, "fingerprint_bind_save_list"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1287
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1189
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1190
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/search/SearchIndexableRaw;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1192
    .local v8, "res":Landroid/content/res/Resources;
    const v14, 0x7f0c03e3

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1195
    .local v11, "screenTitle":Ljava/lang/String;
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1196
    .local v3, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1197
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1198
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/settings/security/OPSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v14, :cond_0

    .line 1201
    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v14

    if-eqz v14, :cond_3

    const v9, 0x7f0c03df

    .line 1204
    .local v9, "resId":I
    :goto_0
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1205
    .restart local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1206
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1207
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1211
    .end local v9    # "resId":I
    :cond_0
    const-string v14, "fingerprint"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    .line 1213
    .local v4, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1214
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1215
    .restart local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const v14, 0x7f0c03e7

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1217
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1218
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    :cond_1
    const-string v14, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 1225
    .local v13, "um":Landroid/os/UserManager;
    const-string v14, "no_config_credentials"

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1226
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    .line 1228
    .local v6, "keyStore":Landroid/security/KeyStore;
    invoke-virtual {v6}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v14

    if-eqz v14, :cond_4

    const v12, 0x7f0c09fe

    .line 1231
    .local v12, "storageSummaryRes":I
    :goto_1
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1232
    .restart local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1233
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1234
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    .end local v6    # "keyStore":Landroid/security/KeyStore;
    .end local v12    # "storageSummaryRes":I
    :cond_2
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1240
    .local v7, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # getter for: Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/oneplus/settings/security/OPSecuritySettings;->access$300()I

    move-result v14

    invoke-virtual {v7, v14}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1241
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-class v14, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/admin/DevicePolicyManager;

    # invokes: Lcom/oneplus/settings/security/OPSecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    invoke-static {v15, v7, v14}, Lcom/oneplus/settings/security/OPSecuritySettings;->access$400(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1244
    .local v2, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_5

    .line 1245
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    .line 1246
    .local v1, "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1247
    .restart local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    iget-object v14, v1, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v14, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1248
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1249
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1201
    .end local v1    # "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v2    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v4    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v5    # "i":I
    .end local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v13    # "um":Landroid/os/UserManager;
    :cond_3
    const v9, 0x7f0c03dd

    goto/16 :goto_0

    .line 1228
    .restart local v4    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .restart local v6    # "keyStore":Landroid/security/KeyStore;
    .restart local v13    # "um":Landroid/os/UserManager;
    :cond_4
    const v12, 0x7f0c09ff

    goto :goto_1

    .line 1252
    .end local v6    # "keyStore":Landroid/security/KeyStore;
    .restart local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_5
    return-object v10
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1154
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    new-instance v2, Landroid/provider/SearchIndexableResource;

    invoke-direct {v2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1155
    .local v2, "sir":Landroid/provider/SearchIndexableResource;
    const v3, 0x7f08004f

    iput v3, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1156
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    return-object v1
.end method
