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


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    .line 727
    # getter for: Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->access$000()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    .line 728
    return-void

    .line 727
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
    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 843
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # invokes: Lcom/android/settings_ex/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    invoke-static {p1, v1}, Lcom/android/settings_ex/SecuritySettings;->access$100(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v2

    .line 846
    .local v2, "resId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 847
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-boolean v5, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-nez v5, :cond_1

    .line 848
    :cond_0
    const-string v5, "sim_lock"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    :cond_1
    const-string v5, "user"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 852
    .local v4, "um":Landroid/os/UserManager;
    const-string v5, "no_config_credentials"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 853
    const-string v5, "credentials_management"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    :cond_2
    # getter for: Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->access$000()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 858
    const-string v5, "trust_agent"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    const-string v5, "manage_trust_agents"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    :cond_3
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
    .line 774
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/search/SearchIndexableRaw;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 777
    .local v8, "res":Landroid/content/res/Resources;
    const v14, 0x7f0c03e3

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 779
    .local v11, "screenTitle":Ljava/lang/String;
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 780
    .local v3, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 781
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 782
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v14, :cond_0

    .line 785
    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v14

    if-eqz v14, :cond_3

    const v9, 0x7f0c03df

    .line 788
    .local v9, "resId":I
    :goto_0
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 789
    .restart local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 790
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 791
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    .end local v9    # "resId":I
    :cond_0
    const-string v14, "fingerprint"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    .line 797
    .local v4, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 798
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 799
    .restart local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const v14, 0x7f0c03e7

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 800
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 801
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_1
    const-string v14, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 807
    .local v13, "um":Landroid/os/UserManager;
    const-string v14, "no_config_credentials"

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 808
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    .line 810
    .local v6, "keyStore":Landroid/security/KeyStore;
    invoke-virtual {v6}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v14

    if-eqz v14, :cond_4

    const v12, 0x7f0c09fe

    .line 814
    .local v12, "storageSummaryRes":I
    :goto_1
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 815
    .restart local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 816
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 817
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    .end local v6    # "keyStore":Landroid/security/KeyStore;
    .end local v12    # "storageSummaryRes":I
    :cond_2
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 822
    .local v7, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # getter for: Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->access$000()I

    move-result v14

    invoke-virtual {v7, v14}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 823
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-class v14, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/admin/DevicePolicyManager;

    # invokes: Lcom/android/settings_ex/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    invoke-static {v15, v7, v14}, Lcom/android/settings_ex/SecuritySettings;->access$200(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    .line 826
    .local v2, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_5

    .line 827
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    .line 828
    .local v1, "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v3, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 829
    .restart local v3    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    iget-object v14, v1, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v14, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 830
    iput-object v11, v3, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 831
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 785
    .end local v1    # "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v2    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v4    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v5    # "i":I
    .end local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v13    # "um":Landroid/os/UserManager;
    :cond_3
    const v9, 0x7f0c03dd

    goto/16 :goto_0

    .line 810
    .restart local v4    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .restart local v6    # "keyStore":Landroid/security/KeyStore;
    .restart local v13    # "um":Landroid/os/UserManager;
    :cond_4
    const v12, 0x7f0c09ff

    goto :goto_1

    .line 834
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
    .line 734
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 738
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # invokes: Lcom/android/settings_ex/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    invoke-static {p1, v1}, Lcom/android/settings_ex/SecuritySettings;->access$100(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v2

    .line 740
    .local v2, "resId":I
    new-instance v4, Landroid/provider/SearchIndexableResource;

    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 741
    .local v4, "sir":Landroid/provider/SearchIndexableResource;
    iput v2, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 742
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    iget-boolean v5, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v5, :cond_0

    .line 745
    const-string v5, "device_policy"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 748
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 759
    :goto_0
    :pswitch_0
    new-instance v4, Landroid/provider/SearchIndexableResource;

    .end local v4    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 760
    .restart local v4    # "sir":Landroid/provider/SearchIndexableResource;
    iput v2, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 761
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    new-instance v4, Landroid/provider/SearchIndexableResource;

    .end local v4    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 766
    .restart local v4    # "sir":Landroid/provider/SearchIndexableResource;
    const v5, 0x7f080068

    iput v5, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 767
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    return-object v3

    .line 751
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :pswitch_1
    const v2, 0x7f080065

    .line 752
    goto :goto_0

    .line 755
    :pswitch_2
    const v2, 0x7f08006d

    goto :goto_0

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
