.class Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedCertificateAdapter"
.end annotation


# instance fields
.field private final mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

.field final synthetic this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)V
    .locals 2
    .param p2, "tab"    # Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 372
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/android/settings_ex/TrustedCredentialsSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    .line 373
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->load()V

    .line 374
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;
    .param p2, "x1"    # Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    .param p3, "x2"    # Lcom/android/settings_ex/TrustedCredentialsSettings$1;

    .prologue
    .line 368
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 388
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 389
    .local v0, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 390
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 392
    :cond_0
    return v1
.end method

.method public getItem(I)Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 398
    int-to-long v0, p1

    return-wide v0
.end method

.method public getListViewId(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p1, "tab"    # Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    .prologue
    .line 381
    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mList:I
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$900(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->access$1400(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v2

    # invokes: Lcom/android/settings_ex/TrustedCredentialsSettings;->getViewForCertificate(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    invoke-static {v0, v1, v2, p2, p3}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$1500(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 385
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 386
    return-void
.end method

.method public remove(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "certHolder"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->remove(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V

    .line 378
    return-void
.end method
