.class Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

.field private final mCertHoldersByUserId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

.field final synthetic this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mAdapter:Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;
    .param p2, "tab"    # Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    .param p3, "adapter"    # Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 641
    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    .line 647
    iput-object p3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mAdapter:Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    .line 648
    iput-object p2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    .line 646
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;
    .param p2, "tab"    # Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    .param p3, "adapter"    # Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;)V

    return-void
.end method


# virtual methods
.method public remove(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    .locals 3
    .param p1, "certHolder"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 804
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 805
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 801
    .end local v0    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    :cond_0
    return-void
.end method
