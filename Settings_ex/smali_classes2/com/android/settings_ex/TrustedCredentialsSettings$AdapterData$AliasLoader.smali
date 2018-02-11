.class Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/util/SparseArray",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)V
    .locals 6
    .param p1, "this$1"    # Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 657
    iget-object v3, p1, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    .line 658
    iget-object v3, p1, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v3}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-get0(Lcom/android/settings_ex/TrustedCredentialsSettings;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 659
    iget-object v3, p1, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v3}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-get5(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 660
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 661
    .local v0, "profile":Landroid/os/UserHandle;
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 656
    .end local v0    # "profile":Landroid/os/UserHandle;
    :cond_0
    return-void
.end method

.method private isUserTabAndTrustAllCertMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 771
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    iget-object v1, v1, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-wrap0(Lcom/android/settings_ex/TrustedCredentialsSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->-get2(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private shouldSkipProfile(Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v0, 0x1

    .line 666
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    iget-object v1, v1, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-get5(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    iget-object v1, v1, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-get5(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 666
    :cond_0
    return v0
.end method

.method private showTrustAllCaDialogIfNeeded()V
    .locals 8

    .prologue
    .line 776
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->isUserTabAndTrustAllCertMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 777
    return-void

    .line 779
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    invoke-static {v5}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    iget-object v6, v6, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v6}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-get4(Lcom/android/settings_ex/TrustedCredentialsSettings;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 780
    .local v2, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    if-nez v2, :cond_1

    .line 781
    return-void

    .line 784
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v4, "unapprovedUserCertHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    iget-object v5, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    .line 786
    const-class v6, Landroid/app/admin/DevicePolicyManager;

    .line 785
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 787
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cert$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .line 788
    .local v0, "cert":Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->-get1(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    iget-object v6, v6, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v6}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-get4(Lcom/android/settings_ex/TrustedCredentialsSettings;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/app/admin/DevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 789
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 793
    .end local v0    # "cert":Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 794
    const-string/jumbo v5, "TrustedCredentialsSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no cert is pending approval for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    iget-object v7, v7, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v7}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-get4(Lcom/android/settings_ex/TrustedCredentialsSettings;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return-void

    .line 797
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    iget-object v5, v5, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v5, v4}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-wrap3(Lcom/android/settings_ex/TrustedCredentialsSettings;Ljava/util/List;)V

    .line 775
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;
    .locals 27
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 679
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 681
    .local v14, "certHoldersByProfile":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    iget-object v2, v2, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-get5(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v25

    .line 682
    .local v25, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v23

    .line 685
    .local v23, "n":I
    new-instance v12, Landroid/util/SparseArray;

    move/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 687
    .local v12, "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;>;"
    const/16 v22, 0x0

    .line 688
    .local v22, "max":I
    const/16 v26, 0x0

    .line 689
    .local v26, "progress":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 690
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserHandle;

    .line 691
    .local v24, "profile":Landroid/os/UserHandle;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 692
    .local v8, "profileId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->shouldSkipProfile(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 689
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 695
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v21

    .line 698
    .local v21, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    iget-object v2, v2, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-get2(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 699
    invoke-virtual/range {v21 .. v21}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    .line 700
    .local v3, "service":Landroid/security/IKeyChainService;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    invoke-static {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->-get2(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->-wrap1(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v11

    .line 701
    .local v11, "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 702
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    return-object v2

    .line 704
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    add-int v22, v22, v2

    .line 705
    invoke-virtual {v12, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 737
    .end local v3    # "service":Landroid/security/IKeyChainService;
    .end local v8    # "profileId":I
    .end local v11    # "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    .end local v12    # "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;>;"
    .end local v19    # "i":I
    .end local v21    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v22    # "max":I
    .end local v23    # "n":I
    .end local v24    # "profile":Landroid/os/UserHandle;
    .end local v25    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v26    # "progress":I
    :catch_0
    move-exception v15

    .line 738
    .local v15, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TrustedCredentialsSettings"

    const-string/jumbo v4, "Remote exception while loading aliases."

    invoke-static {v2, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 739
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    return-object v2

    .line 707
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v12    # "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;>;"
    .restart local v19    # "i":I
    .restart local v22    # "max":I
    .restart local v23    # "n":I
    .restart local v25    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local v26    # "progress":I
    :cond_2
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 708
    :try_start_1
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserHandle;

    .line 709
    .restart local v24    # "profile":Landroid/os/UserHandle;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 710
    .restart local v8    # "profileId":I
    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 711
    .restart local v11    # "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 712
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    return-object v2

    .line 714
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    iget-object v2, v2, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-get2(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/security/KeyChain$KeyChainConnection;

    .line 716
    .restart local v21    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->shouldSkipProfile(Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v11, :cond_5

    .line 718
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v14, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 707
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 717
    :cond_5
    if-eqz v21, :cond_4

    .line 721
    invoke-virtual/range {v21 .. v21}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    .line 722
    .restart local v3    # "service":Landroid/security/IKeyChainService;
    new-instance v13, Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 723
    .local v13, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 724
    .local v10, "aliasMax":I
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_4
    move/from16 v0, v20

    if-ge v0, v10, :cond_6

    .line 725
    move/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/ParcelableString;

    iget-object v6, v2, Lcom/android/internal/util/ParcelableString;->string:Ljava/lang/String;

    .line 727
    .local v6, "alias":Ljava/lang/String;
    const/4 v2, 0x1

    .line 726
    invoke-interface {v3, v6, v2}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v18

    .line 728
    .local v18, "encodedCertificate":[B
    invoke-static/range {v18 .. v18}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 729
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    new-instance v2, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    invoke-static {v4}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->-get0(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    move-result-object v4

    .line 730
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    invoke-static {v5}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->-get2(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v5

    .line 729
    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;-><init>(Landroid/security/IKeyChainService;Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;ILcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    add-int/lit8 v26, v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->publishProgress([Ljava/lang/Object;)V

    .line 724
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 733
    .end local v6    # "alias":Ljava/lang/String;
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    .end local v18    # "encodedCertificate":[B
    :cond_6
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 734
    invoke-virtual {v14, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 740
    .end local v3    # "service":Landroid/security/IKeyChainService;
    .end local v8    # "profileId":I
    .end local v10    # "aliasMax":I
    .end local v11    # "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;"
    .end local v12    # "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;>;"
    .end local v13    # "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    .end local v19    # "i":I
    .end local v20    # "j":I
    .end local v21    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v22    # "max":I
    .end local v23    # "n":I
    .end local v24    # "profile":Landroid/os/UserHandle;
    .end local v25    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v26    # "progress":I
    :catch_1
    move-exception v17

    .line 741
    .local v17, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "TrustedCredentialsSettings"

    const-string/jumbo v4, "InterruptedException while loading aliases."

    move-object/from16 v0, v17

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    return-object v2

    .line 736
    .end local v17    # "e":Ljava/lang/InterruptedException;
    .restart local v12    # "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;>;"
    .restart local v19    # "i":I
    .restart local v22    # "max":I
    .restart local v23    # "n":I
    .restart local v25    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local v26    # "progress":I
    :cond_7
    return-object v14

    .line 743
    .end local v12    # "aliasesByProfileId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/internal/util/ParcelableString;>;>;"
    .end local v19    # "i":I
    .end local v22    # "max":I
    .end local v23    # "n":I
    .end local v25    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v26    # "progress":I
    :catch_2
    move-exception v16

    .line 744
    .local v16, "e":Ljava/lang/AssertionError;
    const-string/jumbo v2, "TrustedCredentialsSettings"

    const-string/jumbo v4, "AssertionError while loading aliases."

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 677
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "certHolders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;>;"
    const/4 v5, 0x0

    .line 757
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    invoke-static {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 758
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 759
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 760
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    invoke-static {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 759
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 762
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    invoke-static {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->-get0(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->notifyDataSetChanged()V

    .line 763
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 764
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 765
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 766
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    iget-object v2, v2, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-get0(Lcom/android/settings_ex/TrustedCredentialsSettings;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 767
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->showTrustAllCaDialogIfNeeded()V

    .line 756
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "certHolders"    # Ljava/lang/Object;

    .prologue
    .line 756
    check-cast p1, Landroid/util/SparseArray;

    .end local p1    # "certHolders":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->onPostExecute(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 671
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    iget-object v1, v1, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-get3(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 672
    .local v0, "content":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->-get2(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->-get4(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 673
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->-get2(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->-get0(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContentView:Landroid/view/View;

    .line 674
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 675
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContentView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 670
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progressAndMax"    # [Ljava/lang/Integer;

    .prologue
    .line 749
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 750
    .local v1, "progress":I
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 751
    .local v0, "max":I
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 752
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 754
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 748
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "progressAndMax"    # [Ljava/lang/Object;

    .prologue
    .line 748
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "progressAndMax":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
