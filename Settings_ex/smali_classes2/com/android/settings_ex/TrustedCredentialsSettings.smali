.class public Lcom/android/settings_ex/TrustedCredentialsSettings;
.super Lcom/android/settings_ex/OptionsMenuFragment;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DelegateInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/TrustedCredentialsSettings$1;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    }
.end annotation


# static fields
.field public static final ARG_SHOW_NEW_FOR_USER:Ljava/lang/String; = "ARG_SHOW_NEW_FOR_USER"

.field private static final REQUEST_CONFIRM_CREDENTIALS:I = 0x1

.field private static final SAVED_CONFIRMED_CREDENTIAL_USERS:Ljava/lang/String; = "ConfirmedCredentialUsers"

.field private static final SAVED_CONFIRMING_CREDENTIAL_USER:Ljava/lang/String; = "ConfirmingCredentialUser"

.field private static final TAG:Ljava/lang/String; = "TrustedCredentialsSettings"

.field private static final USER_ACTION:Ljava/lang/String; = "com.android.settings_ex.TRUSTED_CREDENTIALS_USER"


# instance fields
.field private mAliasLoaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mAliasOperation:Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;

.field private mConfirmedCredentialUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

.field private mConfirmingCredentialUser:I

.field private mGroupAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyChainConnectionByProfileId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/security/KeyChain$KeyChainConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTrustAllCaUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/TrustedCredentialsSettings;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/TrustedCredentialsSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/TrustedCredentialsSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;)Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/TrustedCredentialsSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/TrustedCredentialsSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->isTrustAllCaCertModeInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/TrustedCredentialsSettings;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->startConfirmCredential(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p1, "certHolder"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/TrustedCredentialsSettings;Ljava/util/List;)V
    .locals 0
    .param p1, "unapprovedCertHolders"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->showTrustAllCaDialog(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/OptionsMenuFragment;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    .line 166
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    .line 168
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$1;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    return-void
.end method

.method private addTab(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)V
    .locals 12
    .param p1, "tab"    # Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 277
    iget-object v9, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->-get6(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    .line 278
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->-get2(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 277
    invoke-virtual {v9, v10}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    .line 279
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->-get7(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v10

    .line 277
    invoke-virtual {v9, v10}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 280
    .local v5, "systemSpec":Landroid/widget/TabHost$TabSpec;
    iget-object v9, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v9, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 282
    iget-object v9, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    .line 283
    .local v4, "profilesSize":I
    new-instance v1, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    const/4 v9, 0x0

    invoke-direct {v1, p0, p1, v9}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;)V

    .line 284
    .local v1, "groupAdapter":Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;
    iget-object v9, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    if-ne v4, v8, :cond_1

    .line 287
    invoke-virtual {v1, v3}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->getChildAdapter(I)Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;

    move-result-object v0

    .line 288
    .local v0, "adapter":Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->-get3(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->setContainerViewId(I)V

    .line 289
    invoke-virtual {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->prepare()V

    .line 276
    .end local v0    # "adapter":Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    const/4 v9, 0x2

    if-ne v4, v9, :cond_4

    .line 291
    invoke-virtual {v1, v8}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->getUserInfoByGroup(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_2

    move v7, v8

    .line 292
    .local v7, "workIndex":I
    :goto_1
    if-ne v7, v8, :cond_3

    .line 294
    .local v3, "personalIndex":I
    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->getChildAdapter(I)Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;

    move-result-object v2

    .line 295
    .local v2, "personalAdapter":Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->-get3(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->setContainerViewId(I)V

    .line 296
    invoke-virtual {v2, v8}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->showHeader(Z)V

    .line 297
    invoke-virtual {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->prepare()V

    .line 299
    invoke-virtual {v1, v7}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->getChildAdapter(I)Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;

    move-result-object v6

    .line 300
    .local v6, "workAdapter":Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->-get8(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->setContainerViewId(I)V

    .line 301
    invoke-virtual {v6, v8}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->showHeader(Z)V

    .line 302
    invoke-virtual {v6, v8}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->showDivider(Z)V

    .line 303
    invoke-virtual {v6}, Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;->prepare()V

    goto :goto_0

    .end local v2    # "personalAdapter":Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;
    .end local v3    # "personalIndex":I
    .end local v6    # "workAdapter":Lcom/android/settings_ex/TrustedCredentialsSettings$ChildAdapter;
    .end local v7    # "workIndex":I
    :cond_2
    move v7, v3

    .line 291
    goto :goto_1

    .restart local v7    # "workIndex":I
    :cond_3
    move v3, v8

    .line 292
    goto :goto_2

    .line 304
    .end local v7    # "workIndex":I
    :cond_4
    const/4 v8, 0x3

    if-lt v4, v8, :cond_0

    .line 306
    iget-object v8, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->-get1(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ExpandableListView;

    .line 305
    invoke-virtual {v1, v8}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->setExpandableListView(Landroid/widget/ExpandableListView;)V

    goto :goto_0
.end method

.method private closeKeyChainConnections()V
    .locals 3

    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 270
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 271
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 268
    return-void
.end method

.method private isTrustAllCaCertModeInProgress()Z
    .locals 2

    .prologue
    .line 907
    iget v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showCertDialog(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    .locals 2
    .param p1, "certHolder"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 927
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder;

    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder;-><init>(Landroid/app/Activity;Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder;->setCertHolder(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings_ex/TrustedCredentialsDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder;->show()Landroid/app/AlertDialog;

    .line 926
    return-void
.end method

.method private showTrustAllCaDialog(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 912
    .local p1, "unapprovedCertHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .line 911
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .line 913
    .local v0, "arr":[Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    new-instance v1, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder;

    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder;-><init>(Landroid/app/Activity;Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder;->setCertHolders([Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings_ex/TrustedCredentialsDialogBuilder;

    move-result-object v1

    .line 915
    new-instance v2, Lcom/android/settings_ex/TrustedCredentialsSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$2;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;)V

    .line 913
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 910
    return-void
.end method

.method private startConfirmCredential(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 315
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1, v2, v2, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    .line 317
    .local v0, "newIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 318
    const/4 v1, 0x0

    return v1

    .line 320
    :cond_0
    iput p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 321
    invoke-virtual {p0, v0, v3}, Lcom/android/settings_ex/TrustedCredentialsSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 322
    return v3
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x5c

    return v0
.end method

.method public getX509CertsFromCertHolder(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/util/List;
    .locals 13
    .param p1, "certHolder"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 934
    const/4 v1, 0x0

    .line 936
    .local v1, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    iget-object v10, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    .line 937
    iget v11, p1, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    .line 936
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/security/KeyChain$KeyChainConnection;

    .line 938
    .local v7, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v9

    .line 939
    .local v9, "service":Landroid/security/IKeyChainService;
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->-get1(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/security/IKeyChainService;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 940
    .local v3, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    .line 941
    .local v8, "n":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    .local v2, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v6, 0x0

    .end local v1    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 943
    :try_start_1
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v4

    .line 944
    .local v4, "encodedCertificate":[B
    invoke-static {v4}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 945
    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 942
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v0    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v4    # "encodedCertificate":[B
    :cond_0
    move-object v1, v2

    .line 951
    .end local v2    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "i":I
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v8    # "n":I
    .end local v9    # "service":Landroid/security/IKeyChainService;
    :goto_1
    return-object v1

    .line 947
    .restart local v1    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v5

    .line 948
    .end local v1    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v5, "ex":Landroid/os/RemoteException;
    :goto_2
    const-string/jumbo v10, "TrustedCredentialsSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "RemoteException while retrieving certificate chain for root "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 949
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->-get1(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v12

    .line 948
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 947
    .end local v5    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v3    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "i":I
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v8    # "n":I
    .restart local v9    # "service":Landroid/security/IKeyChainService;
    :catch_1
    move-exception v5

    .restart local v5    # "ex":Landroid/os/RemoteException;
    move-object v1, v2

    .end local v2    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v1, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 252
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 253
    iget v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 254
    .local v1, "userId":I
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    .line 257
    .local v0, "listener":Ljava/util/function/IntConsumer;
    const/16 v2, -0x2710

    iput v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 258
    iput-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    .line 259
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 261
    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 251
    .end local v0    # "listener":Ljava/util/function/IntConsumer;
    .end local v1    # "userId":I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/16 v4, -0x2710

    .line 186
    invoke-super {p0, p1}, Lcom/android/settings_ex/OptionsMenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 189
    const-string/jumbo v3, "keyguard"

    .line 188
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "ARG_SHOW_NEW_FOR_USER"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    .line 192
    new-instance v2, Landroid/util/ArraySet;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    .line 193
    iput v4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 194
    if-eqz p1, :cond_0

    .line 195
    const-string/jumbo v2, "ConfirmingCredentialUser"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 198
    const-string/jumbo v2, "ConfirmedCredentialUsers"

    .line 197
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 199
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 200
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 204
    .end local v1    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    iput-object v5, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    const v0, 0x7f0401ee

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 225
    sget-object v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->addTab(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)V

    .line 227
    sget-object v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->addTab(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    const-string/jumbo v0, "com.android.settings_ex.TRUSTED_CREDENTIALS_USER"

    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 228
    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->-get6(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 236
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aliasLoader$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;

    .line 238
    .local v0, "aliasLoader":Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;
    invoke-virtual {v0, v4}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->cancel(Z)Z

    goto :goto_0

    .line 240
    .end local v0    # "aliasLoader":Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 241
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 242
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;

    if-eqz v2, :cond_1

    .line 243
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;->cancel(Z)Z

    .line 244
    iput-object v5, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;

    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->closeKeyChainConnections()V

    .line 247
    invoke-super {p0}, Lcom/android/settings_ex/OptionsMenuFragment;->onDestroy()V

    .line 235
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/android/settings_ex/OptionsMenuFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 216
    const-string/jumbo v0, "ConfirmedCredentialUsers"

    new-instance v1, Ljava/util/ArrayList;

    .line 217
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    .line 216
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 218
    const-string/jumbo v0, "ConfirmingCredentialUser"

    iget v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    return-void
.end method

.method public removeOrInstallCert(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    .locals 2
    .param p1, "certHolder"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 956
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 955
    return-void
.end method

.method public startConfirmCredentialIfNotConfirmed(ILjava/util/function/IntConsumer;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "onCredentialConfirmedListener"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 962
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    const/4 v1, 0x0

    return v1

    .line 967
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->startConfirmCredential(I)Z

    move-result v0

    .line 968
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 969
    iput-object p2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    .line 971
    :cond_1
    return v0
.end method
