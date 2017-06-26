.class Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedCertificateExpandableAdapter"
.end annotation


# instance fields
.field private mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

.field final synthetic this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)V
    .locals 2
    .param p2, "tab"    # Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 285
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/android/settings_ex/TrustedCredentialsSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->load()V

    .line 287
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;
    .param p2, "x1"    # Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    .param p3, "x2"    # Lcom/android/settings_ex/TrustedCredentialsSettings$1;

    .prologue
    .line 280
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)V

    return-void
.end method


# virtual methods
.method public getChild(II)Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 318
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->access$1400(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v2

    # invokes: Lcom/android/settings_ex/TrustedCredentialsSettings;->getViewForCertificate(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    invoke-static {v0, v1, v2, p4, p5}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$1500(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 299
    .local v0, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 302
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Landroid/os/UserHandle;
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 306
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 327
    if-nez p3, :cond_0

    .line 328
    iget-object v4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 330
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {v0, p4}, Lcom/android/settings_ex/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 333
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x1020016

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 334
    .local v2, "title":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 335
    .local v1, "profile":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$1300(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 336
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 337
    const v4, 0x7f0c05d4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 341
    :goto_0
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 343
    return-object p3

    .line 339
    :cond_1
    const v4, 0x7f0c05d3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getListViewId(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p1, "tab"    # Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    .prologue
    .line 361
    # getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mExpandableList:I
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$600(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 357
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 358
    return-void
.end method

.method public remove(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "certHolder"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$AdapterData;->remove(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V

    .line 291
    return-void
.end method
