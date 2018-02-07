.class Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuritySearchIndexProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 992
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    return-void
.end method

.method private getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlResId"    # I

    .prologue
    .line 1052
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1053
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    iput p2, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1054
    return-object v0
.end method

.method private isPasswordManaged(ILandroid/content/Context;Landroid/app/admin/DevicePolicyManager;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    const/4 v1, 0x0

    .line 1058
    invoke-static {p2, p1}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 1060
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {p3, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v2

    .line 1061
    const/high16 v3, 0x80000

    .line 1060
    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
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
    .line 1154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1159
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 1160
    .local v3, "um":Landroid/os/UserManager;
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1161
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1164
    :goto_0
    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1165
    const-string/jumbo v4, "oneplus_app_locker"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    const-string/jumbo v4, "oneplus_quick_pay"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    :cond_0
    const-string/jumbo v4, "no_config_credentials"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1169
    const-string/jumbo v4, "credentials_management"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1173
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1174
    const-string/jumbo v4, "trust_agent"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    const-string/jumbo v4, "manage_trust_agents"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    :cond_2
    return-object v0

    .line 1162
    :cond_3
    const-string/jumbo v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 14
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
    .line 1066
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1067
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1069
    .local v7, "res":Landroid/content/res/Resources;
    const v12, 0x7f0e05d5

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1071
    .local v10, "screenTitle":Ljava/lang/String;
    new-instance v2, Lcom/android/settings_ex/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1072
    .local v2, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    iput-object v10, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1073
    iput-object v10, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1074
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1076
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v11

    .line 1077
    .local v11, "um":Landroid/os/UserManager;
    invoke-virtual {v11}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1078
    invoke-virtual {v11}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1079
    const v8, 0x7f0e05d1

    .line 1081
    .local v8, "resId":I
    :goto_0
    new-instance v2, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1082
    .restart local v2    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1083
    iput-object v10, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1084
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    .end local v8    # "resId":I
    :cond_0
    const-string/jumbo v12, "fingerprint"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 1090
    .local v3, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1092
    new-instance v2, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1093
    .restart local v2    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const v12, 0x7f0e05da

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1094
    iput-object v10, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1095
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    new-instance v2, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1098
    .restart local v2    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const v12, 0x7f0e05db

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1099
    iput-object v10, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1100
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1103
    :cond_1
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1104
    .local v5, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/settings_ex/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v6

    .line 1105
    .local v6, "profileUserId":I
    const/16 v12, -0x2710

    if-eq v6, v12, :cond_2

    .line 1106
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v12

    .line 1105
    if-eqz v12, :cond_2

    .line 1107
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v12

    .line 1108
    const/high16 v13, 0x10000

    .line 1107
    if-lt v12, v13, :cond_2

    .line 1109
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result v12

    .line 1107
    if-eqz v12, :cond_2

    .line 1111
    new-instance v2, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1112
    .restart local v2    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const v12, 0x7f0e09b9

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1113
    iput-object v10, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1114
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1137
    :cond_2
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v12

    invoke-virtual {v5, v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1140
    const-class v12, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/DevicePolicyManager;

    .line 1139
    invoke-static {p1, v5, v12}, Lcom/android/settings_ex/SecuritySettings;->-wrap1(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1141
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_4

    .line 1142
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    .line 1143
    .local v0, "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v2, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1144
    .restart local v2    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    iget-object v12, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v12, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1145
    iput-object v10, v2, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1146
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1079
    .end local v0    # "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v1    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v3    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v4    # "i":I
    .end local v5    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v6    # "profileUserId":I
    :cond_3
    const v8, 0x7f0e05cf

    .restart local v8    # "resId":I
    goto/16 :goto_0

    .line 1149
    .end local v8    # "resId":I
    .restart local v3    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .restart local v5    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v6    # "profileUserId":I
    :cond_4
    return-object v9
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 10
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
    const/16 v9, -0x2710

    .line 997
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 999
    .local v1, "index":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1001
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v8

    invoke-static {p1, v8}, Lcom/android/settings_ex/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings_ex/ManagedLockPasswordProvider;

    move-result-object v3

    .line 1003
    .local v3, "managedPasswordProvider":Lcom/android/settings_ex/ManagedLockPasswordProvider;
    const-string/jumbo v8, "device_policy"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1002
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1004
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    .line 1005
    .local v7, "um":Landroid/os/UserManager;
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settings_ex/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v4

    .line 1009
    .local v4, "profileUserId":I
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v8

    invoke-direct {p0, v8, p1, v0}, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->isPasswordManaged(ILandroid/content/Context;Landroid/app/admin/DevicePolicyManager;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1010
    if-eq v4, v9, :cond_3

    .line 1011
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v8

    .line 1010
    if-nez v8, :cond_3

    .line 1012
    invoke-direct {p0, v4, p1, v0}, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->isPasswordManaged(ILandroid/content/Context;Landroid/app/admin/DevicePolicyManager;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1019
    :cond_0
    :goto_0
    if-eq v4, v9, :cond_1

    .line 1020
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v8

    .line 1019
    if-eqz v8, :cond_1

    .line 1021
    invoke-direct {p0, v4, p1, v0}, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->isPasswordManaged(ILandroid/content/Context;Landroid/app/admin/DevicePolicyManager;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1026
    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1027
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1040
    :cond_2
    :goto_2
    :pswitch_0
    invoke-static {p1, v2, v3}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->-wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings_ex/ManagedLockPasswordProvider;)I

    move-result v8

    .line 1039
    invoke-direct {p0, p1, v8}, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v6

    .line 1042
    .local v6, "sir":Landroid/provider/SearchIndexableResource;
    const-class v8, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 1043
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    const v8, 0x7f080076

    invoke-direct {p0, p1, v8}, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    return-object v1

    .line 1015
    .end local v6    # "sir":Landroid/provider/SearchIndexableResource;
    :cond_3
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v8

    .line 1014
    invoke-static {p1, v2, v3, v8}, Lcom/android/settings_ex/SecuritySettings;->-wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings_ex/ManagedLockPasswordProvider;I)I

    move-result v5

    .line 1016
    .local v5, "resId":I
    invoke-direct {p0, p1, v5}, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1022
    .end local v5    # "resId":I
    :cond_4
    invoke-static {p1, v2, v3, v4}, Lcom/android/settings_ex/SecuritySettings;->-wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings_ex/ManagedLockPasswordProvider;I)I

    move-result v8

    invoke-direct {p0, p1, v8}, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1030
    :pswitch_1
    const v8, 0x7f080071

    invoke-direct {p0, p1, v8}, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1034
    :pswitch_2
    const v8, 0x7f080083

    invoke-direct {p0, p1, v8}, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->getSearchResource(Landroid/content/Context;I)Landroid/provider/SearchIndexableResource;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1027
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
