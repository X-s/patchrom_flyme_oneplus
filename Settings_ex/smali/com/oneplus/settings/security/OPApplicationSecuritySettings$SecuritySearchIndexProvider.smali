.class Lcom/oneplus/settings/security/OPApplicationSecuritySettings$SecuritySearchIndexProvider;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "OPApplicationSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/security/OPApplicationSecuritySettings;
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
    .line 784
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    .line 786
    # getter for: Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->access$000()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    .line 787
    return-void

    .line 786
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 6
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
    .line 898
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 900
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 902
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # invokes: Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    invoke-static {p1, v1}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->access$100(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v2

    .line 905
    .local v2, "resId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 906
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-boolean v5, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-nez v5, :cond_1

    .line 907
    :cond_0
    const-string v5, "sim_lock"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    :cond_1
    const-string v5, "user"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 911
    .local v4, "um":Landroid/os/UserManager;
    const-string v5, "no_config_credentials"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 912
    const-string v5, "credentials_management"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    :cond_2
    # getter for: Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->access$000()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 917
    const-string v5, "trust_agent"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    const-string v5, "manage_trust_agents"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    :cond_3
    const-string v5, "show_password_category"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
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
    .line 833
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/search/SearchIndexableRaw;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 836
    .local v8, "res":Landroid/content/res/Resources;
    const v14, 0x7f0c03e3

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 838
    .local v11, "screenTitle":Ljava/lang/String;
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 839
    .local v3, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 840
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 841
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v14, :cond_0

    .line 844
    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v14

    if-eqz v14, :cond_3

    const v9, 0x7f0c03df

    .line 847
    .local v9, "resId":I
    :goto_0
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 848
    .restart local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 849
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 850
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    .end local v9    # "resId":I
    :cond_0
    const-string v14, "fingerprint"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    .line 856
    .local v4, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 857
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 858
    .restart local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const v14, 0x7f0c03e7

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 859
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 860
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    :cond_1
    const-string v14, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 866
    .local v13, "um":Landroid/os/UserManager;
    const-string v14, "no_config_credentials"

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 867
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    .line 869
    .local v6, "keyStore":Landroid/security/KeyStore;
    invoke-virtual {v6}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v14

    if-eqz v14, :cond_4

    const v12, 0x7f0c09fe

    .line 873
    .local v12, "storageSummaryRes":I
    :goto_1
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 874
    .restart local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 875
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 876
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    .end local v6    # "keyStore":Landroid/security/KeyStore;
    .end local v12    # "storageSummaryRes":I
    :cond_2
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 881
    .local v7, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # getter for: Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->access$000()I

    move-result v14

    invoke-virtual {v7, v14}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 882
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-class v14, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/admin/DevicePolicyManager;

    # invokes: Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    invoke-static {v15, v7, v14}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->access$200(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    .line 885
    .local v2, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_5

    .line 886
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    .line 887
    .local v1, "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 888
    .restart local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    iget-object v14, v1, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v14, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 889
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 890
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 844
    .end local v1    # "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v2    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v4    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v5    # "i":I
    .end local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v13    # "um":Landroid/os/UserManager;
    :cond_3
    const v9, 0x7f0c03dd

    goto/16 :goto_0

    .line 869
    .restart local v4    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .restart local v6    # "keyStore":Landroid/security/KeyStore;
    .restart local v13    # "um":Landroid/os/UserManager;
    :cond_4
    const v12, 0x7f0c09ff

    goto :goto_1

    .line 893
    .end local v6    # "keyStore":Landroid/security/KeyStore;
    .restart local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_5
    return-object v10
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
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
    .line 793
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 795
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 797
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # invokes: Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    invoke-static {p1, v1}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->access$100(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v2

    .line 799
    .local v2, "resId":I
    new-instance v4, Landroid/provider/SearchIndexableResource;

    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 800
    .local v4, "sir":Landroid/provider/SearchIndexableResource;
    iput v2, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 801
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    iget-boolean v5, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v5, :cond_0

    .line 804
    const-string v5, "device_policy"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 807
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 818
    :goto_0
    :pswitch_0
    new-instance v4, Landroid/provider/SearchIndexableResource;

    .end local v4    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 819
    .restart local v4    # "sir":Landroid/provider/SearchIndexableResource;
    iput v2, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 820
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    new-instance v4, Landroid/provider/SearchIndexableResource;

    .end local v4    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 825
    .restart local v4    # "sir":Landroid/provider/SearchIndexableResource;
    const v5, 0x7f080068

    iput v5, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 826
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    return-object v3

    .line 810
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :pswitch_1
    const v2, 0x7f080065

    .line 811
    goto :goto_0

    .line 814
    :pswitch_2
    const v2, 0x7f08006d

    goto :goto_0

    .line 807
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
